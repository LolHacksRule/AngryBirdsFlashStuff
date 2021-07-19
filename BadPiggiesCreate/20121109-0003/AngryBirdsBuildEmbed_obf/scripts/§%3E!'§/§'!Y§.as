package §>!'§
{
   import § !r§.§`![§;
   import §#N§.§!r§;
   import §#N§.§<!r§;
   import §-!0§.§2! §;
   import §-!`§.§7!J§;
   import §-!`§.Sprite;
   import §0!-§.Texture;
   import §1?§.§+!§;
   import §<!<§.§ !p§;
   import §<!<§.§7E§;
   import §<!<§.§8!t§;
   import §<!<§.§;J§;
   import §<!B§.b2Vec2;
   import §=U§.§>?§;
   import §?!6§.§"!0§;
   import §?!6§.§1!!§;
   import §?!6§.§@T§;
   import §?!6§.§]!@§;
   import §?!6§.§`4§;
   import §@_§.§1M§;
   import §@_§.§@!%§;
   import §@_§.§[!k§;
   import §@_§.§[F§;
   import §[h§.b2WeldJoint;
   import §]Z§.§7!n§;
   import flash.display.BitmapData;
   import flash.display.BitmapDataChannel;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §'!Y§
   {
       
      
      protected var §do §:Vector.<§<!3§>;
      
      protected var §]!r§:int;
      
      public var §-n§:§7E§;
      
      public var §5O§:Vector.<§'T§>;
      
      protected var §6!e§:Sprite;
      
      protected var §]!,§:Sprite;
      
      private var §0G§:Sprite;
      
      private var §`H§:Sprite;
      
      private var §?g§:Sprite;
      
      protected var §'O§:Vector.<Texture>;
      
      protected var §2^§:Vector.<§1M§>;
      
      protected var §2-§:int = 1;
      
      public var mMightyEagleAdded:Boolean = false;
      
      public var mMightyEagleHasTouchedGround:Boolean = false;
      
      public var §-P§:Boolean = false;
      
      public var mSardineCanAdded:Boolean = false;
      
      public var mMightyEagleTimer:Number = 0;
      
      protected var §,!T§:Boolean = false;
      
      protected var §"2§:Number = 0.07;
      
      protected var §4!]§:int;
      
      protected var §;!7§:Vector.<§@!%§>;
      
      protected var §>L§:int = 0;
      
      private var §99§:int = 0;
      
      private var §@Q§:int = 0;
      
      private var §"@§:int;
      
      private var §?!t§:Boolean = true;
      
      private var §'0§:Boolean = true;
      
      public function §'!Y§(param1:§7E§, param2:§2! §, param3:Sprite)
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         var _loc5_:§1M§ = null;
         var _loc6_:§[!k§ = null;
         var _loc7_:* = 0;
         var _loc8_:* = 0;
         var _loc9_:§<!3§ = null;
         var _loc10_:§<!3§ = null;
         if(!(_loc13_ && this))
         {
            this.§do § = new Vector.<§<!3§>();
            if(!_loc13_)
            {
               this.§5O§ = new Vector.<§'T§>();
               this.§'O§ = new Vector.<Texture>();
               if(!(_loc13_ && param1))
               {
                  this.§;!7§ = new Vector.<§@!%§>();
                  super();
                  addr75:
                  this.§-n§ = param1;
                  this.§]!r§ = 0;
                  this.§]!,§ = param3;
                  §§push(this.§]!,§);
                  if(!_loc13_)
                  {
                     §§pop().§[,§ = false;
                     this.§'0§ = true;
                     this.§?!t§ = true;
                     addr96:
                     this.§6!e§ = new Sprite();
                     this.§0G§ = new Sprite();
                     this.§`H§ = new Sprite();
                     addr108:
                     this.§?g§ = new Sprite();
                     if(!_loc13_)
                     {
                        §§push(this.§]!,§);
                        if(_loc14_ || this)
                        {
                           addr123:
                           §§pop().addChild(this.§6!e§);
                           §§push(this.§]!,§);
                           if(_loc14_ || param1)
                           {
                              §§pop().addChild(this.§0G§);
                              §§push(this.§]!,§);
                              if(_loc13_ && param1)
                              {
                              }
                              addr159:
                              §§pop().addChild(this.§?g§);
                              if(_loc14_ || param1)
                              {
                                 §§push(this);
                                 §§push(§7!n§.§&!c§(param2.theme).§-§);
                                 §§push(this.§-n§.borders.§'U§);
                                 if(_loc14_ || this)
                                 {
                                    §§push(this.§-n§);
                                    if(!_loc13_)
                                    {
                                       §§push(§§pop().borders);
                                       if(_loc14_)
                                       {
                                          §§push(§§pop().§<`§);
                                          if(!(_loc13_ && this))
                                          {
                                             addr209:
                                             §§push(§§pop() + §§pop());
                                             if(_loc14_)
                                             {
                                                addr204:
                                                §§push(§§pop() / 2);
                                             }
                                             §§push(this.§-n§.borders.mBorderGround_B2);
                                             if(!_loc13_)
                                             {
                                                addr212:
                                                §§push(§§pop() + §8!t§.§-!-§);
                                             }
                                             §§pop().addObject(§§pop(),§§pop(),§§pop());
                                             if(!(_loc13_ && param3))
                                             {
                                                addr223:
                                                this.§"@§ = this.§do §.length;
                                                addr228:
                                                var _loc4_:* = 0;
                                                if(_loc14_ || this)
                                                {
                                                   _loc4_ = 0;
                                                }
                                                loop0:
                                                while(true)
                                                {
                                                   §§push(_loc4_);
                                                   if(_loc14_ || param1)
                                                   {
                                                      §§push(param2.§0'§);
                                                      if(!_loc13_)
                                                      {
                                                         if(§§pop() >= §§pop())
                                                         {
                                                            this.§`!@§();
                                                            if(!_loc13_)
                                                            {
                                                               this.§?O§(true);
                                                               this.§2^§ = new Vector.<§1M§>();
                                                            }
                                                            §§push(0);
                                                            if(!_loc13_)
                                                            {
                                                               _loc4_ = §§pop();
                                                               if(!_loc13_)
                                                               {
                                                                  loop1:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc4_);
                                                                     if(_loc14_ || param3)
                                                                     {
                                                                        §§push(param2.§^!L§);
                                                                        while(true)
                                                                        {
                                                                           if(§§pop() < §§pop())
                                                                           {
                                                                              this.§2^§.push(§1M§.§3H§(param2.§'N§(_loc4_)));
                                                                              if(_loc13_ && param2)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              continue loop1;
                                                                           }
                                                                        }
                                                                        addr517:
                                                                        return;
                                                                        addr342:
                                                                     }
                                                                     break loop0;
                                                                  }
                                                               }
                                                               break;
                                                            }
                                                            break;
                                                         }
                                                         _loc6_ = param2.getObject(_loc4_);
                                                         if(!(_loc13_ && param2))
                                                         {
                                                            this.addObject(_loc6_.id,_loc6_.x,_loc6_.y,_loc6_.angle,false,false,false,1,_loc6_.front);
                                                            if(_loc14_)
                                                            {
                                                               _loc4_++;
                                                            }
                                                         }
                                                         continue;
                                                      }
                                                      §§goto(addr342);
                                                   }
                                                   break;
                                                }
                                                var _loc11_:* = §§pop();
                                                if(!(_loc13_ && this))
                                                {
                                                   var _loc12_:* = this.§2^§;
                                                   loop2:
                                                   while(true)
                                                   {
                                                      for each(_loc5_ in _loc12_)
                                                      {
                                                         §§push(int(_loc5_.index1 + this.§"@§));
                                                         if(_loc14_ || param1)
                                                         {
                                                            _loc7_ = §§pop();
                                                            if(_loc14_)
                                                            {
                                                               §§push(int(_loc5_.index2 + this.§"@§));
                                                               if(_loc14_)
                                                               {
                                                                  addr387:
                                                                  _loc8_ = §§pop();
                                                                  if(_loc14_)
                                                                  {
                                                                     §§push(_loc7_);
                                                                     if(_loc14_)
                                                                     {
                                                                        addr393:
                                                                        §§push(§§pop() < this.§do §.length);
                                                                        if(_loc14_)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              if(_loc14_)
                                                                              {
                                                                                 §§pop();
                                                                                 addr412:
                                                                                 if(!_loc13_)
                                                                                 {
                                                                                    addr407:
                                                                                    §§push(_loc8_ < this.§do §.length);
                                                                                 }
                                                                                 _loc9_ = this.§do §[_loc7_];
                                                                                 _loc10_ = this.§do §[_loc8_];
                                                                                 if(!(_loc14_ || this))
                                                                                 {
                                                                                    continue loop2;
                                                                                 }
                                                                                 §§push(Boolean(_loc9_));
                                                                                 if(!_loc13_)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       if(!(_loc13_ && param3))
                                                                                       {
                                                                                          addr444:
                                                                                          §§pop();
                                                                                          §§push(Boolean(_loc10_));
                                                                                       }
                                                                                    }
                                                                                    if(!§§pop())
                                                                                    {
                                                                                       break loop2;
                                                                                    }
                                                                                    if(_loc14_)
                                                                                    {
                                                                                       if(_loc5_.type != §[F§.§7m§)
                                                                                       {
                                                                                          if(!(_loc14_ || this))
                                                                                          {
                                                                                             continue loop2;
                                                                                          }
                                                                                          _loc5_.§0i§ = this.§-n§.§[!U§.§&4§.§`v§(_loc5_.§?!V§(_loc9_,_loc10_));
                                                                                          addr473:
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          this.§;!7§.push(new §@!%§(_loc7_,_loc8_,_loc5_.§2!l§));
                                                                                          if(_loc13_ && param3)
                                                                                          {
                                                                                             continue loop2;
                                                                                          }
                                                                                       }
                                                                                       continue loop2;
                                                                                    }
                                                                                    §§goto(addr473);
                                                                                 }
                                                                                 §§goto(addr444);
                                                                              }
                                                                           }
                                                                        }
                                                                        if(!§§pop())
                                                                        {
                                                                           continue loop2;
                                                                        }
                                                                        §§goto(addr412);
                                                                     }
                                                                  }
                                                                  §§goto(addr407);
                                                               }
                                                               §§goto(addr393);
                                                            }
                                                            §§goto(addr412);
                                                         }
                                                         §§goto(addr387);
                                                      }
                                                   }
                                                   throw new Error("Joint index out of bounds [" + _loc7_ + ", " + _loc8_ + "]");
                                                }
                                                §§goto(addr517);
                                             }
                                             §§goto(addr228);
                                          }
                                          §§goto(addr212);
                                       }
                                    }
                                    §§goto(addr209);
                                 }
                                 §§goto(addr204);
                              }
                              §§goto(addr228);
                           }
                           §§pop().addChild(this.§`H§);
                           if(_loc14_ || this)
                           {
                              §§push(this.§]!,§);
                           }
                           §§goto(addr223);
                        }
                        §§goto(addr159);
                     }
                     §§goto(addr223);
                  }
                  §§goto(addr123);
               }
               §§goto(addr108);
            }
            §§goto(addr75);
         }
         §§goto(addr96);
      }
      
      public function get §&s§() : Sprite
      {
         return this.§?g§;
      }
      
      public function get §[Z§() : Sprite
      {
         return this.§]!,§;
      }
      
      public function dispose() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:Texture = null;
         while(this.§do §.length > 0)
         {
            this.§2p§(0);
         }
         this.§do § = null;
         if(!_loc3_)
         {
            this.§;!7§ = null;
            if(_loc2_ || _loc3_)
            {
               §§push(this.§]!,§);
               if(!_loc3_)
               {
                  if(§§pop())
                  {
                     addr61:
                     this.§]!,§.dispose();
                     addr62:
                     this.§]!,§ = null;
                     this.§6!e§ = null;
                     this.§?g§ = null;
                     if(!(_loc3_ && _loc2_))
                     {
                        this.§0G§ = null;
                        if(!_loc3_)
                        {
                           this.§`H§ = null;
                           if(!(_loc3_ && _loc2_))
                           {
                              addr103:
                              while(this.§'O§.length > 0)
                              {
                                 _loc1_ = this.§'O§.pop();
                                 if(!(_loc3_ && this))
                                 {
                                    this.§-n§.textureManager.§[!]§(_loc1_);
                                 }
                              }
                           }
                        }
                        return;
                     }
                  }
                  §§goto(addr103);
               }
            }
            §§goto(addr61);
         }
         §§goto(addr62);
      }
      
      private function §?O§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§6!e§.visible = param1;
         }
      }
      
      private function §`!@§() : void
      {
         var _loc16_:Boolean = false;
         var _loc17_:Boolean = true;
         var _loc3_:§<!3§ = null;
         var _loc4_:Rectangle = null;
         var _loc5_:* = NaN;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         var _loc8_:* = 0;
         var _loc9_:* = 0;
         var _loc10_:BitmapData = null;
         var _loc11_:BitmapData = null;
         var _loc12_:Texture = null;
         var _loc13_:§7!J§ = null;
         var _loc1_:Rectangle = null;
         var _loc2_:Vector.<§<!3§> = new Vector.<§<!3§>();
         for each(_loc3_ in this.§do §)
         {
            if(!_loc16_)
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
            _loc4_ = _loc3_.sprite.getBounds(this.§]!,§);
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
         if(_loc1_)
         {
            §§push(1);
            if(!(_loc16_ && _loc2_))
            {
               §§push(Number(§§pop()));
               if(_loc17_)
               {
                  _loc5_ = §§pop();
                  loop1:
                  while(true)
                  {
                     §§push(_loc1_.width > 2048);
                     if(_loc17_ || _loc1_)
                     {
                        if(!§§pop())
                        {
                           if(_loc17_ || this)
                           {
                              addr204:
                              §§pop();
                              if(!_loc16_)
                              {
                                 addr211:
                                 if(_loc1_.height <= 2048)
                                 {
                                    §§push(int(_loc1_.width));
                                    if(_loc17_ || _loc1_)
                                    {
                                       _loc6_ = §§pop();
                                       §§push(int(_loc1_.height));
                                       if(_loc17_)
                                       {
                                          addr228:
                                          _loc7_ = §§pop();
                                          if(!(_loc16_ && _loc1_))
                                          {
                                             §§push(int(_loc1_.left));
                                             if(_loc16_ && _loc1_)
                                             {
                                             }
                                             addr252:
                                             _loc9_ = §§pop();
                                             §§goto(addr253);
                                          }
                                          break;
                                       }
                                       _loc8_ = §§pop();
                                       if(_loc17_)
                                       {
                                          break;
                                       }
                                       addr253:
                                       _loc10_ = new BitmapData(_loc6_,_loc7_,true,0);
                                       if(_loc17_)
                                       {
                                          this.§7!I§(_loc10_.rect,_loc10_,_loc5_);
                                       }
                                       _loc11_ = this.§2c§(_loc2_,_loc6_,_loc7_,_loc8_,_loc9_,_loc5_);
                                       if(_loc17_ || _loc2_)
                                       {
                                          _loc10_.copyChannel(_loc11_,_loc11_.rect,new Point(0,0),BitmapDataChannel.ALPHA,BitmapDataChannel.ALPHA);
                                       }
                                       _loc12_ = this.§-n§.textureManager.§%!^§(_loc10_);
                                       if(_loc17_)
                                       {
                                          this.§'O§.push(_loc12_);
                                       }
                                       (_loc13_ = new §7!J§(_loc12_)).x = _loc8_ / _loc5_;
                                       if(_loc17_)
                                       {
                                          _loc13_.y = _loc9_ / _loc5_;
                                          if(_loc17_)
                                          {
                                             _loc13_.scaleX = 1 / _loc5_;
                                             if(!_loc17_)
                                             {
                                             }
                                             §§goto(addr368);
                                          }
                                          _loc13_.scaleY = 1 / _loc5_;
                                          if(_loc17_ || this)
                                          {
                                             this.§6!e§.addChild(_loc13_);
                                             if(_loc16_)
                                             {
                                             }
                                          }
                                          §§goto(addr368);
                                       }
                                       _loc11_.dispose();
                                       §§goto(addr368);
                                    }
                                    §§goto(addr228);
                                 }
                                 else
                                 {
                                    _loc1_.left /= 2;
                                    if(!(_loc17_ || _loc3_))
                                    {
                                       continue;
                                    }
                                    _loc1_.top /= 2;
                                    if(_loc17_)
                                    {
                                       _loc1_.right /= 2;
                                    }
                                    _loc1_.bottom /= 2;
                                    §§push(_loc5_);
                                    if(_loc17_)
                                    {
                                       §§push(§§pop() / 2);
                                       if(!_loc16_)
                                       {
                                          while(true)
                                          {
                                             §§push(Number(§§pop()));
                                          }
                                          addr182:
                                       }
                                    }
                                    while(true)
                                    {
                                       _loc5_ = §§pop();
                                       continue loop1;
                                    }
                                 }
                              }
                              break;
                           }
                        }
                        §§goto(addr211);
                     }
                     §§goto(addr204);
                  }
                  §§goto(addr252);
                  §§push(int(_loc1_.top));
               }
               §§goto(addr182);
            }
            §§goto(addr252);
         }
         addr368:
      }
      
      private function §2c§(param1:Vector.<§<!3§>, param2:int, param3:int, param4:int, param5:int, param6:Number) : BitmapData
      {
         var _loc16_:Boolean = true;
         var _loc17_:Boolean = false;
         var _loc7_:§<!3§ = null;
         var _loc11_:§"!0§ = null;
         var _loc12_:Array = null;
         var _loc13_:Rectangle = null;
         var _loc8_:BitmapData = new BitmapData(param2,param3,true,0);
         var _loc9_:BitmapData = new BitmapData(1,1,true,4294967295);
         var _loc10_:Matrix = new Matrix();
         for each(_loc7_ in param1)
         {
            _loc12_ = (_loc11_ = _loc7_.§9U§.shape).§]!5§();
            _loc13_ = new Rectangle(_loc12_[0].x / §7E§.§8!'§ * param6,_loc12_[0].y / §7E§.§8!'§ * param6,(_loc12_[1].x - _loc12_[0].x) / §7E§.§8!'§ * param6,(_loc12_[1].y - _loc12_[0].y) / §7E§.§8!'§ * param6);
            if(_loc16_ || this)
            {
               _loc10_.identity();
               _loc10_.scale(_loc13_.width,_loc13_.height);
               _loc10_.translate(-_loc13_.width / 2,-_loc13_.height / 2);
               if(!_loc17_)
               {
                  _loc10_.rotate((360 - _loc7_.§;x§()) / 180 * Math.PI);
               }
               _loc10_.translate(_loc7_.sprite.x * param6 - param4,_loc7_.sprite.y * param6 - param5);
               if(!_loc17_)
               {
                  _loc8_.draw(_loc9_,_loc10_);
               }
            }
         }
         if(!(_loc17_ && this))
         {
            _loc9_.dispose();
         }
         return _loc8_;
      }
      
      private function §7!I§(param1:Rectangle, param2:BitmapData, param3:Number) : void
      {
         var _loc16_:Boolean = true;
         var _loc17_:Boolean = false;
         var _loc6_:BitmapData = null;
         var _loc7_:Matrix = null;
         var _loc8_:int = 0;
         var _loc9_:* = 0;
         var _loc10_:* = 0;
         var _loc11_:* = 0;
         var _loc12_:* = 0;
         var _loc13_:* = 0;
         var _loc14_:int = 0;
         var _loc15_:* = 0;
         §§push(this.§-n§.background.§'!e§());
         if(!(_loc17_ && this))
         {
            §§push(§§pop());
         }
         var _loc4_:* = §§pop();
         var _loc5_:§>?§;
         if(_loc5_ = this.§-n§.backgroundTextureManager.§8!@§(_loc4_))
         {
            _loc6_ = new BitmapData(_loc5_.bitmapData.width * param3,_loc5_.bitmapData.height * param3);
            (_loc7_ = new Matrix()).scale(param3,param3);
            if(!(_loc17_ && param3))
            {
               _loc6_.draw(_loc5_.bitmapData,_loc7_);
               §§push(_loc6_.width - 2);
               if(_loc16_)
               {
                  _loc8_ = §§pop();
                  if(!(_loc17_ && param3))
                  {
                     §§push(_loc6_.height - 2);
                     if(_loc16_)
                     {
                        §§push(int(§§pop()));
                        if(_loc16_ || param3)
                        {
                           _loc9_ = §§pop();
                           addr124:
                           §§push(param1.top / _loc9_);
                           if(!_loc17_)
                           {
                              §§push(int(§§pop()));
                              if(!(_loc17_ && this))
                              {
                                 _loc10_ = §§pop();
                                 if(!(_loc17_ && this))
                                 {
                                    if(param1.top < 0)
                                    {
                                       if(_loc16_)
                                       {
                                          §§push(_loc10_);
                                          if(_loc16_)
                                          {
                                             _loc10_ = §§pop() - 1;
                                             if(!_loc17_)
                                             {
                                                addr169:
                                                §§push(param1.bottom / _loc9_);
                                                if(!(_loc17_ && param2))
                                                {
                                                   §§push(int(§§pop()));
                                                   §§push(int(§§pop()));
                                                   if(!_loc17_)
                                                   {
                                                      _loc11_ = §§pop();
                                                      _loc11_ = §§pop() + 1;
                                                      if(!(_loc17_ && param2))
                                                      {
                                                         addr194:
                                                         §§push(param1.left / _loc8_);
                                                         if(!_loc17_)
                                                         {
                                                            addr200:
                                                            §§push(int(§§pop()));
                                                            if(!_loc17_)
                                                            {
                                                               _loc12_ = §§pop();
                                                               if(!(_loc17_ && this))
                                                               {
                                                                  if(param1.left < 0)
                                                                  {
                                                                     if(_loc16_ || param2)
                                                                     {
                                                                        addr222:
                                                                        §§push(_loc12_ - 1);
                                                                        if(!(_loc17_ && param1))
                                                                        {
                                                                           _loc12_ = §§pop();
                                                                           addr243:
                                                                           if(_loc16_)
                                                                           {
                                                                              addr234:
                                                                              §§push(int(param1.right / _loc8_));
                                                                           }
                                                                           _loc14_ = _loc12_;
                                                                           loop0:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc14_);
                                                                              loop1:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc13_);
                                                                                 loop2:
                                                                                 while(§§pop() < §§pop())
                                                                                 {
                                                                                    §§push(_loc10_);
                                                                                    if(!(_loc17_ && this))
                                                                                    {
                                                                                       §§push(int(§§pop()));
                                                                                       if(_loc16_)
                                                                                       {
                                                                                          addr259:
                                                                                          _loc15_ = §§pop();
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc15_);
                                                                                             if(_loc17_)
                                                                                             {
                                                                                                continue loop1;
                                                                                             }
                                                                                             addr279:
                                                                                          }
                                                                                          addr276:
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc11_);
                                                                                          if(!(_loc16_ || param1))
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          if(§§pop() >= §§pop())
                                                                                          {
                                                                                             if(_loc17_ && param3)
                                                                                             {
                                                                                                break loop2;
                                                                                             }
                                                                                             continue loop0;
                                                                                          }
                                                                                          param2.copyPixels(_loc6_,_loc6_.rect,new Point(_loc14_ * _loc8_,_loc15_ * _loc9_));
                                                                                          _loc15_++;
                                                                                          §§goto(addr276);
                                                                                          §§goto(addr279);
                                                                                       }
                                                                                       continue;
                                                                                    }
                                                                                    §§goto(addr259);
                                                                                 }
                                                                                 addr316:
                                                                                 §§goto(addr318);
                                                                              }
                                                                           }
                                                                        }
                                                                        _loc13_ = (_loc13_ = §§pop()) + 1;
                                                                        §§goto(addr243);
                                                                     }
                                                                  }
                                                                  §§goto(addr234);
                                                               }
                                                            }
                                                            §§goto(addr222);
                                                         }
                                                         §§goto(addr234);
                                                      }
                                                      §§goto(addr243);
                                                   }
                                                   §§goto(addr222);
                                                }
                                                §§goto(addr200);
                                             }
                                             §§goto(addr243);
                                          }
                                          §§goto(addr222);
                                       }
                                       §§goto(addr194);
                                    }
                                    §§goto(addr169);
                                 }
                                 §§goto(addr243);
                              }
                              §§goto(addr222);
                           }
                           §§goto(addr200);
                        }
                        §§goto(addr222);
                     }
                     §§goto(addr200);
                  }
                  §§goto(addr124);
               }
               §§goto(addr200);
            }
            §§goto(addr222);
         }
         addr318:
         _loc6_.dispose();
      }
      
      public function § C§(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §<!3§
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc10_:§<!3§ = null;
         var _loc11_:* = param2;
         §§push("BIRD_BLACK");
         if(_loc12_)
         {
            if(§§pop() === _loc11_)
            {
               §§push(0);
            }
            else
            {
               §§push("BIRD_BLUE");
               if(!(_loc13_ && this))
               {
                  if(§§pop() === _loc11_)
                  {
                     §§goto(addr326);
                  }
                  else
                  {
                     §§push("BIRD_GREEN");
                     if(_loc12_)
                     {
                        §§push(_loc11_);
                        if(_loc12_)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(_loc12_)
                              {
                                 addr326:
                                 switch(1)
                                 {
                                    case 0:
                                       _loc10_ = new §&!6§(this,param1,this.§-n§.§[!U§.§&4§,this.§-n§,this.§]!r§,param2,param3,param4,param5,param8,param9);
                                       break;
                                    case 1:
                                       _loc10_ = new §`D§(this,param1,this.§-n§.§[!U§.§&4§,this.§-n§,this.§]!r§,param2,param3,param4,param5,param8,param9);
                                       break;
                                    case 2:
                                       _loc10_ = new §3!E§(this,param1,this.§-n§.§[!U§.§&4§,this.§-n§,this.§]!r§,param2,param3,param4,param5,param8,param9);
                                       break;
                                    case 3:
                                       _loc10_ = new §7!7§(this,param1,this.§-n§.§[!U§.§&4§,this.§-n§,this.§]!r§,param2,param3,param4,param5,param8,param9);
                                       break;
                                    case 4:
                                       _loc10_ = new §2!Q§(this,param1,this.§-n§.§[!U§.§&4§,this.§-n§,this.§]!r§,param2,param3,param4,param5,param8,param9);
                                       break;
                                    case 5:
                                       _loc10_ = new §#z§(this,param1,this.§-n§.§[!U§.§&4§,this.§-n§,this.§]!r§,param2,param3,param4,param5,param8,param9);
                                       break;
                                    case 6:
                                       _loc10_ = new §2L§(this,param1,this.§-n§.§[!U§.§&4§,this.§-n§,this.§]!r§,param2,param3,param4,param5,param8,param9);
                                       break;
                                    default:
                                       _loc10_ = new §7!U§(this,param1,this.§-n§.§[!U§.§&4§,this.§-n§,this.§]!r§,param2,param3,param4,param5,param8,param9);
                                 }
                                 return _loc10_;
                                 §§push(2);
                              }
                              §§goto(addr326);
                           }
                           else
                           {
                              §§push("BIRD_WHITE");
                              if(!(_loc13_ && param3))
                              {
                                 addr247:
                                 if(§§pop() === _loc11_)
                                 {
                                    §§push(3);
                                    if(!(_loc12_ || param3))
                                    {
                                       addr314:
                                    }
                                    §§goto(addr326);
                                 }
                                 else
                                 {
                                    §§push("BIRD_YELLOW");
                                    if(!_loc13_)
                                    {
                                       addr261:
                                       if(§§pop() === _loc11_)
                                       {
                                          §§push(4);
                                          if(_loc12_ || param1)
                                          {
                                          }
                                          §§goto(addr326);
                                       }
                                       else
                                       {
                                          §§push("BIRD_RED");
                                          if(!(_loc13_ && param2))
                                          {
                                             addr280:
                                             §§push(_loc11_);
                                             if(_loc12_ || param3)
                                             {
                                                if(§§pop() === §§pop())
                                                {
                                                   if(_loc12_ || param2)
                                                   {
                                                      §§push(5);
                                                      if(!(_loc13_ && param2))
                                                      {
                                                         §§goto(addr314);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      addr318:
                                                      §§push(6);
                                                      if(_loc13_)
                                                      {
                                                      }
                                                   }
                                                   §§goto(addr326);
                                                }
                                                else
                                                {
                                                   §§push("BIRD_REDBIG");
                                                }
                                                §§goto(addr318);
                                             }
                                             addr317:
                                             if(§§pop() === §§pop())
                                             {
                                                §§goto(addr318);
                                             }
                                             else
                                             {
                                                §§goto(addr326);
                                                §§push(7);
                                             }
                                             §§goto(addr326);
                                          }
                                          §§goto(addr317);
                                          §§push(_loc11_);
                                       }
                                       §§goto(addr326);
                                    }
                                    §§goto(addr280);
                                 }
                              }
                              §§goto(addr280);
                           }
                        }
                        §§goto(addr280);
                     }
                     §§goto(addr247);
                  }
               }
               §§goto(addr261);
            }
            §§goto(addr326);
         }
         §§goto(addr280);
      }
      
      public function hasBirds() : Boolean
      {
         return this.§>L§ > 0;
      }
      
      public function addObject(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : §<!3§
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         var _loc10_:Sprite;
         (_loc10_ = new Sprite()).scaleX = param8;
         if(_loc14_)
         {
            _loc10_.scaleY = param8;
         }
         var _loc11_:§<!3§;
         if((_loc11_ = this.§'$§(_loc10_,param1,param2,param3,param4,param5,param6,param7,param8)).isTexture())
         {
            §§push(_loc10_);
            §§push(this.§?!t§);
            if(_loc14_)
            {
               §§push(!§§pop());
            }
            §§pop().visible = §§pop();
            if(_loc14_ || this)
            {
               this.§do §[this.§do §.length] = _loc11_;
               addr80:
               §§push(_loc11_ is §7!U§);
               if(_loc14_ || param3)
               {
                  §§push(§§pop());
                  if(!_loc15_)
                  {
                     if(§§pop())
                     {
                        §§pop();
                        §§push(!_loc11_.§='§());
                        if(_loc14_)
                        {
                           addr110:
                           if(§§pop())
                           {
                              this.§0G§.addChild(_loc10_);
                              var _loc12_:*;
                              §§push((_loc12_ = this).§>L§);
                              if(_loc14_ || param1)
                              {
                                 §§push(§§pop() + 1);
                              }
                              var _loc13_:* = §§pop();
                              if(_loc14_ || param1)
                              {
                                 _loc12_.§>L§ = _loc13_;
                              }
                              if(_loc14_)
                              {
                                 addr206:
                                 if(param5)
                                 {
                                    if(_loc14_)
                                    {
                                       addr210:
                                       §§push(this.§-n§);
                                       if(_loc14_)
                                       {
                                          §§pop().§=,§(_loc11_);
                                          addr216:
                                          if(!param6)
                                          {
                                          }
                                          §§goto(addr229);
                                       }
                                       §§pop().activeObject = _loc11_;
                                    }
                                    §§goto(addr229);
                                 }
                              }
                              §§goto(addr216);
                           }
                           else
                           {
                              §§push(_loc11_.front);
                              if(_loc14_ || param2)
                              {
                                 addr152:
                                 §§push(Boolean(§§pop()));
                                 if(!(_loc15_ && param1))
                                 {
                                    addr161:
                                    if(!§§pop())
                                    {
                                       if(_loc14_ || this)
                                       {
                                          addr169:
                                          §§pop();
                                          §§push(param9);
                                          if(_loc14_ || this)
                                          {
                                             addr179:
                                             if(§§pop())
                                             {
                                                if(_loc14_ || param1)
                                                {
                                                   this.§?g§.addChild(_loc10_);
                                                   §§goto(addr206);
                                                }
                                                §§goto(addr210);
                                             }
                                             else
                                             {
                                                this.§`H§.addChild(_loc10_);
                                                §§goto(addr206);
                                             }
                                          }
                                          §§goto(addr179);
                                       }
                                       §§goto(addr216);
                                    }
                                 }
                                 §§goto(addr179);
                              }
                              §§goto(addr169);
                           }
                        }
                        §§goto(addr206);
                     }
                     §§goto(addr110);
                  }
                  §§goto(addr161);
               }
               §§goto(addr152);
            }
            addr229:
            if(!(_loc15_ && param3))
            {
               §§push(this.§-n§);
            }
            return _loc11_;
         }
         this.§do §[this.§do §.length] = _loc11_;
         if(_loc14_ || param3)
         {
            §§goto(addr80);
         }
         §§goto(addr210);
      }
      
      public function §3H§(param1:int, param2:§<!3§, param3:§<!3§) : §1M§
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc6_:§1M§ = null;
         var _loc4_:int = this.§do §.indexOf(param2) - this.§"@§;
         var _loc5_:int = this.§do §.indexOf(param3) - this.§"@§;
         if(_loc8_ || param1)
         {
            §§push(_loc4_);
            if(!_loc7_)
            {
               §§push(0);
               if(!_loc7_)
               {
                  §§push(§§pop() >= §§pop());
                  if(_loc8_)
                  {
                     if(§§pop())
                     {
                        if(_loc8_)
                        {
                           addr68:
                           §§pop();
                           if(!_loc7_)
                           {
                              §§goto(addr74);
                           }
                           §§goto(addr75);
                        }
                     }
                     addr74:
                     §§goto(addr73);
                  }
                  §§goto(addr68);
               }
               addr73:
               §§goto(addr72);
            }
            addr72:
            §§goto(addr71);
         }
         addr71:
         if(_loc5_ >= 0)
         {
            (_loc6_ = new §1M§(§[F§.§"l§,_loc4_,_loc5_,new Point(0,0),new Point(0,0))).§0i§ = this.§-n§.§[!U§.§&4§.§`v§(_loc6_.§?!V§(param2,param3));
            addr75:
            if(!_loc7_)
            {
               this.§2^§.push(_loc6_);
               if(!_loc7_)
               {
                  return _loc6_;
               }
            }
         }
         return null;
      }
      
      public function §=r§(param1:§1M§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || _loc3_)
         {
            if(!(param1.§0i§ is b2WeldJoint))
            {
               if(_loc5_)
               {
                  §§goto(addr31);
               }
            }
            var _loc2_:§<!3§ = this.getObject(param1.index1 + this.§"@§);
            var _loc3_:§<!3§ = this.getObject(param1.index2 + this.§"@§);
            if(_loc5_ || this)
            {
               this.§-n§.§[!U§.§&4§.§;!S§(param1.§0i§);
               if(!(_loc4_ && _loc2_))
               {
                  addr91:
                  param1.§0i§ = this.§-n§.§[!U§.§&4§.§`v§(param1.§?!V§(_loc2_,_loc3_));
               }
               return;
            }
            §§goto(addr91);
         }
         addr31:
      }
      
      public function §@!r§(param1:§<!3§) : Vector.<§1M§>
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:§1M§ = null;
         var _loc2_:Vector.<§1M§> = new Vector.<§1M§>();
         var _loc3_:int = this.§do §.indexOf(param1) - this.§"@§;
         if(_loc8_)
         {
            §§push(_loc3_);
            if(_loc8_)
            {
               if(§§pop() >= 0)
               {
                  for each(_loc4_ in this.§2^§)
                  {
                     §§push(_loc4_.index1 == _loc3_);
                     if(_loc8_ || param1)
                     {
                        if(!§§pop())
                        {
                           if(!_loc7_)
                           {
                              §§pop();
                              if(_loc7_ && param1)
                              {
                                 continue;
                              }
                              §§push(_loc4_.index2 == _loc3_);
                           }
                        }
                     }
                     if(§§pop())
                     {
                        if(_loc8_ || param1)
                        {
                           _loc2_.push(_loc4_);
                        }
                     }
                  }
                  addr43:
                  addr42:
               }
               return _loc2_;
            }
            §§goto(addr43);
         }
         §§goto(addr42);
      }
      
      public function §1!8§() : Vector.<§1M§>
      {
         return this.§2^§;
      }
      
      public function §[!;§(param1:§<!3§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:int = this.§do §.indexOf(param1) - this.§"@§;
         var _loc3_:* = int(this.§2^§.length - 1);
         while(true)
         {
            §§push(_loc3_);
            while(true)
            {
               if(§§pop() >= 0)
               {
                  §§push(this.§2^§[_loc3_].index1 == _loc2_);
                  if(_loc5_)
                  {
                     if(!§§pop())
                     {
                        if(!_loc4_)
                        {
                           addr57:
                           §§pop();
                           if(!_loc5_)
                           {
                              break;
                           }
                           §§push(this.§2^§[_loc3_].index2 == _loc2_);
                        }
                     }
                     if(§§pop())
                     {
                        if(_loc4_ && this)
                        {
                           break;
                        }
                        this.§2^§.splice(_loc3_,1);
                        if(_loc4_)
                        {
                           break;
                        }
                     }
                     §§push(_loc3_);
                     if(!_loc4_)
                     {
                        §§push(§§pop() - 1);
                        if(_loc5_ || _loc3_)
                        {
                           _loc3_ = §§pop();
                           if(_loc5_)
                           {
                              break;
                           }
                           §§goto(addr109);
                        }
                     }
                     continue;
                  }
                  §§goto(addr57);
               }
               addr109:
               return;
            }
         }
      }
      
      public function §%Y§(param1:§<!3§, param2:§<!3§) : Boolean
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:int = this.§do §.indexOf(param1) - this.§"@§;
         var _loc4_:int = this.§do §.indexOf(param2) - this.§"@§;
         var _loc5_:* = int(this.§2^§.length - 1);
         loop0:
         while(true)
         {
            §§push(_loc5_);
            while(true)
            {
               if(§§pop() >= 0)
               {
                  §§push(this.§2^§[_loc5_].index1 == _loc3_);
                  if(!_loc6_)
                  {
                     §§push(§§pop());
                     if(_loc7_)
                     {
                        if(§§pop())
                        {
                           if(!(_loc6_ && param1))
                           {
                              §§pop();
                              if(!_loc6_)
                              {
                                 §§push(this.§2^§[_loc5_].index2 == _loc4_);
                                 if(_loc7_ || _loc3_)
                                 {
                                    addr90:
                                    §§push(§§pop());
                                    if(_loc7_ || param2)
                                    {
                                       if(!§§pop())
                                       {
                                          §§pop();
                                          if(_loc6_ && _loc3_)
                                          {
                                             break;
                                          }
                                          addr115:
                                          §§push(this.§2^§[_loc5_].index1 == _loc4_);
                                          if(this.§2^§[_loc5_].index1 == _loc4_)
                                          {
                                             addr116:
                                             §§pop();
                                             if(!_loc7_)
                                             {
                                                break;
                                             }
                                             §§push(this.§2^§[_loc5_].index2 == _loc3_);
                                          }
                                       }
                                    }
                                    §§goto(addr115);
                                 }
                                 if(§§pop())
                                 {
                                    if(!(_loc6_ && this))
                                    {
                                       break loop0;
                                    }
                                    break;
                                 }
                                 §§push(_loc5_);
                                 if(_loc6_)
                                 {
                                    continue;
                                 }
                                 §§push(§§pop() - 1);
                                 if(!(_loc7_ || param1))
                                 {
                                    continue;
                                 }
                                 _loc5_ = §§pop();
                                 if(_loc7_)
                                 {
                                    break;
                                 }
                                 addr171:
                                 return false;
                                 addr170:
                              }
                           }
                           §§goto(addr115);
                        }
                        §§goto(addr90);
                     }
                     §§goto(addr115);
                  }
                  §§goto(addr116);
               }
               §§goto(addr170);
            }
         }
         §§push(true);
         if(!(_loc6_ && this))
         {
            return §§pop();
         }
         §§goto(addr171);
      }
      
      protected function §'$§(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §<!3§
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         var _loc10_:§<!3§ = null;
         var _loc11_:§]!@§ = null;
         if(!(_loc14_ && this))
         {
            §§push(param2);
            if(!_loc14_)
            {
               §§push("BIRD");
               if(_loc15_)
               {
                  if(§§pop().indexOf(§§pop()) == 0)
                  {
                     if(_loc15_)
                     {
                        _loc10_ = this.§ C§(param1,param2,param3,param4,param5,param6,param7,param8,param9);
                        if(!_loc14_)
                        {
                           var _loc12_:*;
                           §§push((_loc12_ = this).§@Q§);
                           if(!(_loc14_ && this))
                           {
                              §§push(§§pop() + 1);
                           }
                           var _loc13_:* = §§pop();
                           if(!(_loc14_ && param3))
                           {
                              _loc12_.§@Q§ = _loc13_;
                           }
                        }
                     }
                     else
                     {
                        addr87:
                        _loc10_ = new §3^§(this,param1,this.§-n§.§[!U§.§&4§,this.§-n§,this.§]!r§,param2,param3,param4,param5,param9);
                     }
                     §§goto(addr276);
                  }
                  else
                  {
                     addr83:
                     §§push(param2);
                     §§push("PIG");
                  }
                  §§goto(addr87);
               }
               if(§§pop().indexOf(§§pop()) == 0)
               {
                  §§goto(addr87);
               }
               else
               {
                  §§push((_loc11_ = §1!!§.§#P§(param2)) == null);
                  if(_loc15_)
                  {
                     §§push(§§pop());
                     if(!(_loc14_ && this))
                     {
                        if(§§pop())
                        {
                           if(_loc15_ || param2)
                           {
                              §§pop();
                              if(_loc15_ || this)
                              {
                                 §§push(param2);
                                 if(_loc15_)
                                 {
                                    §§push(§§pop().indexOf("MISC_") == 0);
                                    if(!_loc14_)
                                    {
                                       addr160:
                                       if(§§pop())
                                       {
                                          if(_loc15_)
                                          {
                                             addr176:
                                             §§push("MISC_FOOD_");
                                             if(_loc15_ || param3)
                                             {
                                                §§push(§§pop() + param2.substring(5));
                                             }
                                             param2 = §§pop();
                                             if(_loc15_ || this)
                                             {
                                                addr184:
                                                _loc11_ = §1!!§.§#P§(param2);
                                                §§push(_loc11_.§&!j§);
                                                if(_loc15_ || param1)
                                                {
                                                   §§push(§]!@§.§&l§);
                                                   if(_loc15_)
                                                   {
                                                      §§push(§§pop() == §§pop());
                                                      if(!_loc14_)
                                                      {
                                                         addr206:
                                                         if(!§§pop())
                                                         {
                                                            if(_loc15_ || this)
                                                            {
                                                               addr214:
                                                               §§pop();
                                                               §§goto(addr223);
                                                            }
                                                         }
                                                      }
                                                      if(§§pop())
                                                      {
                                                         addr223:
                                                         if(_loc15_)
                                                         {
                                                            addr221:
                                                            §§push(_loc11_.§&!j§ == §]!@§.§6!r§);
                                                         }
                                                         _loc10_ = new §,&§(this,param1,this.§-n§.§[!U§.§&4§,this.§-n§,this.§]!r§,param2,param3,param4,param5,param9,_loc11_.front);
                                                      }
                                                      else
                                                      {
                                                         _loc10_ = new §<!3§(this,param1,this.§-n§.§[!U§.§&4§,this.§-n§,this.§]!r§,param2,param3,param4,param5,param9,_loc11_.front);
                                                      }
                                                      §§goto(addr276);
                                                   }
                                                }
                                                §§goto(addr221);
                                             }
                                             §§goto(addr223);
                                          }
                                       }
                                       §§goto(addr184);
                                    }
                                    §§goto(addr214);
                                 }
                                 §§goto(addr176);
                              }
                              §§goto(addr221);
                           }
                           §§goto(addr214);
                        }
                        §§goto(addr160);
                     }
                     §§goto(addr206);
                  }
                  §§goto(addr160);
               }
            }
            §§goto(addr83);
         }
         §§goto(addr87);
      }
      
      public function §8I§(param1:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§<!3§ = null;
         var _loc2_:* = int(this.§do §.length - 1);
         for(; _loc2_ >= 0; §§push(_loc2_),if(!(_loc5_ && this))
         {
            §§push(§§pop() - 1);
         },_loc2_ = §§pop())
         {
            _loc3_ = this.§do §[_loc2_] as §<!3§;
            if(_loc3_)
            {
               if(!_loc5_)
               {
                  if(_loc3_.§!!>§ <= 0)
                  {
                     if(_loc4_ || this)
                     {
                        this.§2p§(_loc2_,true,true,true);
                        continue;
                     }
                  }
                  else
                  {
                     _loc3_.§2!<§();
                  }
               }
               _loc3_.§=!_§();
            }
         }
         if(_loc4_ || this)
         {
            this.§%!%§(param1);
         }
      }
      
      protected function §%!%§(param1:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:§@!%§ = null;
         var _loc4_:* = 0;
         var _loc2_:* = int(this.§;!7§.length - 1);
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§;!7§[_loc2_];
            §§push(_loc3_.§[§);
            if(!_loc5_)
            {
               if(§§pop())
               {
                  §§push(_loc3_.update(param1));
                  if(_loc6_ || this)
                  {
                     §§push(int(§§pop()));
                     if(!_loc5_)
                     {
                        §§push(§§pop());
                        if(!(_loc5_ && param1))
                        {
                           _loc4_ = §§pop();
                           if(_loc6_)
                           {
                              addr66:
                              if(§§pop() != -1)
                              {
                                 if(!(_loc5_ && param1))
                                 {
                                    §§push(_loc4_);
                                    if(_loc6_ || _loc3_)
                                    {
                                       §§push(§§pop() < this.§do §.length);
                                       if(!(_loc5_ && _loc3_))
                                       {
                                          if(§§pop())
                                          {
                                             if(!_loc5_)
                                             {
                                                §§pop();
                                             }
                                             addr122:
                                             if(§§pop())
                                             {
                                                if(!_loc5_)
                                                {
                                                   this.§2p§(_loc4_,true,true,true);
                                                   if(_loc5_)
                                                   {
                                                   }
                                                   addr155:
                                                   §§push(_loc2_);
                                                   if(!(_loc5_ && param1))
                                                   {
                                                      addr164:
                                                      _loc2_ = §§pop() - 1;
                                                      continue;
                                                   }
                                                   §§goto(addr164);
                                                }
                                                §§goto(addr155);
                                             }
                                             this.§;!7§.splice(_loc2_,1);
                                             if(!(_loc6_ || this))
                                             {
                                                continue;
                                             }
                                             §§goto(addr155);
                                          }
                                       }
                                       §§goto(addr122);
                                    }
                                    §§goto(addr164);
                                 }
                                 §§push(this.§do §[_loc4_] == null);
                                 if(_loc6_ || param1)
                                 {
                                    §§goto(addr122);
                                    §§push(!§§pop());
                                 }
                                 §§goto(addr122);
                              }
                              §§goto(addr155);
                           }
                           §§goto(addr164);
                        }
                     }
                     §§goto(addr66);
                  }
                  §§goto(addr164);
               }
               §§goto(addr155);
            }
            §§goto(addr122);
         }
      }
      
      public function addExplosions(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            this.§5O§.push(§'T§.createExplosion(param1,param2,param3));
            if(!(_loc4_ && this))
            {
               addr44:
               §+!§.§4c§("TntExplosions","ChannelExplosions");
            }
            return;
         }
         §§goto(addr44);
      }
      
      public function §^!!§(param1:Number, param2:Number) : int
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:§<!3§ = null;
         var _loc3_:* = int(this.§do §.length - 1);
         while(true)
         {
            §§push(_loc3_);
            if(!(_loc5_ && this))
            {
               if(§§pop() < 0)
               {
                  break;
               }
               if(_loc4_ = this.§do §[_loc3_])
               {
                  if(_loc5_)
                  {
                     continue;
                  }
                  if(_loc4_.isInCoordinates(param1,param2))
                  {
                     if(!(_loc5_ && _loc3_))
                     {
                        §§push(_loc3_);
                        if(_loc6_ || this)
                        {
                           return §§pop();
                        }
                        addr84:
                        §§push(§§pop() - 1);
                     }
                     else
                     {
                        addr81:
                        §§push(_loc3_);
                        if(!_loc5_)
                        {
                           §§goto(addr84);
                        }
                     }
                     _loc3_ = §§pop();
                     continue;
                  }
               }
               §§goto(addr81);
            }
            break;
         }
         return §§pop();
      }
      
      public function getObjectFromPoint(param1:Number, param2:Number) : §<!3§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:§<!3§ = null;
         var _loc3_:* = int(this.§do §.length - 1);
         while(true)
         {
            if(_loc3_ < 0)
            {
               return null;
            }
            if(_loc4_ = this.§do §[_loc3_])
            {
               if(!_loc5_)
               {
                  break;
               }
               if(_loc4_.isInCoordinates(param1,param2))
               {
                  if(_loc5_ || param1)
                  {
                     break;
                  }
               }
            }
            §§push(_loc3_);
            if(_loc5_ || param2)
            {
               §§push(§§pop() - 1);
            }
            _loc3_ = §§pop();
         }
         return _loc4_;
      }
      
      public function getObject(param1:int) : §<!3§
      {
         return this.§do §[param1];
      }
      
      public function §[!o§(param1:Number, param2:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:§<!3§ = null;
         var _loc3_:* = int(this.§do §.length - 1);
         while(_loc3_ >= 0)
         {
            (_loc4_ = this.§do §[_loc3_] as §<!3§).§[!o§(param2,param1);
            if(_loc5_)
            {
               §§push(_loc3_);
               if(!(_loc6_ && param1))
               {
                  §§push(§§pop() - 1);
               }
               _loc3_ = §§pop();
            }
         }
      }
      
      private function § !R§(param1:§<!3§, param2:Number) : Boolean
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:§<!3§ = null;
         if(!(_loc9_ && param2))
         {
            §§push(this.mSardineCanAdded);
            if(_loc8_ || _loc3_)
            {
               if(!§§pop())
               {
                  if(!(_loc9_ && this))
                  {
                     §§push(true);
                     if(_loc8_ || this)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr91:
                     §§push(false);
                  }
                  addr92:
                  var _loc3_:* = §§pop();
                  §§push(param1.§!!>§);
                  if(!(_loc9_ && this))
                  {
                     if(§§pop() == param1.§1!s§)
                     {
                        if(!(_loc9_ && _loc3_))
                        {
                           §§push(this.§"2§);
                           §§push(§;J§.§6!F§);
                           if(!(_loc9_ && this))
                           {
                              if(§§pop() < §§pop())
                              {
                                 if(!(_loc9_ && _loc3_))
                                 {
                                    §§push(this);
                                    §§push(this.§"2§);
                                    if(_loc8_ || param1)
                                    {
                                       §§push(param2);
                                       if(_loc8_ || _loc3_)
                                       {
                                          §§push(§§pop() * §;J§.§-H§);
                                       }
                                       §§push(§§pop() + §§pop());
                                    }
                                    §§pop().§"2§ = §§pop();
                                    if(_loc8_ || this)
                                    {
                                       addr161:
                                       §§push(param1.getBody());
                                       if(!_loc9_)
                                       {
                                          §§push(param2);
                                          if(!(_loc9_ && _loc3_))
                                          {
                                             §§push(§§pop() * this.§"2§);
                                          }
                                          §§pop().SetAngularVelocity(§§pop());
                                          if(_loc8_ || param1)
                                          {
                                             addr184:
                                             this.§4!]§ = 0;
                                             addr220:
                                             §§push(param1.§^!%§());
                                             if(!(_loc9_ && param2))
                                             {
                                                §§push(Boolean(§§pop()));
                                                if(!_loc9_)
                                                {
                                                   §§push(§§pop());
                                                   if(!_loc9_)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         if(!_loc9_)
                                                         {
                                                            addr238:
                                                            §§pop();
                                                            if(_loc8_ || _loc3_)
                                                            {
                                                               §§push(this.§+!Z§(param1));
                                                               if(!(_loc9_ && _loc3_))
                                                               {
                                                                  addr266:
                                                                  §§push(Boolean(§§pop()));
                                                                  §§push(Boolean(§§pop()));
                                                                  if(_loc8_ || param1)
                                                                  {
                                                                     if(!§§pop())
                                                                     {
                                                                        if(!_loc9_)
                                                                        {
                                                                           §§pop();
                                                                           addr282:
                                                                           §§push(this.§4!]§ > 0);
                                                                           §§push(this.§4!]§ > 0);
                                                                           if(!_loc9_)
                                                                           {
                                                                              addr286:
                                                                              if(§§pop())
                                                                              {
                                                                                 if(!_loc9_)
                                                                                 {
                                                                                    §§pop();
                                                                                    if(!_loc9_)
                                                                                    {
                                                                                       addr292:
                                                                                       §§push(this.§-n§.§1z§ > this.§4!]§ + §;J§.§1!o§);
                                                                                       if(_loc8_ || param2)
                                                                                       {
                                                                                          addr308:
                                                                                          if(§§pop())
                                                                                          {
                                                                                             §§push(this.mMightyEagleTimer);
                                                                                             if(_loc8_ || this)
                                                                                             {
                                                                                                if(§§pop() < §;J§.§]!f§)
                                                                                                {
                                                                                                   if(_loc8_)
                                                                                                   {
                                                                                                      addr323:
                                                                                                      §§push(this.mMightyEagleTimer);
                                                                                                      if(!(_loc9_ && _loc3_))
                                                                                                      {
                                                                                                         §§push(Number(§§pop() + param2));
                                                                                                         if(!_loc9_)
                                                                                                         {
                                                                                                            _loc4_ = §§pop();
                                                                                                            §§push(this.mMightyEagleTimer);
                                                                                                            §§push(§;J§.§<m§);
                                                                                                            if(!(_loc9_ && _loc3_))
                                                                                                            {
                                                                                                               addr351:
                                                                                                               §§push(§§pop() < §§pop());
                                                                                                               if(§§pop() < §§pop())
                                                                                                               {
                                                                                                                  addr352:
                                                                                                                  §§pop();
                                                                                                                  if(!_loc9_)
                                                                                                                  {
                                                                                                                     addr356:
                                                                                                                     §§push(_loc4_ > §;J§.§<m§);
                                                                                                                     if(!(_loc9_ && param2))
                                                                                                                     {
                                                                                                                        addr366:
                                                                                                                        if(§§pop())
                                                                                                                        {
                                                                                                                           if(!_loc9_)
                                                                                                                           {
                                                                                                                              §+!§.§4c§("Mighty_Eagle_Selected_1","ChannelBird");
                                                                                                                              §+!§.§4c§("Mighty_Eagle_Flying_1","ChannelBird");
                                                                                                                           }
                                                                                                                           addr481:
                                                                                                                           §§push(true);
                                                                                                                           if(_loc8_)
                                                                                                                           {
                                                                                                                              addr484:
                                                                                                                              _loc3_ = §§pop();
                                                                                                                              if(!_loc9_)
                                                                                                                              {
                                                                                                                                 addr487:
                                                                                                                                 §§push(this);
                                                                                                                                 §§push("BIRD_MIGHTY_EAGLE");
                                                                                                                                 §§push(_loc5_);
                                                                                                                                 §§push(_loc6_);
                                                                                                                                 §§push(§;J§.§6!g§);
                                                                                                                                 if(_loc8_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() * 1.2);
                                                                                                                                 }
                                                                                                                                 _loc7_ = §§pop().addObject(§§pop(),§§pop(),§§pop(),§§pop());
                                                                                                                                 if(!(_loc9_ && param2))
                                                                                                                                 {
                                                                                                                                    this.mMightyEagleAdded = true;
                                                                                                                                    if(!_loc9_)
                                                                                                                                    {
                                                                                                                                       §§goto(addr522);
                                                                                                                                    }
                                                                                                                                    §§goto(addr527);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr522);
                                                                                                                        }
                                                                                                                        §§push(_loc4_);
                                                                                                                        if(!(_loc9_ && _loc3_))
                                                                                                                        {
                                                                                                                           §§push(§;J§.§]!f§);
                                                                                                                           if(_loc8_)
                                                                                                                           {
                                                                                                                              if(§§pop() >= §§pop())
                                                                                                                              {
                                                                                                                                 if(_loc8_)
                                                                                                                                 {
                                                                                                                                    addr392:
                                                                                                                                    §§push(param1.getBody());
                                                                                                                                    if(_loc8_ || this)
                                                                                                                                    {
                                                                                                                                       addr401:
                                                                                                                                       §§push(§§pop().GetPosition());
                                                                                                                                       if(!(_loc9_ && param2))
                                                                                                                                       {
                                                                                                                                          addr410:
                                                                                                                                          §§push(§§pop().x);
                                                                                                                                          §§push(§;J§.§1]§);
                                                                                                                                          if(!(_loc9_ && param2))
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() - §§pop());
                                                                                                                                             if(!_loc9_)
                                                                                                                                             {
                                                                                                                                                addr422:
                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                                if(_loc8_ || this)
                                                                                                                                                {
                                                                                                                                                   _loc5_ = §§pop();
                                                                                                                                                   if(!_loc9_)
                                                                                                                                                   {
                                                                                                                                                      addr435:
                                                                                                                                                      §§push(param1.getBody().GetPosition());
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr522);
                                                                                                                                                }
                                                                                                                                                addr467:
                                                                                                                                                _loc6_ = §§pop();
                                                                                                                                                addr466:
                                                                                                                                                §§push(this.§+!Z§(param1));
                                                                                                                                                if(!(_loc9_ && param1))
                                                                                                                                                {
                                                                                                                                                   addr478:
                                                                                                                                                   if(§§pop())
                                                                                                                                                   {
                                                                                                                                                      if(_loc8_)
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr481);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr487);
                                                                                                                                                }
                                                                                                                                                addr522:
                                                                                                                                                this.§4!]§ = 0;
                                                                                                                                                if(!_loc9_)
                                                                                                                                                {
                                                                                                                                                   addr527:
                                                                                                                                                   _loc7_.§0!E§.§&!Q§(1.82);
                                                                                                                                                }
                                                                                                                                                addr531:
                                                                                                                                                this.mMightyEagleTimer = _loc4_;
                                                                                                                                                return _loc3_;
                                                                                                                                                addr466:
                                                                                                                                             }
                                                                                                                                             §§goto(addr466);
                                                                                                                                          }
                                                                                                                                          addr446:
                                                                                                                                          §§push(§;J§.§do§);
                                                                                                                                          if(!(_loc9_ && _loc3_))
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                             §§push(1.07);
                                                                                                                                          }
                                                                                                                                          §§push(§§pop() - §§pop() * §§pop());
                                                                                                                                          if(_loc8_ || this)
                                                                                                                                          {
                                                                                                                                             §§goto(addr466);
                                                                                                                                          }
                                                                                                                                          §§goto(addr467);
                                                                                                                                       }
                                                                                                                                       §§push(§§pop().y);
                                                                                                                                       §§push(§;J§.§1]§);
                                                                                                                                       if(_loc9_ && param2)
                                                                                                                                       {
                                                                                                                                       }
                                                                                                                                       §§goto(addr446);
                                                                                                                                    }
                                                                                                                                    §§goto(addr435);
                                                                                                                                 }
                                                                                                                                 §§goto(addr467);
                                                                                                                              }
                                                                                                                              §§goto(addr531);
                                                                                                                           }
                                                                                                                           §§goto(addr446);
                                                                                                                        }
                                                                                                                        §§goto(addr422);
                                                                                                                     }
                                                                                                                     §§goto(addr478);
                                                                                                                  }
                                                                                                                  §§goto(addr392);
                                                                                                               }
                                                                                                               §§goto(addr366);
                                                                                                            }
                                                                                                            §§goto(addr446);
                                                                                                         }
                                                                                                         §§goto(addr410);
                                                                                                      }
                                                                                                      §§goto(addr422);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr522);
                                                                                             }
                                                                                             §§goto(addr422);
                                                                                          }
                                                                                          §§goto(addr522);
                                                                                       }
                                                                                       §§goto(addr484);
                                                                                    }
                                                                                    §§goto(addr481);
                                                                                 }
                                                                                 §§goto(addr352);
                                                                              }
                                                                           }
                                                                           §§goto(addr351);
                                                                        }
                                                                        §§goto(addr366);
                                                                     }
                                                                     §§goto(addr308);
                                                                  }
                                                                  §§goto(addr286);
                                                               }
                                                               §§goto(addr522);
                                                            }
                                                            §§goto(addr481);
                                                         }
                                                      }
                                                      §§goto(addr266);
                                                   }
                                                   §§goto(addr351);
                                                }
                                                §§goto(addr238);
                                             }
                                             §§goto(addr366);
                                          }
                                          else
                                          {
                                             addr208:
                                             this.§4!]§ = this.§-n§.§1z§;
                                             if(!(_loc9_ && param2))
                                             {
                                                §§goto(addr220);
                                             }
                                             §§goto(addr323);
                                          }
                                       }
                                       §§goto(addr401);
                                    }
                                    §§goto(addr292);
                                 }
                                 §§goto(addr323);
                              }
                              §§goto(addr161);
                           }
                           §§goto(addr410);
                        }
                        §§goto(addr184);
                     }
                     else
                     {
                        §§push(this.§4!]§);
                        if(!(_loc9_ && param1))
                        {
                           §§push(0);
                           if(!(_loc9_ && param1))
                           {
                              if(§§pop() == §§pop())
                              {
                                 if(!_loc9_)
                                 {
                                    §§goto(addr208);
                                 }
                                 §§goto(addr292);
                              }
                              §§goto(addr184);
                           }
                           §§goto(addr282);
                        }
                     }
                     §§goto(addr282);
                  }
                  §§goto(addr356);
               }
               else
               {
                  addr65:
                  §§push(this.mMightyEagleAdded);
                  if(_loc8_ || _loc3_)
                  {
                     if(§§pop())
                     {
                        if(_loc8_ || param2)
                        {
                           §§push(false);
                           if(_loc8_ || param2)
                           {
                              §§goto(addr90);
                           }
                        }
                        else
                        {
                           §§goto(addr91);
                        }
                        §§goto(addr92);
                     }
                  }
                  §§goto(addr90);
               }
            }
            addr90:
            return §§pop();
         }
         §§goto(addr65);
      }
      
      private function §]9§(param1:§<!3§, param2:Number) : Boolean
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc5_:§<!3§ = null;
         if(_loc9_)
         {
            §§push(this.§,!T§);
            if(!(_loc8_ && param1))
            {
               §§push(!§§pop());
               if(_loc9_)
               {
                  if(§§pop())
                  {
                     if(_loc9_)
                     {
                        §§pop();
                        if(!(_loc8_ && param2))
                        {
                           §§push(this.mMightyEagleTimer);
                           if(_loc9_ || _loc3_)
                           {
                              addr58:
                              if(§§pop() > §;J§.§&v§)
                              {
                                 if(_loc9_ || param2)
                                 {
                                    addr66:
                                    this.§,!T§ = true;
                                    if(_loc9_)
                                    {
                                       this.§-n§.§6g§();
                                    }
                                 }
                              }
                              §§push(Number(3));
                           }
                           var _loc3_:* = §§pop();
                           if(!_loc8_)
                           {
                              §§push(this);
                              §§push(this.mMightyEagleTimer);
                              if(!_loc8_)
                              {
                                 §§push(§§pop() + param2);
                              }
                              §§pop().mMightyEagleTimer = §§pop();
                              if(!_loc8_)
                              {
                                 §§push(this.§-n§.particles);
                                 §§push(§!r§.§2!H§);
                                 §§push(§<!r§.§1N§);
                                 §§push(§!r§.§^!F§);
                                 §§push(param1.getBody().GetPosition().x);
                                 if(_loc9_ || _loc3_)
                                 {
                                    §§push(_loc3_);
                                    if(_loc9_)
                                    {
                                       §§push(§§pop() - §§pop());
                                       if(_loc9_ || param2)
                                       {
                                          addr120:
                                          §§push(Math.random() * (_loc3_ * 2));
                                          if(!(_loc8_ && param1))
                                          {
                                             addr134:
                                             §§push(§§pop() + §§pop());
                                             §§push(param1.getBody().GetPosition().y);
                                             if(_loc9_)
                                             {
                                                addr140:
                                                §§push(_loc3_);
                                                if(_loc9_ || _loc3_)
                                                {
                                                   addr163:
                                                   §§push(§§pop() - §§pop());
                                                   if(_loc9_ || param1)
                                                   {
                                                      addr156:
                                                      §§push(Math.random() * (_loc3_ * 2));
                                                   }
                                                   §§pop().§1&§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),3500,"",§!r§.§^!O§(param1.§>p§),0,0,1,0,4);
                                                   var _loc4_:* = 1;
                                                   §§push(this.mMightyEagleHasTouchedGround);
                                                   if(_loc9_)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         if(!(_loc8_ && param1))
                                                         {
                                                            §§push(param1);
                                                            §§push(§;J§.§&!e§);
                                                            if(_loc9_ || this)
                                                            {
                                                               §§push(§§pop() * param2);
                                                            }
                                                            §§pop().§9p§(§§pop());
                                                            §§push(-1);
                                                            if(_loc9_)
                                                            {
                                                               _loc4_ = §§pop();
                                                               addr208:
                                                               if(this.§-P§)
                                                               {
                                                                  if(_loc9_ || this)
                                                                  {
                                                                     this.§-P§ = false;
                                                                     this.§-n§.§!S§();
                                                                  }
                                                                  param1.§97§(§@T§.§"!=§);
                                                                  if(_loc9_)
                                                                  {
                                                                     this.mSardineCanAdded = false;
                                                                  }
                                                                  addr256:
                                                                  §§push(param1.§0!E§);
                                                                  if(!(_loc8_ && param1))
                                                                  {
                                                                     §§pop().§+!O§ = true;
                                                                     addr252:
                                                                     §§push(param1.§0!E§);
                                                                  }
                                                                  §§pop().§]T§();
                                                                  var _loc6_:int = 0;
                                                                  var _loc7_:* = this.§do §;
                                                                  loop0:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§hasnext(_loc7_,_loc6_));
                                                                     if(_loc9_ || _loc3_)
                                                                     {
                                                                        if(!§§pop())
                                                                        {
                                                                           if(!_loc8_)
                                                                           {
                                                                              if(_loc9_)
                                                                              {
                                                                                 this.§+!4§();
                                                                                 if(!_loc8_)
                                                                                 {
                                                                                    addr331:
                                                                                    §§push(this.mMightyEagleTimer > 6000);
                                                                                    if(!(_loc8_ && this))
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          if(_loc9_ || this)
                                                                                          {
                                                                                             addr351:
                                                                                             §§pop();
                                                                                             if(!(_loc8_ && this))
                                                                                             {
                                                                                                §§push(this.isPigsAlive());
                                                                                                if(!_loc8_)
                                                                                                {
                                                                                                   §§push(Boolean(§§pop()));
                                                                                                   if(_loc9_ || param1)
                                                                                                   {
                                                                                                      addr371:
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         if(!(_loc8_ && _loc3_))
                                                                                                         {
                                                                                                            _loc6_ = 0;
                                                                                                            if(_loc9_ || this)
                                                                                                            {
                                                                                                               addr388:
                                                                                                               _loc7_ = this.§do §;
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§hasnext(_loc7_,_loc6_));
                                                                                                                  break loop0;
                                                                                                               }
                                                                                                               addr459:
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      addr486:
                                                                                                      param1.§0!?§(param2,new Point(1,_loc4_ * §;J§.§do§),§;J§.§ !$§);
                                                                                                      §§push(false);
                                                                                                   }
                                                                                                   return §§pop();
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr371);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr371);
                                                                                    }
                                                                                    §§goto(addr351);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr482:
                                                                                    this.§-P§ = this.mMightyEagleHasTouchedGround;
                                                                                 }
                                                                                 §§goto(addr486);
                                                                              }
                                                                           }
                                                                           §§goto(addr388);
                                                                        }
                                                                        else
                                                                        {
                                                                           _loc5_ = §§nextvalue(_loc6_,_loc7_);
                                                                           §§push(Boolean(_loc5_));
                                                                           if(!_loc8_)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 if(!_loc8_)
                                                                                 {
                                                                                    addr276:
                                                                                    §§pop();
                                                                                    if(!_loc9_)
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                    §§push(_loc5_.§%P§());
                                                                                    if(!(_loc8_ && param1))
                                                                                    {
                                                                                       §§push(Boolean(§§pop()));
                                                                                    }
                                                                                 }
                                                                              }
                                                                              if(!§§pop())
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              if(_loc9_)
                                                                              {
                                                                                 §§push(_loc5_.getBody());
                                                                                 if(_loc9_ || this)
                                                                                 {
                                                                                    §§pop().SetAwake(true);
                                                                                    if(_loc8_)
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                    addr305:
                                                                                    §§push(_loc5_.getBody());
                                                                                 }
                                                                                 §§pop().SetLinearVelocity(new b2Vec2(0,-18));
                                                                                 continue;
                                                                              }
                                                                              §§goto(addr305);
                                                                           }
                                                                           §§goto(addr276);
                                                                        }
                                                                     }
                                                                     break;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     if(!§§pop())
                                                                     {
                                                                        §§goto(addr388);
                                                                     }
                                                                     else
                                                                     {
                                                                        _loc5_ = §§nextvalue(_loc6_,_loc7_);
                                                                        §§push(Boolean(_loc5_));
                                                                        if(_loc9_ || param2)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              if(_loc9_ || _loc3_)
                                                                              {
                                                                                 addr417:
                                                                                 §§pop();
                                                                                 if(!(_loc9_ || this))
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 §§push(_loc5_.§%P§());
                                                                                 if(_loc9_ || this)
                                                                                 {
                                                                                    §§push(Boolean(§§pop()));
                                                                                 }
                                                                              }
                                                                           }
                                                                           if(§§pop())
                                                                           {
                                                                              if(_loc9_ || param1)
                                                                              {
                                                                                 §§push(_loc5_);
                                                                                 §§push(_loc5_.§1!s§);
                                                                                 if(!(_loc8_ && _loc3_))
                                                                                 {
                                                                                    §§push(§§pop() * 2);
                                                                                 }
                                                                                 §§pop().applyDamage(§§pop(),true,true,true);
                                                                              }
                                                                           }
                                                                           continue;
                                                                        }
                                                                        §§goto(addr417);
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr331);
                                                            }
                                                            §§goto(addr256);
                                                         }
                                                         §§goto(addr252);
                                                      }
                                                      else
                                                      {
                                                         this.mMightyEagleHasTouchedGround = param1.getBody().GetPosition().y >= -5.5;
                                                      }
                                                      §§goto(addr482);
                                                   }
                                                   §§goto(addr208);
                                                }
                                                §§goto(addr163);
                                                §§push(§§pop() + §§pop());
                                             }
                                             §§goto(addr156);
                                          }
                                          §§goto(addr163);
                                       }
                                       §§goto(addr134);
                                    }
                                    §§goto(addr140);
                                 }
                                 §§goto(addr120);
                              }
                           }
                           §§goto(addr163);
                        }
                        §§goto(addr66);
                     }
                  }
               }
            }
            §§goto(addr58);
         }
         §§goto(addr66);
      }
      
      private function §0!d§() : void
      {
         var _loc20_:Boolean = false;
         var _loc21_:Boolean = true;
         var _loc1_:§'T§ = null;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc6_:§<!3§ = null;
         var _loc7_:* = 0;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc12_:* = NaN;
         var _loc13_:* = NaN;
         var _loc14_:* = NaN;
         var _loc15_:* = NaN;
         var _loc16_:* = NaN;
         var _loc17_:* = NaN;
         loop0:
         while(this.§5O§.length > 0)
         {
            _loc1_ = this.§5O§.shift();
            if(_loc21_ || _loc1_)
            {
               §§push(_loc1_.§>!d§);
               if(!(_loc20_ && _loc3_))
               {
                  §§push(Number(§§pop()));
                  if(_loc21_ || _loc1_)
                  {
                     _loc2_ = §§pop();
                     §§push(Number(_loc1_.x));
                     if(_loc21_ || _loc2_)
                     {
                        _loc3_ = §§pop();
                        §§push(Number(_loc1_.y));
                        if(_loc21_ || _loc2_)
                        {
                           _loc4_ = §§pop();
                           if(!_loc21_)
                           {
                              continue;
                           }
                           addr111:
                           §§push(Number(_loc1_.damage));
                           if(!(_loc20_ && _loc1_))
                           {
                              _loc5_ = §§pop();
                              §§push(0);
                              if(_loc21_)
                              {
                                 var _loc18_:* = §§pop();
                                 if(_loc21_)
                                 {
                                    for each(_loc6_ in this.§do §)
                                    {
                                       §§push(_loc6_.getBody());
                                       if(!(_loc20_ && this))
                                       {
                                          §§push(§§pop().GetPosition());
                                          if(!_loc20_)
                                          {
                                             §§push(§§pop().x);
                                             §§push(_loc3_);
                                             if(!_loc20_)
                                             {
                                                §§push(§§pop() - §§pop());
                                                if(!(_loc20_ && _loc3_))
                                                {
                                                   §§push(Number(§§pop()));
                                                   if(_loc21_ || _loc2_)
                                                   {
                                                      _loc8_ = §§pop();
                                                      §§push(_loc6_.getBody());
                                                      if(!(_loc20_ && _loc3_))
                                                      {
                                                         addr180:
                                                         §§push(§§pop().GetPosition().y);
                                                         if(!_loc20_)
                                                         {
                                                            §§push(_loc4_);
                                                            if(!(_loc20_ && _loc2_))
                                                            {
                                                               §§push(Number(§§pop() - §§pop()));
                                                               if(_loc21_)
                                                               {
                                                                  _loc9_ = §§pop();
                                                                  if(_loc21_)
                                                                  {
                                                                     §§push(Number(Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_)));
                                                                     §§push(Number(Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_)));
                                                                     if(_loc21_)
                                                                     {
                                                                        _loc10_ = §§pop();
                                                                        §§push(_loc1_.§>!d§);
                                                                        if(!(_loc20_ && _loc3_))
                                                                        {
                                                                           if(§§pop() <= §§pop())
                                                                           {
                                                                              addr224:
                                                                              §§push(Number(_loc1_.push));
                                                                              if(!(_loc20_ && _loc2_))
                                                                              {
                                                                                 addr232:
                                                                                 _loc11_ = §§pop();
                                                                                 §§push(_loc10_);
                                                                                 §§push(1);
                                                                                 if(!(_loc20_ && _loc3_))
                                                                                 {
                                                                                    if(§§pop() > §§pop())
                                                                                    {
                                                                                       §§push(_loc11_);
                                                                                       if(!(_loc20_ && this))
                                                                                       {
                                                                                          addr252:
                                                                                          §§push(§§pop() / _loc10_);
                                                                                          if(!(_loc20_ && _loc1_))
                                                                                          {
                                                                                             §§push(Number(§§pop()));
                                                                                             if(!(_loc20_ && _loc2_))
                                                                                             {
                                                                                                _loc11_ = §§pop();
                                                                                                addr269:
                                                                                                §§push(_loc10_);
                                                                                                §§push(0);
                                                                                                if(_loc21_)
                                                                                                {
                                                                                                   if(§§pop() > §§pop())
                                                                                                   {
                                                                                                      §§push(_loc11_);
                                                                                                      if(!_loc20_)
                                                                                                      {
                                                                                                         addr277:
                                                                                                         §§push(_loc8_);
                                                                                                         if(!_loc20_)
                                                                                                         {
                                                                                                            addr280:
                                                                                                            §§push(_loc10_);
                                                                                                            if(!(_loc20_ && _loc1_))
                                                                                                            {
                                                                                                               §§push(§§pop() * (§§pop() / §§pop()));
                                                                                                               if(_loc21_ || _loc1_)
                                                                                                               {
                                                                                                                  §§push(Number(§§pop()));
                                                                                                                  if(!_loc20_)
                                                                                                                  {
                                                                                                                     _loc12_ = §§pop();
                                                                                                                     §§push(_loc11_);
                                                                                                                     §§push(_loc9_);
                                                                                                                     if(!_loc20_)
                                                                                                                     {
                                                                                                                        addr316:
                                                                                                                        addr315:
                                                                                                                        §§push(§§pop() / _loc10_);
                                                                                                                        if(_loc20_ && _loc3_)
                                                                                                                        {
                                                                                                                        }
                                                                                                                        addr386:
                                                                                                                        §§push(§§pop() / §§pop());
                                                                                                                        if(_loc21_)
                                                                                                                        {
                                                                                                                           addr389:
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                        }
                                                                                                                        _loc14_ = §§pop();
                                                                                                                        if(!(_loc20_ && _loc2_))
                                                                                                                        {
                                                                                                                           addr398:
                                                                                                                           _loc6_.applyDamage(_loc14_,false,false,false,true);
                                                                                                                        }
                                                                                                                        continue;
                                                                                                                     }
                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                     if(!_loc20_)
                                                                                                                     {
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                        if(_loc21_ || this)
                                                                                                                        {
                                                                                                                           _loc13_ = §§pop();
                                                                                                                           if(_loc21_ || _loc2_)
                                                                                                                           {
                                                                                                                              addr345:
                                                                                                                              _loc6_.getBody().ApplyImpulse(new b2Vec2(_loc12_,_loc13_),new b2Vec2(_loc3_,_loc4_));
                                                                                                                              addr354:
                                                                                                                              §§push(_loc10_);
                                                                                                                              if(!(_loc20_ && _loc3_))
                                                                                                                              {
                                                                                                                                 addr362:
                                                                                                                                 if(§§pop() > _loc1_.§while§)
                                                                                                                                 {
                                                                                                                                    continue;
                                                                                                                                 }
                                                                                                                                 if(!(_loc21_ || _loc1_))
                                                                                                                                 {
                                                                                                                                    continue;
                                                                                                                                 }
                                                                                                                                 addr373:
                                                                                                                                 §§push(Number(_loc5_));
                                                                                                                                 if(_loc21_)
                                                                                                                                 {
                                                                                                                                    _loc14_ = §§pop();
                                                                                                                                    if(!_loc20_)
                                                                                                                                    {
                                                                                                                                       addr380:
                                                                                                                                       if(_loc10_ > 1)
                                                                                                                                       {
                                                                                                                                       }
                                                                                                                                       §§goto(addr398);
                                                                                                                                    }
                                                                                                                                    §§push(_loc14_);
                                                                                                                                    if(!_loc21_)
                                                                                                                                    {
                                                                                                                                    }
                                                                                                                                    §§goto(addr389);
                                                                                                                                 }
                                                                                                                                 §§goto(addr380);
                                                                                                                              }
                                                                                                                              §§goto(addr373);
                                                                                                                           }
                                                                                                                           §§goto(addr354);
                                                                                                                        }
                                                                                                                        §§goto(addr373);
                                                                                                                     }
                                                                                                                     §§goto(addr362);
                                                                                                                  }
                                                                                                                  §§goto(addr386);
                                                                                                                  §§push(_loc10_);
                                                                                                               }
                                                                                                               §§goto(addr362);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr316);
                                                                                                      }
                                                                                                      §§goto(addr362);
                                                                                                   }
                                                                                                   §§goto(addr354);
                                                                                                }
                                                                                                §§goto(addr380);
                                                                                             }
                                                                                             §§goto(addr373);
                                                                                          }
                                                                                          §§goto(addr362);
                                                                                       }
                                                                                       §§goto(addr380);
                                                                                    }
                                                                                    §§goto(addr269);
                                                                                 }
                                                                                 §§goto(addr380);
                                                                              }
                                                                              §§goto(addr277);
                                                                           }
                                                                           §§goto(addr354);
                                                                        }
                                                                        §§goto(addr252);
                                                                     }
                                                                     §§goto(addr280);
                                                                  }
                                                                  §§goto(addr398);
                                                               }
                                                               §§goto(addr389);
                                                            }
                                                            §§goto(addr252);
                                                         }
                                                         §§goto(addr232);
                                                      }
                                                      §§goto(addr345);
                                                   }
                                                   §§goto(addr252);
                                                }
                                                §§goto(addr224);
                                             }
                                             §§goto(addr315);
                                          }
                                       }
                                       §§goto(addr180);
                                    }
                                 }
                                 §§push(this.§-n§);
                                 if(_loc21_)
                                 {
                                    §§push(§§pop().particles);
                                    if(_loc21_)
                                    {
                                       §§push(this.§?=§(_loc1_.type));
                                       if(_loc21_ || _loc1_)
                                       {
                                          §§push(§<!r§.§1N§);
                                          if(_loc21_ || this)
                                          {
                                             §§push(§!r§.§0!_§);
                                             if(_loc21_)
                                             {
                                                §§push(_loc3_);
                                                if(_loc21_ || _loc3_)
                                                {
                                                   §§push(_loc4_);
                                                   if(!_loc20_)
                                                   {
                                                      §§pop().§1&§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),600,"",§!r§.§4Z§,0,0,0,0,1,20,true);
                                                      §§push(30);
                                                      if(!(_loc20_ && _loc2_))
                                                      {
                                                         _loc7_ = §§pop();
                                                         if(_loc21_ || this)
                                                         {
                                                            loop7:
                                                            while(true)
                                                            {
                                                               §§push(_loc7_);
                                                               §§push(150);
                                                               addr615:
                                                               loop4:
                                                               while(true)
                                                               {
                                                                  if(§§pop() >= §§pop())
                                                                  {
                                                                     continue loop0;
                                                                  }
                                                                  §§push(0.75);
                                                                  §§push(_loc2_);
                                                                  if(_loc21_ || _loc2_)
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     while(true)
                                                                     {
                                                                        §§push(Math.random() * _loc2_);
                                                                     }
                                                                     addr491:
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() + §§pop());
                                                                     if(_loc21_)
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                        if(!_loc20_)
                                                                        {
                                                                           addr501:
                                                                           while(true)
                                                                           {
                                                                              _loc15_ = §§pop();
                                                                              if(_loc20_)
                                                                              {
                                                                                 continue loop7;
                                                                              }
                                                                              §§push(1250);
                                                                              if(_loc21_)
                                                                              {
                                                                                 §§push(Math.random() * 750);
                                                                                 if(!(_loc20_ && _loc1_))
                                                                                 {
                                                                                    §§push(Number(§§pop() + §§pop()));
                                                                                    if(_loc21_)
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          _loc16_ = §§pop();
                                                                                          if(_loc21_)
                                                                                          {
                                                                                             addr525:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc7_);
                                                                                                addr526:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(180);
                                                                                                   if(!_loc20_)
                                                                                                   {
                                                                                                      §§push(§§pop() / Math.PI);
                                                                                                      loop17:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop() / §§pop());
                                                                                                         addr533:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(Number(§§pop()));
                                                                                                            if(_loc21_ || _loc3_)
                                                                                                            {
                                                                                                               _loc17_ = §§pop();
                                                                                                               break loop4;
                                                                                                            }
                                                                                                            addr604:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(int(§§pop()));
                                                                                                               addr605:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  _loc7_ = §§pop();
                                                                                                                  if(!(_loc20_ && this))
                                                                                                                  {
                                                                                                                     continue loop7;
                                                                                                                  }
                                                                                                                  continue loop0;
                                                                                                               }
                                                                                                            }
                                                                                                            continue loop17;
                                                                                                         }
                                                                                                      }
                                                                                                      addr532:
                                                                                                   }
                                                                                                   addr603:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§goto(addr604);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             addr525:
                                                                                          }
                                                                                          break loop4;
                                                                                       }
                                                                                       addr522:
                                                                                    }
                                                                                    §§goto(addr604);
                                                                                 }
                                                                                 §§goto(addr532);
                                                                              }
                                                                              §§goto(addr605);
                                                                           }
                                                                           addr501:
                                                                        }
                                                                        §§goto(addr522);
                                                                     }
                                                                     §§goto(addr501);
                                                                  }
                                                                  continue loop7;
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(this.§-n§);
                                                                  addr544:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop().particles);
                                                                     addr545:
                                                                     while(true)
                                                                     {
                                                                        §§push(§!r§.§3!?§);
                                                                        addr547:
                                                                        while(true)
                                                                        {
                                                                           §§push(§<!r§.§1N§);
                                                                           addr549:
                                                                           while(true)
                                                                           {
                                                                              §§push(§!r§.§^!F§);
                                                                              addr551:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc3_);
                                                                                 addr552:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc4_);
                                                                                    addr553:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc16_);
                                                                                       §§push("");
                                                                                       §§push(§!r§.§4Z§);
                                                                                       §§push(_loc15_);
                                                                                       if(_loc21_ || _loc1_)
                                                                                       {
                                                                                          §§push(§§pop() * Math.cos(_loc17_));
                                                                                       }
                                                                                       §§push(_loc15_);
                                                                                       if(!_loc20_)
                                                                                       {
                                                                                          §§push(-§§pop());
                                                                                          if(!_loc20_)
                                                                                          {
                                                                                             addr575:
                                                                                             §§push(§§pop() * Math.sin(_loc17_));
                                                                                          }
                                                                                          §§pop().§1&§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),20,0);
                                                                                          if(_loc20_)
                                                                                          {
                                                                                             continue loop0;
                                                                                          }
                                                                                          §§push(_loc7_);
                                                                                          §§push(5);
                                                                                          if(_loc20_ && this)
                                                                                          {
                                                                                             §§goto(addr615);
                                                                                          }
                                                                                          §§goto(addr603);
                                                                                       }
                                                                                       §§goto(addr575);
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
                                                         §§goto(addr525);
                                                      }
                                                      §§goto(addr605);
                                                   }
                                                   §§goto(addr553);
                                                }
                                                §§goto(addr552);
                                             }
                                             §§goto(addr551);
                                          }
                                          §§goto(addr549);
                                       }
                                       §§goto(addr547);
                                    }
                                    §§goto(addr545);
                                 }
                                 §§goto(addr544);
                              }
                              §§goto(addr526);
                           }
                           §§goto(addr491);
                        }
                     }
                     §§goto(addr533);
                  }
                  §§goto(addr111);
               }
               §§goto(addr501);
            }
            §§goto(addr525);
         }
      }
      
      protected function §?=§(param1:int) : String
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
         return §!r§.§#!"§;
      }
      
      public function §5<§(param1:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:§<!3§ = null;
         var _loc3_:* = int(this.§do §.length - 1);
         for(; _loc3_ >= 0; §§push(_loc3_),if(_loc5_)
         {
            §§push(§§pop() - 1);
         },_loc3_ = §§pop())
         {
            _loc2_ = this.§do §[_loc3_];
            §§push(_loc2_.§4!t§());
            if(_loc5_ || param1)
            {
               if(§§pop())
               {
                  §§push(this.§ !R§(_loc2_,param1));
                  if(_loc5_)
                  {
                     if(§§pop())
                     {
                        if(!_loc5_)
                        {
                           addr160:
                           continue;
                        }
                        this.§2p§(_loc3_,false,false,false);
                     }
                     continue;
                  }
                  addr102:
                  if(§§pop())
                  {
                     if(_loc4_)
                     {
                        continue;
                     }
                     _loc2_.§97§(§@T§.§9A§);
                     if(_loc5_ || param1)
                     {
                        this.§2p§(_loc3_,false,false,false);
                        if(!_loc4_)
                        {
                           continue;
                        }
                        addr138:
                        _loc2_.§97§(§@T§.§9A§);
                        this.§2p§(_loc3_,false,true,true);
                        if(_loc4_)
                        {
                           continue;
                        }
                        §§goto(addr160);
                     }
                  }
                  else
                  {
                     §§push(_loc2_.isReadyToBeRemoved(param1));
                     if(_loc5_)
                     {
                        addr130:
                        if(§§pop())
                        {
                           if(_loc4_ && this)
                           {
                              addr166:
                              _loc2_.update(param1);
                              continue;
                           }
                           §§goto(addr138);
                        }
                        else
                        {
                           §§push(_loc2_.§;L§());
                        }
                        §§goto(addr166);
                     }
                     if(!§§pop())
                     {
                        continue;
                     }
                     if(_loc4_)
                     {
                        continue;
                     }
                  }
                  §§goto(addr166);
                  §§goto(addr160);
               }
               else
               {
                  §§push(_loc2_.§='§());
                  if(_loc5_ || this)
                  {
                     addr69:
                     if(§§pop())
                     {
                        if(!(_loc4_ && _loc3_))
                        {
                           this.§]9§(_loc2_,param1);
                        }
                        continue;
                     }
                     §§push(this.§+!Z§(_loc2_));
                     if(_loc5_ || _loc3_)
                     {
                        §§goto(addr102);
                     }
                  }
               }
               §§goto(addr130);
            }
            §§goto(addr69);
         }
         if(!(_loc4_ && _loc3_))
         {
            this.§0!d§();
         }
      }
      
      private function §+!4§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§1M§ = null;
         for each(_loc1_ in this.§2^§)
         {
            if(!_loc5_)
            {
               this.§-n§.§[!U§.§&4§.§;!S§(_loc1_.§0i§);
            }
         }
      }
      
      public function §,4§() : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§<!3§ = null;
         var _loc1_:int = 0;
         while(true)
         {
            if(_loc1_ >= this.§do §.length)
            {
               return false;
            }
            _loc2_ = this.§do §[_loc1_];
            if(!_loc4_)
            {
               addr65:
               break;
            }
            §§push(_loc2_.explode());
            if(_loc3_)
            {
               return §§pop();
            }
            if(§§pop())
            {
               if(!(_loc3_ && _loc1_))
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
      
      public function §+!Z§(param1:§<!3§) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            §§push(Boolean(param1));
            §§push(Boolean(param1));
            if(_loc2_ || this)
            {
               if(§§pop())
               {
                  §§pop();
                  if(!(_loc3_ && this))
                  {
                     §§push(Boolean(param1.§9U§.§2<§() != §`4§.§4A§));
                     if(_loc2_ || param1)
                     {
                        addr69:
                        if(§§pop())
                        {
                           addr71:
                           §§pop();
                           if(!(_loc3_ && _loc2_))
                           {
                              addr102:
                              if(this.§-n§.borders.§&!L§(param1.getBody().GetPosition().x,param1.getBody().GetPosition().y))
                              {
                                 if(_loc2_ || _loc2_)
                                 {
                                    addr110:
                                    §§push(true);
                                    if(_loc2_)
                                    {
                                       return §§pop();
                                    }
                                 }
                                 else
                                 {
                                    addr114:
                                    §§push(false);
                                 }
                                 return §§pop();
                              }
                              §§goto(addr114);
                           }
                           §§goto(addr110);
                        }
                        §§goto(addr102);
                     }
                     §§goto(addr71);
                  }
                  §§goto(addr114);
               }
            }
            §§goto(addr69);
         }
         §§goto(addr102);
      }
      
      public function §2p§(param1:int, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc6_:§1M§ = null;
         var _loc7_:§@!%§ = null;
         if(_loc12_ || this)
         {
            if(param1 < 0)
            {
               if(_loc12_ || param3)
               {
                  §§goto(addr39);
               }
            }
            var _loc5_:§<!3§;
            §§push((_loc5_ = this.§do §[param1]).§%P§());
            if(_loc12_)
            {
               if(§§pop())
               {
                  var _loc8_:*;
                  §§push((_loc8_ = this).§99§);
                  if(!(_loc13_ && param3))
                  {
                     §§push(§§pop() + 1);
                  }
                  var _loc9_:* = §§pop();
                  if(_loc12_)
                  {
                     _loc8_.§99§ = _loc9_;
                  }
                  if(_loc12_ || param3)
                  {
                  }
                  addr116:
                  if(_loc5_ == this.§-n§.activeObject)
                  {
                     if(_loc12_)
                     {
                        §§push(this.§-n§);
                        if(!(_loc13_ && param1))
                        {
                           §§pop().activeObject = null;
                           addr134:
                           §§push(param2);
                           if(!_loc13_)
                           {
                              if(§§pop())
                              {
                                 if(!_loc13_)
                                 {
                                    addr142:
                                    §§push(this.§-n§);
                                    §§push(_loc5_.§9U§.score);
                                    §§push(§ !p§.§8A§);
                                    §§push(true);
                                    §§push(_loc5_.getBody().GetPosition().x);
                                    §§push(_loc5_.getBody().GetPosition().y);
                                    if(_loc12_)
                                    {
                                       §§push(3);
                                       if(!_loc13_)
                                       {
                                          addr162:
                                          §§push(§§pop() - §§pop());
                                          §§push(§!r§.§&M§(_loc5_.§>p§));
                                       }
                                       §§pop().addScore(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
                                       addr167:
                                       §§push(param3);
                                       if(!_loc13_)
                                       {
                                          addr170:
                                          if(§§pop())
                                          {
                                             addr171:
                                             _loc5_.addDestructionParticles(this.§-n§.particles);
                                          }
                                          §§push(param4);
                                          if(_loc12_ || param1)
                                          {
                                             addr184:
                                             if(§§pop())
                                             {
                                                addr185:
                                                this.checkExplosions(_loc5_);
                                             }
                                             addr190:
                                             if(_loc5_.isTexture())
                                             {
                                                if(_loc12_ || param1)
                                                {
                                                   addr198:
                                                   this.§ c§(_loc5_.sprite);
                                                   if(_loc12_)
                                                   {
                                                      addr204:
                                                      this.§[!;§(_loc5_);
                                                   }
                                                   _loc8_ = 0;
                                                   _loc9_ = this.§2^§;
                                                   loop0:
                                                   while(true)
                                                   {
                                                      §§push(§§hasnext(_loc9_,_loc8_));
                                                      if(!(_loc13_ && param1))
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            if(!(_loc13_ && param3))
                                                            {
                                                               if(_loc12_ || this)
                                                               {
                                                                  if(!_loc13_)
                                                                  {
                                                                     _loc8_ = 0;
                                                                     if(!(_loc13_ && param3))
                                                                     {
                                                                        _loc9_ = this.§;!7§;
                                                                        while(true)
                                                                        {
                                                                           §§push(§§hasnext(_loc9_,_loc8_));
                                                                           break loop0;
                                                                        }
                                                                        addr443:
                                                                        if(_loc12_)
                                                                        {
                                                                           _loc5_.dispose();
                                                                        }
                                                                        addr442:
                                                                        addr430:
                                                                     }
                                                                     §§goto(addr443);
                                                                  }
                                                                  _loc5_ = null;
                                                                  if(_loc12_ || param3)
                                                                  {
                                                                     this.§do §[param1] = null;
                                                                     if(!_loc13_)
                                                                     {
                                                                        addr465:
                                                                        this.§do §.splice(param1,1);
                                                                     }
                                                                     return;
                                                                  }
                                                                  §§goto(addr465);
                                                               }
                                                               §§goto(addr443);
                                                            }
                                                            §§goto(addr442);
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
                                                                  if(!_loc13_)
                                                                  {
                                                                     _loc10_.index1 = _loc11_;
                                                                  }
                                                                  if(!_loc13_)
                                                                  {
                                                                     addr251:
                                                                     if(_loc6_.index2 < param1)
                                                                     {
                                                                        continue;
                                                                     }
                                                                     if(!_loc12_)
                                                                     {
                                                                        continue;
                                                                     }
                                                                  }
                                                                  _loc11_ = (_loc10_ = _loc6_).index2 - 1;
                                                                  if(_loc12_)
                                                                  {
                                                                     _loc10_.index2 = _loc11_;
                                                                  }
                                                                  continue;
                                                               }
                                                            }
                                                            §§goto(addr251);
                                                         }
                                                      }
                                                      break;
                                                   }
                                                   while(true)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         §§goto(addr443);
                                                      }
                                                      else
                                                      {
                                                         _loc7_ = §§nextvalue(_loc8_,_loc9_);
                                                         §§push(_loc7_.id1);
                                                         if(_loc12_ || param1)
                                                         {
                                                            §§push(param1);
                                                            if(_loc12_ || this)
                                                            {
                                                               if(§§pop() == §§pop())
                                                               {
                                                                  if(_loc12_ || param2)
                                                                  {
                                                                     _loc7_.§[§ = true;
                                                                     if(_loc12_ || param3)
                                                                     {
                                                                        addr352:
                                                                        §§push(_loc7_.id1);
                                                                        if(_loc12_ || param2)
                                                                        {
                                                                           §§push(param1);
                                                                           if(_loc12_)
                                                                           {
                                                                              if(§§pop() >= §§pop())
                                                                              {
                                                                                 if(_loc12_ || param1)
                                                                                 {
                                                                                    addr372:
                                                                                    §§push((_loc10_ = _loc7_).id1);
                                                                                    if(!(_loc13_ && param1))
                                                                                    {
                                                                                       §§push(§§pop() - 1);
                                                                                    }
                                                                                    _loc11_ = §§pop();
                                                                                    if(!(_loc13_ && param1))
                                                                                    {
                                                                                       _loc10_.id1 = _loc11_;
                                                                                    }
                                                                                    if(_loc12_)
                                                                                    {
                                                                                       addr399:
                                                                                       if(_loc7_.id2 < param1)
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       if(!(_loc12_ || this))
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§push((_loc10_ = _loc7_).id2);
                                                                                 if(!_loc13_)
                                                                                 {
                                                                                    §§push(§§pop() - 1);
                                                                                 }
                                                                                 _loc11_ = §§pop();
                                                                                 if(_loc12_ || param3)
                                                                                 {
                                                                                    _loc10_.id2 = _loc11_;
                                                                                 }
                                                                                 continue;
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr399);
                                                                     }
                                                                     §§goto(addr372);
                                                                  }
                                                               }
                                                               §§goto(addr352);
                                                            }
                                                         }
                                                         §§goto(addr399);
                                                      }
                                                   }
                                                }
                                                §§goto(addr204);
                                             }
                                             §§goto(addr198);
                                          }
                                       }
                                       §§goto(addr190);
                                    }
                                    §§goto(addr162);
                                 }
                                 §§goto(addr185);
                              }
                              §§goto(addr167);
                           }
                           §§goto(addr190);
                        }
                        §§goto(addr142);
                     }
                     §§goto(addr171);
                  }
                  §§goto(addr134);
               }
               else
               {
                  §§push(_loc5_.§;L§());
                  if(_loc12_)
                  {
                     if(§§pop())
                     {
                        if(!(_loc13_ && param2))
                        {
                           §§push((_loc8_ = this).§>L§);
                           if(!(_loc13_ && this))
                           {
                              §§push(§§pop() - 1);
                           }
                           _loc9_ = §§pop();
                           if(!(_loc13_ && param3))
                           {
                              _loc8_.§>L§ = _loc9_;
                           }
                           §§goto(addr116);
                        }
                        §§goto(addr134);
                     }
                     §§goto(addr116);
                  }
               }
               §§goto(addr184);
            }
            §§goto(addr170);
         }
         addr39:
      }
      
      private function § c§(param1:Sprite) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(this.§`H§);
         if(_loc2_)
         {
            if(§§pop().contains(param1))
            {
               if(!(_loc3_ && _loc2_))
               {
                  §§goto(addr32);
               }
            }
            §§push(this.§0G§);
            if(_loc2_ || param1)
            {
               if(!§§pop().contains(param1))
               {
                  §§push(this.§6!e§);
                  if(!_loc3_)
                  {
                     if(§§pop().contains(param1))
                     {
                        if(_loc2_ || _loc3_)
                        {
                           §§goto(addr88);
                        }
                     }
                     §§push(this.§?g§);
                     if(_loc2_)
                     {
                        if(§§pop().contains(param1))
                        {
                           §§push(this.§?g§);
                        }
                        else
                        {
                           return;
                        }
                     }
                     §§pop().removeChild(param1);
                     return;
                  }
                  addr88:
                  this.§6!e§.removeChild(param1);
                  return;
               }
               §§push(this.§0G§);
            }
            §§pop().removeChild(param1);
            return;
         }
         addr32:
         this.§`H§.removeChild(param1);
      }
      
      protected function checkExplosions(param1:§<!3§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(param1.§^!a§());
            if(!(_loc3_ && param1))
            {
               §§push(§§pop().toUpperCase() == "WHITE_EGG");
               if(_loc2_)
               {
                  if(!§§pop())
                  {
                     if(_loc2_)
                     {
                        §§pop();
                        if(_loc2_ || param1)
                        {
                           §§push(param1.§`x§());
                           if(!_loc2_)
                           {
                           }
                           §§goto(addr59);
                        }
                        §§goto(addr85);
                     }
                  }
                  addr59:
                  §§goto(addr58);
               }
               addr58:
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     addr64:
                     if(param1.§>p§.toUpperCase() == §7!7§.§6!T§)
                     {
                        if(!(_loc3_ && _loc2_))
                        {
                           addr85:
                           this.addExplosions(§'T§.§8&§,param1.getBody().GetPosition().x,param1.getBody().GetPosition().y);
                           if(!_loc3_)
                           {
                              addr99:
                           }
                        }
                        §§goto(addr99);
                     }
                     else
                     {
                        this.addExplosions(§'T§.§]!A§,param1.getBody().GetPosition().x,param1.getBody().GetPosition().y);
                     }
                  }
                  §§goto(addr99);
               }
               return;
            }
            §§goto(addr64);
         }
         §§goto(addr99);
      }
      
      public function removeObject(param1:Object, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            this.§2p§(this.§do §.indexOf(param1),param2,param3,param4);
         }
      }
      
      public function §[t§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
         {
            §§push(this.§]!,§);
            if(!(_loc3_ && param1))
            {
               §§push(param1);
               if(!(_loc3_ && _loc3_))
               {
                  §§push(-§§pop());
                  if(!(_loc3_ && param2))
                  {
                     §§pop().x = §§pop();
                     if(!(_loc3_ && param2))
                     {
                        addr79:
                        §§push(this.§]!,§);
                        §§push(param2);
                        if(!_loc3_)
                        {
                           addr82:
                           §§push(-§§pop());
                        }
                        §§pop().y = §§pop();
                     }
                     return;
                  }
               }
               §§goto(addr82);
            }
         }
         §§goto(addr79);
      }
      
      public function isPigsAlive(param1:Boolean = false) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§<!3§ = null;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= this.§do §.length)
            {
               return false;
            }
            _loc3_ = this.§do §[_loc2_] as §<!3§;
            if(!_loc4_)
            {
               continue;
            }
            §§push(Boolean(_loc3_));
            if(_loc4_)
            {
               §§push(§§pop());
               if(!_loc5_)
               {
                  if(§§pop())
                  {
                     §§pop();
                     §§push(_loc3_.§%P§());
                     if(_loc4_ || this)
                     {
                        addr54:
                        §§push(Boolean(§§pop()));
                        §§push(Boolean(§§pop()));
                        if(_loc4_)
                        {
                           §§goto(addr57);
                        }
                        §§goto(addr118);
                     }
                     §§goto(addr115);
                  }
                  §§goto(addr54);
               }
               addr57:
               if(§§pop())
               {
                  if(_loc4_ || _loc3_)
                  {
                     §§pop();
                     if(!_loc4_)
                     {
                        continue;
                     }
                     §§push(_loc3_.§!!>§);
                     if(!(_loc5_ && _loc2_))
                     {
                        §§push(0);
                        if(_loc4_)
                        {
                           §§goto(addr91);
                        }
                        §§goto(addr169);
                     }
                     §§goto(addr134);
                  }
                  §§goto(addr154);
               }
               addr91:
               if(§§pop() > §§pop())
               {
                  if(_loc4_ || _loc2_)
                  {
                     §§push(param1);
                     if(_loc4_ || _loc3_)
                     {
                        §§push(!§§pop());
                        if(_loc4_ || this)
                        {
                           addr115:
                           §§push(§§pop());
                           if(!_loc5_)
                           {
                              addr118:
                              if(!§§pop())
                              {
                                 §§pop();
                                 if(!_loc5_)
                                 {
                                    §§push(_loc3_.§0!E§);
                                    if(!_loc5_)
                                    {
                                       §§push(§§pop().mTryToBlink);
                                       if(!(_loc5_ && this))
                                       {
                                          addr134:
                                          §§push(0);
                                          if(!(_loc5_ && this))
                                          {
                                             addr154:
                                             §§push(§§pop() <= §§pop());
                                             if(§§pop() <= §§pop())
                                             {
                                                if(_loc4_ || _loc2_)
                                                {
                                                   §§pop();
                                                   if(!_loc5_)
                                                   {
                                                      addr169:
                                                      addr168:
                                                      addr167:
                                                      addr165:
                                                      §§push(_loc3_.§0!E§.mTryToScream <= 0);
                                                      if(!_loc4_)
                                                      {
                                                         addr174:
                                                      }
                                                      §§goto(addr172);
                                                   }
                                                   break;
                                                }
                                                §§goto(addr174);
                                             }
                                             §§goto(addr172);
                                          }
                                          §§goto(addr169);
                                       }
                                       §§goto(addr168);
                                    }
                                    §§goto(addr167);
                                 }
                                 §§goto(addr165);
                              }
                              addr172:
                              if(§§pop())
                              {
                                 break;
                              }
                              §§goto(addr175);
                           }
                           §§goto(addr154);
                        }
                        §§goto(addr169);
                     }
                     §§goto(addr154);
                  }
               }
               addr175:
               _loc2_++;
               continue;
               return §§pop();
            }
            §§goto(addr172);
         }
         §§goto(addr169);
         §§push(true);
      }
      
      public function getPigCount(param1:Boolean = false) : int
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:§<!3§ = null;
         var _loc2_:int = 0;
         var _loc3_:* = int(this.§do §.length - 1);
         while(true)
         {
            §§push(_loc3_);
            if(!(_loc6_ && _loc2_))
            {
               if(§§pop() < 0)
               {
                  §§push(_loc2_);
                  break;
               }
               §§push(Boolean(_loc4_ = this.§do §[_loc3_] as §<!3§));
               if(_loc5_)
               {
                  §§push(§§pop());
                  if(!(_loc6_ && _loc2_))
                  {
                     if(§§pop())
                     {
                        if(!(_loc6_ && param1))
                        {
                           §§pop();
                           §§push(_loc4_.§%P§());
                        }
                        §§push(Boolean(§§pop()));
                        if(_loc5_ || _loc3_)
                        {
                           addr70:
                           §§push(§§pop());
                           if(!_loc6_)
                           {
                              if(§§pop())
                              {
                                 §§pop();
                                 if(!(_loc6_ && param1))
                                 {
                                    §§push(_loc4_.§!!>§);
                                    if(_loc5_ || _loc2_)
                                    {
                                       §§push(0);
                                       if(_loc5_)
                                       {
                                          addr105:
                                          if(§§pop() > §§pop())
                                          {
                                             §§push(param1);
                                             if(!(_loc6_ && this))
                                             {
                                                §§push(!§§pop());
                                             }
                                             §§push(§§pop());
                                             if(_loc5_)
                                             {
                                                addr118:
                                                if(!§§pop())
                                                {
                                                   if(_loc5_ || this)
                                                   {
                                                      addr126:
                                                      §§pop();
                                                      if(_loc5_ || this)
                                                      {
                                                         §§push(_loc4_.§0!E§);
                                                         if(_loc5_ || _loc2_)
                                                         {
                                                            §§push(§§pop().mTryToBlink);
                                                            if(!_loc6_)
                                                            {
                                                               addr146:
                                                               §§push(0);
                                                               if(_loc5_ || _loc2_)
                                                               {
                                                                  addr156:
                                                                  §§push(§§pop() <= §§pop());
                                                                  if(§§pop() <= §§pop())
                                                                  {
                                                                     if(_loc5_)
                                                                     {
                                                                        §§pop();
                                                                        if(!_loc5_)
                                                                        {
                                                                           continue;
                                                                        }
                                                                        addr174:
                                                                        §§push(_loc4_.§0!E§.mTryToScream);
                                                                     }
                                                                     addr177:
                                                                     if(§§pop())
                                                                     {
                                                                        if(!_loc6_)
                                                                        {
                                                                           addr180:
                                                                           _loc2_++;
                                                                           addr181:
                                                                           §§push(_loc3_);
                                                                           if(!(_loc6_ && _loc2_))
                                                                           {
                                                                              §§push(§§pop() - 1);
                                                                           }
                                                                           _loc3_ = §§pop();
                                                                        }
                                                                        continue;
                                                                     }
                                                                     §§goto(addr181);
                                                                  }
                                                                  §§goto(addr177);
                                                               }
                                                               addr176:
                                                               §§goto(addr177);
                                                               §§push(§§pop() <= §§pop());
                                                            }
                                                            §§goto(addr176);
                                                            §§push(0);
                                                         }
                                                         §§goto(addr174);
                                                      }
                                                      §§goto(addr181);
                                                   }
                                                }
                                                §§goto(addr177);
                                             }
                                             §§goto(addr156);
                                          }
                                          §§goto(addr181);
                                       }
                                       §§goto(addr176);
                                    }
                                    §§goto(addr146);
                                 }
                                 §§goto(addr180);
                              }
                              §§goto(addr105);
                           }
                           §§goto(addr118);
                        }
                        §§goto(addr156);
                     }
                     §§goto(addr70);
                  }
                  §§goto(addr156);
               }
               §§goto(addr126);
            }
            break;
         }
         return §§pop();
      }
      
      public function getBlockCount() : int
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§<!3§ = null;
         var _loc1_:int = 0;
         var _loc3_:int = 0;
         for each(_loc2_ in this.§do §)
         {
            if(!_loc5_)
            {
               §§push(Boolean(_loc2_));
               if(_loc6_ || _loc3_)
               {
                  §§push(§§pop());
                  if(_loc6_ || this)
                  {
                     if(§§pop())
                     {
                        if(!_loc5_)
                        {
                           §§pop();
                           if(!(_loc5_ && _loc1_))
                           {
                              addr79:
                              §§push(Boolean(_loc2_.§;!Z§()));
                              if(!Boolean(_loc2_.§;!Z§()))
                              {
                                 if(!(_loc5_ && this))
                                 {
                                    §§pop();
                                    if(_loc6_ || this)
                                    {
                                       addr108:
                                       if(!_loc2_.§`T§())
                                       {
                                          continue;
                                       }
                                       if(!(_loc6_ || this))
                                       {
                                          continue;
                                       }
                                    }
                                    _loc1_++;
                                    continue;
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr108);
                  }
                  §§goto(addr79);
               }
               §§goto(addr108);
            }
            §§goto(addr79);
         }
         return _loc1_;
      }
      
      public function getStaticCount() : int
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§<!3§ = null;
         var _loc1_:int = 0;
         var _loc3_:int = 0;
         for each(_loc2_ in this.§do §)
         {
            if(_loc6_)
            {
               §§push(Boolean(_loc2_));
               if(_loc6_ || _loc1_)
               {
                  if(§§pop())
                  {
                     if(!(_loc5_ && _loc3_))
                     {
                        §§pop();
                        if(!(_loc5_ && _loc3_))
                        {
                           addr83:
                           §§push(_loc2_.isTexture());
                           if(_loc6_)
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
               }
               §§goto(addr88);
            }
            §§goto(addr83);
         }
         return _loc1_;
      }
      
      public function makePigsSmile(param1:Number = 1) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§<!3§ = null;
         var _loc2_:* = int(this.§do §.length - 1);
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§do §[_loc2_];
            if(!(_loc5_ && this))
            {
               §§push(Boolean(_loc3_));
               if(_loc4_)
               {
                  §§push(§§pop());
                  if(_loc4_ || _loc3_)
                  {
                     if(§§pop())
                     {
                        if(_loc4_)
                        {
                           §§pop();
                           if(_loc4_)
                           {
                              §§push(_loc3_.§%P§());
                              if(!_loc5_)
                              {
                                 §§push(Boolean(§§pop()));
                                 if(_loc4_)
                                 {
                                    addr77:
                                    if(§§pop())
                                    {
                                       if(_loc4_)
                                       {
                                          §§pop();
                                          if(!(_loc5_ && this))
                                          {
                                             addr93:
                                             if(_loc3_.§!!>§ > 0)
                                             {
                                                if(_loc5_ && param1)
                                                {
                                                }
                                                addr132:
                                                §§push(_loc2_);
                                                if(!_loc5_)
                                                {
                                                   §§push(§§pop() - 1);
                                                }
                                                _loc2_ = §§pop();
                                                continue;
                                             }
                                             §§goto(addr132);
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr93);
                              }
                              §§goto(addr77);
                           }
                           §§push(_loc3_.§0!E§);
                           §§push(§6!N§.§0+§);
                           if(!(_loc5_ && _loc2_))
                           {
                              §§push(§§pop() * param1);
                           }
                           §§pop().mTryToScream = §§pop();
                           if(_loc5_ && _loc2_)
                           {
                              continue;
                           }
                           §§goto(addr132);
                        }
                        §§goto(addr93);
                     }
                  }
               }
               §§goto(addr77);
            }
            §§goto(addr132);
         }
      }
      
      public function §9h§() : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§<!3§ = null;
         var _loc1_:int = this.§do §.length - 1;
         while(true)
         {
            if(_loc1_ < 0)
            {
               return false;
            }
            _loc2_ = this.§do §[_loc1_] as §<!3§;
            if(_loc4_)
            {
               §§push(Boolean(_loc2_));
               §§push(Boolean(_loc2_));
               if(_loc4_)
               {
                  if(§§pop())
                  {
                     §§pop();
                     if(_loc4_)
                     {
                        addr58:
                        §§push(Boolean(_loc2_.§;L§()));
                        if(!_loc3_)
                        {
                           addr64:
                           if(§§pop())
                           {
                              §§pop();
                              if(_loc4_)
                              {
                                 addr69:
                                 §§push(_loc2_.§!!>§ > 0);
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    addr90:
                                    if(!§§pop())
                                    {
                                       continue;
                                    }
                                    if(_loc3_ && this)
                                    {
                                       continue;
                                    }
                                 }
                                 break;
                              }
                              §§push(true);
                              break;
                           }
                           §§goto(addr90);
                        }
                        break;
                     }
                     §§goto(addr69);
                  }
               }
               §§goto(addr64);
            }
            §§goto(addr58);
         }
         return §§pop();
      }
      
      public function isWorldAtSleep() : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§<!3§ = null;
         var _loc1_:* = int(this.§do §.length - 1);
         while(true)
         {
            if(_loc1_ < 0)
            {
               return true;
            }
            _loc2_ = this.§do §[_loc1_] as §<!3§;
            §§push(Boolean(_loc2_));
            if(!(_loc4_ && _loc3_))
            {
               §§push(§§pop());
               if(!_loc4_)
               {
                  if(§§pop())
                  {
                     §§pop();
                     if(!(_loc4_ && this))
                     {
                        §§push(_loc2_.§!!>§);
                        if(_loc3_)
                        {
                           §§push(0);
                           if(!_loc4_)
                           {
                              §§push(§§pop() > §§pop());
                              if(_loc3_ || this)
                              {
                                 addr72:
                                 §§push(Boolean(§§pop()));
                                 if(_loc3_)
                                 {
                                    addr76:
                                    §§push(§§pop());
                                    if(_loc3_ || _loc2_)
                                    {
                                       if(§§pop())
                                       {
                                          if(!(_loc4_ && _loc2_))
                                          {
                                             §§pop();
                                             §§push(_loc2_.§&!j§);
                                             if(_loc3_ || this)
                                             {
                                                addr116:
                                                if(§§pop() != §]!@§.§!!3§)
                                                {
                                                   if(!_loc4_)
                                                   {
                                                      addr119:
                                                      §§push(_loc2_.§'c§());
                                                      if(!_loc4_)
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                         if(_loc3_ || _loc2_)
                                                         {
                                                            §§push(§§pop());
                                                            if(_loc3_)
                                                            {
                                                               addr134:
                                                               if(§§pop())
                                                               {
                                                                  addr135:
                                                                  §§pop();
                                                                  §§push(_loc2_.§^!%§());
                                                                  if(!_loc3_)
                                                                  {
                                                                  }
                                                                  addr150:
                                                                  §§push(Boolean(§§pop()));
                                                                  if(Boolean(§§pop()))
                                                                  {
                                                                     if(!(_loc3_ || this))
                                                                     {
                                                                        break;
                                                                     }
                                                                     §§pop();
                                                                     addr175:
                                                                     if(_loc2_.§!!>§ > 0)
                                                                     {
                                                                        if(_loc3_)
                                                                        {
                                                                           §§push(false);
                                                                           break;
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        addr182:
                                                                        §§push(_loc1_);
                                                                        if(!(_loc4_ && _loc1_))
                                                                        {
                                                                           addr190:
                                                                           §§push(§§pop() - 1);
                                                                        }
                                                                        _loc1_ = §§pop();
                                                                     }
                                                                     continue;
                                                                  }
                                                                  §§goto(addr175);
                                                               }
                                                               addr143:
                                                               if(§§pop())
                                                               {
                                                                  addr145:
                                                                  return false;
                                                                  addr144:
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr150);
                                                                  §§push(_loc2_.§;L§());
                                                               }
                                                            }
                                                            §§goto(addr150);
                                                         }
                                                         §§push(!§§pop());
                                                         if(!_loc4_)
                                                         {
                                                            §§goto(addr143);
                                                         }
                                                         §§goto(addr175);
                                                      }
                                                      §§goto(addr143);
                                                   }
                                                   §§goto(addr144);
                                                }
                                                §§goto(addr182);
                                             }
                                             §§goto(addr190);
                                          }
                                          §§goto(addr150);
                                       }
                                       §§goto(addr116);
                                    }
                                    §§goto(addr134);
                                 }
                                 §§goto(addr145);
                              }
                              §§goto(addr135);
                           }
                        }
                        §§goto(addr175);
                     }
                     §§goto(addr119);
                  }
                  §§goto(addr76);
               }
               §§goto(addr135);
            }
            §§goto(addr72);
         }
         return §§pop();
      }
      
      public function §'2§(param1:Boolean = false) : §<!3§
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc5_:* = 0;
         var _loc6_:§<!3§ = null;
         if(!(_loc8_ && _loc3_))
         {
            if(!this.isPigsAlive())
            {
               if(_loc7_ || _loc2_)
               {
                  return null;
               }
            }
         }
         var _loc2_:int = this.§do §.length;
         §§push(1);
         if(!_loc8_)
         {
            §§push(int(§§pop() + Math.random() * this.getPigCount(param1)));
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
               while(true)
               {
                  if(§§pop() >= §§pop())
                  {
                     return null;
                  }
                  §§push(0);
                  if(!(_loc8_ && this))
                  {
                     _loc5_ = §§pop();
                     if(!_loc8_)
                     {
                        while(true)
                        {
                           §§push(_loc5_);
                           if(_loc8_)
                           {
                              continue loop1;
                           }
                           §§push(_loc2_);
                           if(!(_loc7_ || _loc2_))
                           {
                              continue loop2;
                           }
                           if(§§pop() >= §§pop())
                           {
                              if(!(_loc8_ && _loc3_))
                              {
                                 break loop2;
                              }
                           }
                           else
                           {
                              §§push(Boolean(_loc6_ = this.§do §[_loc5_]));
                              if(_loc7_ || this)
                              {
                                 §§push(§§pop());
                                 if(!_loc8_)
                                 {
                                    if(§§pop())
                                    {
                                       if(!_loc8_)
                                       {
                                          §§pop();
                                          §§push(_loc6_.§%P§());
                                          if(!(_loc8_ && this))
                                          {
                                             §§push(Boolean(§§pop()));
                                             if(_loc7_)
                                             {
                                                addr110:
                                                §§push(§§pop());
                                                if(_loc7_ || param1)
                                                {
                                                   addr118:
                                                   if(§§pop())
                                                   {
                                                      if(!_loc8_)
                                                      {
                                                         addr121:
                                                         §§pop();
                                                         if(!_loc8_)
                                                         {
                                                            §§push(_loc6_.§!!>§);
                                                            if(_loc7_ || param1)
                                                            {
                                                               §§push(0);
                                                               if(_loc7_ || this)
                                                               {
                                                                  §§push(§§pop() > §§pop());
                                                                  if(!(_loc8_ && _loc3_))
                                                                  {
                                                                     addr159:
                                                                     if(§§pop())
                                                                     {
                                                                        §§push(param1);
                                                                        if(_loc7_ || _loc3_)
                                                                        {
                                                                           addr169:
                                                                           §§push(!§§pop());
                                                                           §§push(!§§pop());
                                                                           if(!(_loc8_ && param1))
                                                                           {
                                                                              addr177:
                                                                              if(!§§pop())
                                                                              {
                                                                                 if(_loc7_ || this)
                                                                                 {
                                                                                    §§pop();
                                                                                    if(_loc7_)
                                                                                    {
                                                                                       §§push(_loc6_.§0!E§);
                                                                                       if(!(_loc8_ && _loc2_))
                                                                                       {
                                                                                          §§push(§§pop().mTryToBlink);
                                                                                          if(!_loc8_)
                                                                                          {
                                                                                             §§push(0);
                                                                                             if(!(_loc8_ && _loc3_))
                                                                                             {
                                                                                                addr210:
                                                                                                addr209:
                                                                                                addr208:
                                                                                                §§push(§§pop() <= §§pop());
                                                                                                if(§§pop() <= §§pop())
                                                                                                {
                                                                                                   addr211:
                                                                                                   §§pop();
                                                                                                   addr262:
                                                                                                   if(_loc7_ || param1)
                                                                                                   {
                                                                                                      addr222:
                                                                                                      §§push(_loc6_.§0!E§.mTryToScream);
                                                                                                      §§push(0);
                                                                                                   }
                                                                                                   _loc5_++;
                                                                                                   continue;
                                                                                                }
                                                                                                addr224:
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   addr225:
                                                                                                   _loc4_++;
                                                                                                   if(!(_loc7_ || _loc3_))
                                                                                                   {
                                                                                                      continue;
                                                                                                   }
                                                                                                   if(_loc4_ >= _loc3_)
                                                                                                   {
                                                                                                      if(_loc7_ || param1)
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr262);
                                                                                             }
                                                                                             §§goto(addr224);
                                                                                             §§push(§§pop() <= §§pop());
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr222);
                                                                                    }
                                                                                    §§goto(addr225);
                                                                                 }
                                                                                 §§goto(addr211);
                                                                              }
                                                                              §§goto(addr224);
                                                                           }
                                                                           §§goto(addr210);
                                                                        }
                                                                        §§goto(addr169);
                                                                     }
                                                                     §§goto(addr211);
                                                                  }
                                                                  §§goto(addr209);
                                                               }
                                                               §§goto(addr208);
                                                            }
                                                            §§goto(addr222);
                                                         }
                                                         §§goto(addr225);
                                                      }
                                                      §§goto(addr210);
                                                   }
                                                   §§goto(addr159);
                                                }
                                                §§goto(addr177);
                                             }
                                             §§goto(addr169);
                                          }
                                          §§goto(addr121);
                                       }
                                       §§goto(addr210);
                                    }
                                    §§goto(addr110);
                                 }
                                 §§goto(addr118);
                              }
                              §§goto(addr210);
                           }
                        }
                        return _loc6_;
                     }
                     break;
                  }
                  continue loop1;
               }
               continue loop0;
            }
         }
      }
      
      public function §]+§() : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:* = 0;
         var _loc2_:* = int(this.§do §.length - 1);
         loop0:
         while(true)
         {
            §§push(_loc2_);
            if(!(_loc4_ && _loc1_))
            {
               §§push(0);
               if(_loc3_)
               {
                  while(true)
                  {
                     if(§§pop() < §§pop())
                     {
                        if(!(_loc4_ && _loc1_))
                        {
                           §§push(_loc1_);
                           if(_loc3_ || _loc2_)
                           {
                              break loop0;
                           }
                           addr183:
                           _loc1_ = §§pop();
                           break;
                        }
                        break;
                     }
                     §§push(_loc1_);
                     §§push((this.§do §[_loc2_] as §<!3§).§9U§.score);
                     if(_loc4_ && this)
                     {
                        continue;
                     }
                     §§push(§§pop() + §§pop());
                     if(!(_loc4_ && _loc1_))
                     {
                        §§push(int(§§pop()));
                        if(!_loc4_)
                        {
                           _loc1_ = §§pop();
                           if(!_loc4_)
                           {
                              if((this.§do §[_loc2_] as §<!3§).§'c§())
                              {
                                 if(!(_loc3_ || this))
                                 {
                                    continue loop0;
                                 }
                                 §§push(_loc1_);
                                 if(!(_loc4_ && _loc3_))
                                 {
                                    §§push(§7E§.§5X§.getValue());
                                    if(_loc3_)
                                    {
                                       §§push(§§pop() + §§pop() * int((this.§do §[_loc2_] as §<!3§).§1!s§));
                                       if(!(_loc4_ && _loc2_))
                                       {
                                          addr112:
                                          _loc1_ = int(§§pop());
                                          if(_loc3_ || _loc2_)
                                          {
                                             addr121:
                                             §§push(_loc2_);
                                             if(!_loc4_)
                                             {
                                                addr124:
                                                §§push(§§pop() - 1);
                                             }
                                             _loc2_ = §§pop();
                                             if(_loc4_ && _loc2_)
                                             {
                                                break;
                                             }
                                          }
                                          continue loop0;
                                       }
                                    }
                                    else
                                    {
                                       addr174:
                                       §§push(§§pop() + §§pop());
                                    }
                                    §§push(int(§§pop()));
                                    if(_loc3_ || _loc3_)
                                    {
                                       §§goto(addr183);
                                    }
                                    §§goto(addr185);
                                 }
                                 §§goto(addr183);
                              }
                           }
                           §§goto(addr121);
                        }
                        §§goto(addr124);
                     }
                     §§goto(addr112);
                  }
                  addr185:
                  return §§pop();
                  §§push(_loc1_);
               }
               §§goto(addr174);
            }
            break;
         }
         §§goto(addr174);
         §§push(this.§-n§.slingshot.§]+§());
      }
      
      public function §]n§(param1:§<!3§, param2:§<!3§) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §§push(param1.§;L§());
            if(!(_loc3_ && _loc3_))
            {
               §§push(Boolean(§§pop()));
               §§push(Boolean(§§pop()));
               if(!(_loc3_ && this))
               {
                  if(§§pop())
                  {
                     §§pop();
                     if(!_loc3_)
                     {
                        §§push(param2.§;L§());
                        if(_loc4_)
                        {
                           §§push(Boolean(§§pop()));
                           if(_loc4_ || param1)
                           {
                              addr63:
                              if(§§pop())
                              {
                                 if(_loc4_)
                                 {
                                    §§push(true);
                                    if(!_loc3_)
                                    {
                                       §§goto(addr69);
                                    }
                                    else
                                    {
                                       addr106:
                                       §§push(!§§pop());
                                       if(!_loc3_)
                                       {
                                          addr109:
                                          if(§§pop())
                                          {
                                             addr110:
                                             §§push(true);
                                             if(!(_loc3_ && param2))
                                             {
                                                return §§pop();
                                             }
                                          }
                                          else
                                          {
                                             addr119:
                                             §§push(false);
                                          }
                                       }
                                    }
                                 }
                                 else
                                 {
                                    addr70:
                                    §§push(param1.§8l§());
                                    if(_loc4_)
                                    {
                                       addr74:
                                       §§push(!§§pop());
                                       if(_loc4_ || param2)
                                       {
                                          addr93:
                                          if(§§pop())
                                          {
                                             if(!(_loc3_ && param2))
                                             {
                                                addr101:
                                                §§pop();
                                                if(_loc4_)
                                                {
                                                   §§goto(addr106);
                                                   §§push(param2.§8l§());
                                                }
                                                §§goto(addr119);
                                             }
                                          }
                                          §§goto(addr109);
                                       }
                                       §§goto(addr101);
                                    }
                                 }
                                 return §§pop();
                              }
                              §§goto(addr70);
                           }
                           addr69:
                           return §§pop();
                        }
                        §§goto(addr74);
                     }
                     §§goto(addr110);
                  }
                  §§goto(addr63);
               }
               §§goto(addr93);
            }
            §§goto(addr63);
         }
         §§goto(addr119);
      }
      
      public function §#!Y§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.mSardineCanAdded = true;
            if(_loc1_)
            {
               addr23:
               this.§>L§ = 0;
            }
            return;
         }
         §§goto(addr23);
      }
      
      public function objectCollision(param1:§<!3§, param2:§<!3§) : Boolean
      {
         var _loc20_:Boolean = false;
         var _loc21_:Boolean = true;
         var _loc18_:* = NaN;
         var _loc19_:* = NaN;
         if(_loc21_)
         {
            if(this.mMightyEagleAdded)
            {
               §§push(Boolean(param1.§='§()));
               §§push(Boolean(param1.§='§()));
               if(!(_loc20_ && _loc3_))
               {
                  if(!§§pop())
                  {
                     if(!_loc20_)
                     {
                        §§pop();
                        §§push(Boolean(param2.§%P§()));
                        if(_loc20_ && param2)
                        {
                        }
                        addr128:
                        §§push(§§pop());
                        if(!_loc20_)
                        {
                           if(§§pop())
                           {
                              §§pop();
                              §§push(this.mMightyEagleTimer);
                              if(!(_loc20_ && param1))
                              {
                                 §§push(§§pop() == §;J§.§]!f§);
                                 if(!_loc20_)
                                 {
                                    addr147:
                                    if(§§pop())
                                    {
                                       if(_loc21_)
                                       {
                                          addr153:
                                          §§push(Boolean(param1.§4!t§()));
                                          if(!Boolean(param1.§4!t§()))
                                          {
                                             if(!_loc20_)
                                             {
                                                §§pop();
                                                if(_loc21_ || _loc3_)
                                                {
                                                   addr167:
                                                   §§push(Boolean(param2.§4!t§()));
                                                   if(!_loc20_)
                                                   {
                                                      addr170:
                                                      if(§§pop())
                                                      {
                                                         if(_loc21_ || _loc3_)
                                                         {
                                                            this.mMightyEagleTimer = 0;
                                                            if(_loc21_)
                                                            {
                                                               addr183:
                                                               §§push(this.§]n§(param1,param2));
                                                               if(_loc21_)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     if(_loc21_)
                                                                     {
                                                                        §§goto(addr193);
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr193);
                                                            }
                                                            addr196:
                                                            var _loc3_:Number = 10;
                                                            §§push(param1.§!&§(param2.§^!a§()));
                                                            if(_loc21_)
                                                            {
                                                               §§push(Number(§§pop()));
                                                            }
                                                            var _loc4_:* = §§pop();
                                                            §§push(param1.§-p§(param2.§^!a§()));
                                                            if(!(_loc20_ && _loc3_))
                                                            {
                                                               §§push(Number(§§pop()));
                                                            }
                                                            var _loc5_:* = §§pop();
                                                            §§push(param2.§!&§(param1.§^!a§()));
                                                            if(!_loc20_)
                                                            {
                                                               §§push(Number(§§pop()));
                                                            }
                                                            var _loc6_:* = §§pop();
                                                            §§push(param2.§-p§(param1.§^!a§()));
                                                            if(_loc21_ || param2)
                                                            {
                                                               §§push(Number(§§pop()));
                                                            }
                                                            var _loc7_:* = §§pop();
                                                            §§push(param1.getBody().GetMass());
                                                            if(!_loc20_)
                                                            {
                                                               §§push(param1.getBody());
                                                               if(!_loc20_)
                                                               {
                                                                  §§push(§§pop().GetLinearVelocity().x);
                                                                  if(!(_loc20_ && param1))
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     if(!_loc20_)
                                                                     {
                                                                        addr262:
                                                                        §§push(param2.getBody().GetMass());
                                                                        if(!_loc20_)
                                                                        {
                                                                           addr265:
                                                                           §§push(§§pop() * param2.getBody().GetLinearVelocity().x);
                                                                        }
                                                                        §§push(§§pop() - §§pop());
                                                                        if(_loc21_)
                                                                        {
                                                                           addr274:
                                                                           var _loc8_:Number = §§pop();
                                                                           §§push(param1.getBody().GetMass());
                                                                           if(_loc21_ || param1)
                                                                           {
                                                                              §§push(param1.getBody());
                                                                              if(_loc21_ || param2)
                                                                              {
                                                                                 §§push(§§pop().GetLinearVelocity().y);
                                                                                 if(!(_loc20_ && param1))
                                                                                 {
                                                                                    addr325:
                                                                                    §§push(§§pop() * §§pop());
                                                                                    if(_loc21_)
                                                                                    {
                                                                                       addr308:
                                                                                       §§push(param2.getBody().GetMass());
                                                                                       if(!_loc20_)
                                                                                       {
                                                                                          §§push(§§pop() * param2.getBody().GetLinearVelocity().y);
                                                                                       }
                                                                                    }
                                                                                    var _loc9_:* = §§pop();
                                                                                    §§push(Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_) / _loc3_);
                                                                                    if(!_loc20_)
                                                                                    {
                                                                                       §§push(Number(§§pop()));
                                                                                    }
                                                                                    var _loc10_:* = §§pop();
                                                                                    §§push(_loc4_);
                                                                                    if(_loc21_)
                                                                                    {
                                                                                       §§push(§§pop() * _loc10_);
                                                                                       if(!_loc20_)
                                                                                       {
                                                                                          addr348:
                                                                                          §§push(Number(§§pop()));
                                                                                       }
                                                                                       var _loc11_:* = §§pop();
                                                                                       §§push(_loc6_);
                                                                                       if(_loc21_)
                                                                                       {
                                                                                          §§push(§§pop() * _loc10_);
                                                                                          if(_loc21_)
                                                                                          {
                                                                                             addr357:
                                                                                             §§push(Number(§§pop()));
                                                                                          }
                                                                                          var _loc12_:* = §§pop();
                                                                                          var _loc13_:Number = Math.max(0,param1.§!!>§);
                                                                                          var _loc14_:Number = Math.max(0,param2.§!!>§);
                                                                                          §§push(param1.applyDamage(_loc12_,true,param2.§;L§(),_loc14_ == param2.§1!s§));
                                                                                          if(_loc21_)
                                                                                          {
                                                                                             §§push(Number(§§pop()));
                                                                                          }
                                                                                          var _loc15_:* = §§pop();
                                                                                          §§push(param2.applyDamage(_loc11_,true,param1.§;L§(),_loc13_ == param1.§1!s§));
                                                                                          if(!(_loc20_ && param2))
                                                                                          {
                                                                                             §§push(Number(§§pop()));
                                                                                          }
                                                                                          var _loc16_:* = §§pop();
                                                                                          var _loc17_:Boolean;
                                                                                          §§push(_loc17_ = false);
                                                                                          if(!(_loc20_ && this))
                                                                                          {
                                                                                             if(§§pop())
                                                                                             {
                                                                                                §`![§.log("--- NEW COLLISION ---");
                                                                                                if(_loc21_)
                                                                                                {
                                                                                                   §§push(§`![§);
                                                                                                   §§push("Mat Dam Factor1 = ");
                                                                                                   §§push(_loc4_);
                                                                                                   if(!_loc20_)
                                                                                                   {
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                      §§push(" Mat Dam Factor2 = ");
                                                                                                      if(!_loc20_)
                                                                                                      {
                                                                                                         §§push(§§pop() + §§pop());
                                                                                                         if(!(_loc20_ && param2))
                                                                                                         {
                                                                                                            §§push(_loc6_);
                                                                                                            if(!_loc20_)
                                                                                                            {
                                                                                                               addr442:
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                               if(_loc21_ || param2)
                                                                                                               {
                                                                                                                  §§push(" Mat Vel Factor1 = ");
                                                                                                                  if(_loc21_ || this)
                                                                                                                  {
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                     if(!_loc20_)
                                                                                                                     {
                                                                                                                        addr461:
                                                                                                                        §§push(_loc5_);
                                                                                                                        if(_loc21_ || this)
                                                                                                                        {
                                                                                                                           addr481:
                                                                                                                           addr479:
                                                                                                                           addr480:
                                                                                                                           §§push(§§pop() + §§pop() + " Mat Vel Factor2 = ");
                                                                                                                           if(_loc21_ || this)
                                                                                                                           {
                                                                                                                              addr490:
                                                                                                                              §§push(§§pop() + _loc7_);
                                                                                                                           }
                                                                                                                           §§pop().log(§§pop());
                                                                                                                           §§push(§`![§);
                                                                                                                           §§push("Object1: ");
                                                                                                                           if(_loc21_ || _loc3_)
                                                                                                                           {
                                                                                                                              §§push(§§pop() + param1.§>p§);
                                                                                                                              if(_loc21_ || _loc3_)
                                                                                                                              {
                                                                                                                                 §§push(" force1 = ");
                                                                                                                                 if(!_loc20_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                    if(_loc21_)
                                                                                                                                    {
                                                                                                                                       §§push(_loc11_);
                                                                                                                                       if(!_loc20_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                          §§push(" obj health1 = ");
                                                                                                                                          if(!_loc20_)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                             if(!_loc20_)
                                                                                                                                             {
                                                                                                                                                §§push(_loc13_);
                                                                                                                                                if(!(_loc20_ && param1))
                                                                                                                                                {
                                                                                                                                                   addr535:
                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                   if(!(_loc20_ && param1))
                                                                                                                                                   {
                                                                                                                                                      addr545:
                                                                                                                                                      §§push(§§pop() + " new health1 = ");
                                                                                                                                                      §§push(_loc15_);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr545);
                                                                                                                                                }
                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                             }
                                                                                                                                             §§pop().log(§§pop());
                                                                                                                                             if(!(_loc20_ && param2))
                                                                                                                                             {
                                                                                                                                                §§push(§`![§);
                                                                                                                                                §§push("Object2: " + param2.§>p§);
                                                                                                                                                if(_loc21_ || param1)
                                                                                                                                                {
                                                                                                                                                   §§push(" force2 = ");
                                                                                                                                                   if(!(_loc20_ && param2))
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                      if(_loc21_ || _loc3_)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc12_);
                                                                                                                                                         if(!_loc20_)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() + §§pop());
                                                                                                                                                            §§push(" obj health2 = ");
                                                                                                                                                            if(_loc21_ || param1)
                                                                                                                                                            {
                                                                                                                                                               addr595:
                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                               §§push(_loc14_);
                                                                                                                                                               if(_loc21_ || this)
                                                                                                                                                               {
                                                                                                                                                                  addr606:
                                                                                                                                                                  §§push(§§pop() + §§pop() + " new health2 = ");
                                                                                                                                                                  if(!_loc20_)
                                                                                                                                                                  {
                                                                                                                                                                     addr610:
                                                                                                                                                                     §§push(§§pop() + _loc16_);
                                                                                                                                                                  }
                                                                                                                                                                  §§pop().log(§§pop());
                                                                                                                                                                  if(_loc21_ || _loc3_)
                                                                                                                                                                  {
                                                                                                                                                                     addr619:
                                                                                                                                                                     §§push(_loc15_);
                                                                                                                                                                     §§push(0);
                                                                                                                                                                     if(!(_loc20_ && param1))
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() <= §§pop());
                                                                                                                                                                        §§push(§§pop() <= §§pop());
                                                                                                                                                                        if(!(_loc20_ && param1))
                                                                                                                                                                        {
                                                                                                                                                                           if(§§pop())
                                                                                                                                                                           {
                                                                                                                                                                              §§pop();
                                                                                                                                                                              §§push(_loc12_);
                                                                                                                                                                              if(!_loc20_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(0);
                                                                                                                                                                                 if(!_loc20_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() == §§pop());
                                                                                                                                                                                    if(_loc21_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr649:
                                                                                                                                                                                       if(!§§pop())
                                                                                                                                                                                       {
                                                                                                                                                                                          addr650:
                                                                                                                                                                                          §§push(_loc12_);
                                                                                                                                                                                          if(!(_loc20_ && this))
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc13_);
                                                                                                                                                                                             if(_loc21_ || _loc3_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop() - §§pop());
                                                                                                                                                                                                if(!(_loc20_ && this))
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc12_);
                                                                                                                                                                                                   if(!_loc20_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr678:
                                                                                                                                                                                                      §§push(_loc18_ = Number(§§pop() / §§pop()));
                                                                                                                                                                                                      if(!_loc20_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(_loc7_);
                                                                                                                                                                                                         if(_loc21_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                                                                            if(_loc21_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr690:
                                                                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                                                                               if(_loc21_ || _loc3_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  _loc18_ = §§pop();
                                                                                                                                                                                                                  addr699:
                                                                                                                                                                                                                  if(§§pop() > 1)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!(_loc20_ && _loc3_))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(1);
                                                                                                                                                                                                                        if(_loc21_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           _loc18_ = Number(§§pop());
                                                                                                                                                                                                                           addr713:
                                                                                                                                                                                                                           §§push(_loc17_);
                                                                                                                                                                                                                           if(!(_loc20_ && _loc3_))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr721:
                                                                                                                                                                                                                              if(§§pop())
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!_loc20_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(§`![§);
                                                                                                                                                                                                                                    §§push(param1.§>p§ + " is killed. Speed Multiplier for ");
                                                                                                                                                                                                                                    if(_loc21_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(§§pop() + param2.§>p§);
                                                                                                                                                                                                                                       if(!(_loc20_ && _loc3_))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr741:
                                                                                                                                                                                                                                          §§push(§§pop() + " is ");
                                                                                                                                                                                                                                          if(!_loc20_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(§§pop() + _loc18_);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§pop().log(§§pop());
                                                                                                                                                                                                                                       if(!(_loc20_ && param2))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr755:
                                                                                                                                                                                                                                          §§push(param2);
                                                                                                                                                                                                                                          §§push(§§findproperty(b2Vec2));
                                                                                                                                                                                                                                          §§push(param2.getBody().GetLinearVelocity().x);
                                                                                                                                                                                                                                          if(_loc21_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(_loc18_);
                                                                                                                                                                                                                                             if(!(_loc20_ && param2))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr772:
                                                                                                                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                §§push(param2.getBody().GetLinearVelocity().y);
                                                                                                                                                                                                                                                if(_loc21_ || param1)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr783:
                                                                                                                                                                                                                                                   §§push(§§pop() * _loc18_);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§pop().§'!S§(new §§pop().b2Vec2(§§pop(),§§pop()));
                                                                                                                                                                                                                                                §§push(_loc16_);
                                                                                                                                                                                                                                                if(!_loc20_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr791:
                                                                                                                                                                                                                                                   §§push(§§pop() <= 0);
                                                                                                                                                                                                                                                   if(!_loc20_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      addr794:
                                                                                                                                                                                                                                                      §§push(§§pop());
                                                                                                                                                                                                                                                      if(!(_loc20_ && param2))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         addr802:
                                                                                                                                                                                                                                                         if(§§pop())
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§pop();
                                                                                                                                                                                                                                                            if(_loc21_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               addr806:
                                                                                                                                                                                                                                                               §§push(_loc11_);
                                                                                                                                                                                                                                                               §§push(0);
                                                                                                                                                                                                                                                               if(!_loc20_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(§§pop() != §§pop());
                                                                                                                                                                                                                                                                  if(_loc20_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  addr954:
                                                                                                                                                                                                                                                                  §§pop();
                                                                                                                                                                                                                                                                  return _loc16_ <= 0;
                                                                                                                                                                                                                                                                  addr957:
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr957);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            addr910:
                                                                                                                                                                                                                                                            §§push(param1);
                                                                                                                                                                                                                                                            §§push(§§findproperty(b2Vec2));
                                                                                                                                                                                                                                                            §§push(param1.getBody().GetLinearVelocity().x);
                                                                                                                                                                                                                                                            if(_loc21_ || this)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(_loc19_);
                                                                                                                                                                                                                                                               if(_loc21_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  addr937:
                                                                                                                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                  §§push(param1.getBody().GetLinearVelocity().y);
                                                                                                                                                                                                                                                                  if(!_loc20_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(§§pop() * _loc19_);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§pop().§'!S§(new §§pop().b2Vec2(§§pop(),§§pop()));
                                                                                                                                                                                                                                                               addr947:
                                                                                                                                                                                                                                                               §§push(_loc15_);
                                                                                                                                                                                                                                                               if(_loc21_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  addr951:
                                                                                                                                                                                                                                                                  §§push(§§pop() <= 0);
                                                                                                                                                                                                                                                                  if(§§pop() <= 0)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr954);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr937);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         if(§§pop())
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(_loc21_ || _loc3_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(_loc11_);
                                                                                                                                                                                                                                                               if(_loc21_ || param2)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(_loc14_);
                                                                                                                                                                                                                                                                  if(_loc21_ || param1)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     addr838:
                                                                                                                                                                                                                                                                     §§push((§§pop() - §§pop()) / _loc11_);
                                                                                                                                                                                                                                                                     if(!_loc20_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§push(§§pop());
                                                                                                                                                                                                                                                                     if(!_loc20_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        addr847:
                                                                                                                                                                                                                                                                        _loc19_ = §§pop();
                                                                                                                                                                                                                                                                        if(_loc21_ || _loc3_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        addr857:
                                                                                                                                                                                                                                                                        §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                        if(!(_loc20_ && param2))
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           addr866:
                                                                                                                                                                                                                                                                           §§push(_loc19_ = §§pop());
                                                                                                                                                                                                                                                                           if(!_loc20_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(1);
                                                                                                                                                                                                                                                                              if(!_loc20_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(§§pop() > §§pop())
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(_loc21_ || param1)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       addr882:
                                                                                                                                                                                                                                                                                       _loc19_ = Number(1);
                                                                                                                                                                                                                                                                                       if(_loc21_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          addr885:
                                                                                                                                                                                                                                                                                          §§push(_loc17_);
                                                                                                                                                                                                                                                                                          if(!_loc20_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             addr888:
                                                                                                                                                                                                                                                                                             if(§§pop())
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§push(§`![§);
                                                                                                                                                                                                                                                                                                §§push(param2.§>p§ + " is killed. Speed Multiplier for ");
                                                                                                                                                                                                                                                                                                if(_loc21_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(§§pop() + param1.§>p§);
                                                                                                                                                                                                                                                                                                   if(!_loc20_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§push(§§pop() + " is ");
                                                                                                                                                                                                                                                                                                      if(_loc21_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         addr905:
                                                                                                                                                                                                                                                                                                         §§push(§§pop() + _loc19_);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§pop().log(§§pop());
                                                                                                                                                                                                                                                                                                      if(_loc21_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§goto(addr910);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr954);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr905);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr910);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr954);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr885);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr951);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr882);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr951);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     addr856:
                                                                                                                                                                                                                                                                     §§goto(addr857);
                                                                                                                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr856);
                                                                                                                                                                                                                                                               §§push(_loc5_);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr882);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr947);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr951);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr888);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr954);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr783);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr772);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr806);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr741);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr910);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr755);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr794);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr882);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr713);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr856);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr699);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr866);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr690);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr847);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr678);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr838);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr847);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr772);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr954);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr791);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr678);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr649);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr802);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr954);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr650);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr610);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr606);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr595);
                                                                                                                                                }
                                                                                                                                                §§goto(addr606);
                                                                                                                                             }
                                                                                                                                             §§goto(addr772);
                                                                                                                                          }
                                                                                                                                          §§goto(addr545);
                                                                                                                                       }
                                                                                                                                       §§goto(addr535);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr545);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr545);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr490);
                                                                                                                  }
                                                                                                                  §§goto(addr481);
                                                                                                               }
                                                                                                               §§goto(addr461);
                                                                                                            }
                                                                                                            §§goto(addr479);
                                                                                                         }
                                                                                                         §§goto(addr480);
                                                                                                      }
                                                                                                      §§goto(addr481);
                                                                                                   }
                                                                                                   §§goto(addr442);
                                                                                                }
                                                                                                §§goto(addr481);
                                                                                             }
                                                                                             §§goto(addr619);
                                                                                          }
                                                                                          §§goto(addr721);
                                                                                       }
                                                                                       §§goto(addr357);
                                                                                    }
                                                                                    §§goto(addr348);
                                                                                 }
                                                                                 §§push(§§pop() - §§pop());
                                                                                 if(_loc21_ || param1)
                                                                                 {
                                                                                    §§goto(addr325);
                                                                                    §§push(Number(§§pop()));
                                                                                 }
                                                                                 §§goto(addr325);
                                                                              }
                                                                              §§goto(addr308);
                                                                           }
                                                                           §§goto(addr325);
                                                                        }
                                                                     }
                                                                     §§goto(addr274);
                                                                  }
                                                                  §§goto(addr265);
                                                               }
                                                               §§goto(addr262);
                                                            }
                                                            §§goto(addr274);
                                                         }
                                                         §§goto(addr193);
                                                      }
                                                      §§goto(addr183);
                                                   }
                                                }
                                                §§goto(addr193);
                                             }
                                             §§goto(addr167);
                                          }
                                          §§goto(addr170);
                                       }
                                       §§goto(addr167);
                                    }
                                    §§goto(addr183);
                                 }
                                 §§goto(addr153);
                              }
                              §§goto(addr196);
                           }
                           §§goto(addr147);
                        }
                        §§goto(addr153);
                     }
                     §§goto(addr128);
                  }
                  if(§§pop())
                  {
                     if(_loc21_ || _loc3_)
                     {
                        §§push(param2);
                        §§push(param2.§1!s§);
                        if(!_loc20_)
                        {
                           §§push(§§pop() * 2);
                        }
                        §§pop().applyDamage(§§pop(),true,true,true,false);
                        if(_loc21_)
                        {
                           return true;
                        }
                     }
                     addr124:
                  }
                  else
                  {
                     addr75:
                     §§push(param2.§='§());
                     if(!(_loc20_ && param1))
                     {
                        §§push(Boolean(§§pop()));
                        if(_loc21_ || param1)
                        {
                           §§push(§§pop());
                           if(!(_loc20_ && param1))
                           {
                              addr100:
                              if(!§§pop())
                              {
                                 if(!_loc20_)
                                 {
                                    §§pop();
                                    if(!_loc20_)
                                    {
                                       addr109:
                                       if(param1.§%P§())
                                       {
                                          §§push(param1);
                                          §§push(param1.§1!s§);
                                          if(!_loc20_)
                                          {
                                             §§push(§§pop() * 2);
                                          }
                                          §§pop().applyDamage(§§pop(),true,true,true,false);
                                          return true;
                                       }
                                       §§goto(addr124);
                                    }
                                    addr193:
                                    return false;
                                 }
                                 §§goto(addr128);
                                 §§goto(addr183);
                              }
                              §§goto(addr109);
                           }
                           §§goto(addr153);
                        }
                     }
                     §§goto(addr153);
                  }
                  §§goto(addr183);
               }
               §§goto(addr100);
            }
            else
            {
               §§push(Boolean(this.mSardineCanAdded));
            }
            §§goto(addr128);
         }
         §§goto(addr75);
      }
      
      public function §=B§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§<!3§ = null;
         var _loc1_:* = int(this.§do §.length - 1);
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§do §[_loc1_] as §<!3§;
            if(_loc4_)
            {
               §§push(_loc2_ == null);
               if(!_loc3_)
               {
                  §§push(!§§pop());
                  if(!(_loc3_ && _loc1_))
                  {
                     if(§§pop())
                     {
                        if(!(_loc3_ && this))
                        {
                           §§pop();
                           if(!(_loc3_ && _loc3_))
                           {
                              addr78:
                              §§push(_loc2_.§%P§());
                              if(_loc4_ || _loc1_)
                              {
                                 addr98:
                                 if(§§pop())
                                 {
                                    if(!(_loc4_ || _loc1_))
                                    {
                                       continue;
                                    }
                                    this.§2p§(_loc1_,true,true,true);
                                    if(_loc3_)
                                    {
                                       continue;
                                    }
                                 }
                              }
                              §§goto(addr98);
                           }
                           §§push(_loc1_);
                           if(_loc4_ || _loc2_)
                           {
                              §§push(§§pop() - 1);
                           }
                           _loc1_ = §§pop();
                           continue;
                        }
                     }
                  }
               }
               §§goto(addr98);
            }
            §§goto(addr78);
         }
      }
      
      public function §6!E§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§<!3§ = null;
         var _loc1_:* = int(this.§do §.length - 1);
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§do §[_loc1_] as §<!3§;
            if(_loc4_)
            {
               §§push(_loc2_ == null);
               if(_loc4_ || _loc1_)
               {
                  §§push(!§§pop());
                  if(_loc4_ || _loc2_)
                  {
                     if(§§pop())
                     {
                        if(_loc4_)
                        {
                           §§pop();
                           if(!(_loc3_ && _loc1_))
                           {
                              §§push(_loc2_.§`x§());
                              if(_loc3_ && _loc1_)
                              {
                              }
                              addr98:
                              if(§§pop())
                              {
                                 if(!(_loc3_ && this))
                                 {
                                    addr106:
                                    this.§2p§(_loc1_,true,true,true);
                                    if(_loc3_)
                                    {
                                       continue;
                                    }
                                 }
                              }
                              §§push(_loc1_);
                              if(!_loc3_)
                              {
                                 §§push(§§pop() - 1);
                              }
                              _loc1_ = §§pop();
                              continue;
                           }
                           §§goto(addr106);
                        }
                     }
                     §§goto(addr98);
                  }
                  §§push(Boolean(§§pop()));
               }
               §§goto(addr98);
            }
            §§goto(addr106);
         }
      }
      
      public function getObjectCount() : int
      {
         return this.§do §.length;
      }
      
      public function §9!-§(param1:§2! §) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc4_:§<!3§ = null;
         var _loc5_:§[!k§ = null;
         var _loc6_:§[F§ = null;
         var _loc7_:§1M§ = null;
         var _loc2_:* = Number(0);
         while(true)
         {
            §§push(_loc2_);
            if(_loc9_)
            {
               if(§§pop() >= this.§do §.length)
               {
                  §§push(Number(0));
                  break;
               }
               §§push((_loc4_ = this.§do §[_loc2_]).§[U§);
               if(_loc9_ || _loc3_)
               {
                  if(!§§pop())
                  {
                     if(!_loc9_)
                     {
                        addr58:
                     }
                  }
                  else
                  {
                     addr55:
                     if(_loc4_.isGround())
                     {
                        if(!_loc9_)
                        {
                           continue;
                        }
                        §§goto(addr58);
                     }
                     else
                     {
                        (_loc5_ = new §[!k§()).angle = _loc4_.§;x§();
                        if(!(_loc8_ && _loc2_))
                        {
                           _loc5_.id = _loc4_.§>p§;
                           if(_loc9_)
                           {
                              _loc5_.x = _loc4_.getBody().GetPosition().x;
                              if(_loc9_)
                              {
                                 addr88:
                                 _loc5_.y = _loc4_.getBody().GetPosition().y;
                                 if(_loc9_ || this)
                                 {
                                 }
                                 addr114:
                                 §§push(_loc2_);
                                 if(!(_loc8_ && _loc2_))
                                 {
                                    §§push(§§pop() + 1);
                                    if(_loc9_)
                                    {
                                       addr125:
                                       §§push(Number(§§pop()));
                                    }
                                    _loc2_ = §§pop();
                                    continue;
                                 }
                                 §§goto(addr125);
                              }
                              param1.addObject(_loc5_);
                              §§goto(addr114);
                           }
                           §§goto(addr88);
                        }
                     }
                  }
                  §§goto(addr88);
               }
               §§goto(addr55);
            }
            break;
         }
         var _loc3_:* = §§pop();
         if(!(_loc8_ && _loc3_))
         {
            while(_loc3_ < this.§2^§.length)
            {
               _loc7_ = this.§2^§[_loc3_];
               _loc6_ = new §[F§(_loc7_.type,_loc7_.index1,_loc7_.index2,_loc7_.point1,_loc7_.point2,_loc7_.§@!g§,_loc7_.§'@§,_loc7_.lowerLimit,_loc7_.upperLimit,_loc7_.§'_§,_loc7_.motorSpeed,_loc7_.§-a§,_loc7_.maxTorque);
               if(!_loc8_)
               {
                  param1.§"g§(_loc6_);
                  if(!_loc9_)
                  {
                     continue;
                  }
               }
               §§push(_loc3_);
               if(!(_loc8_ && this))
               {
                  §§push(§§pop() + 1);
                  if(!(_loc8_ && this))
                  {
                     addr215:
                     §§push(Number(§§pop()));
                  }
                  _loc3_ = §§pop();
                  continue;
               }
               §§goto(addr215);
            }
         }
      }
      
      public function §7!S§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:int = 0;
         while(this.§do §.length > _loc1_)
         {
            if(this.§do §[_loc1_].isGround())
            {
               if(!_loc2_)
               {
                  _loc1_++;
                  if(!(_loc3_ || _loc2_))
                  {
                     break;
                  }
               }
            }
            else
            {
               this.removeObject(this.§do §[_loc1_]);
               if(_loc2_ && _loc3_)
               {
                  break;
               }
            }
         }
      }
      
      public function getObjectsWithinBoundingBox(param1:Point, param2:Point) : Array
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:Array = new Array();
         var _loc4_:* = Number(0);
         loop0:
         while(true)
         {
            §§push(_loc4_);
            while(§§pop() < this.§do §.length)
            {
               if(this.§do §[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
               {
                  if(_loc5_ || param2)
                  {
                     _loc3_.push(this.§do §[_loc4_]);
                     if(_loc6_)
                     {
                     }
                     break;
                  }
                  break;
               }
               §§push(_loc4_);
               if(!(_loc6_ && this))
               {
                  §§push(§§pop() + 1);
                  if(_loc5_ || param2)
                  {
                     §§push(Number(§§pop()));
                     if(_loc6_ && _loc3_)
                     {
                        continue;
                     }
                  }
                  _loc4_ = §§pop();
                  if(!_loc5_)
                  {
                     break;
                  }
                  continue loop0;
               }
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
            this.§?!t§ = param1;
            if(_loc4_)
            {
               addr24:
               this.§?O§(param1);
            }
            var _loc2_:* = Number(0);
            loop0:
            while(true)
            {
               §§push(_loc2_);
               while(§§pop() < this.§do §.length)
               {
                  if(this.§do §[_loc2_].isTexture())
                  {
                     if(!(_loc3_ && param1))
                     {
                        this.§do §[_loc2_].sprite.visible = !this.§?!t§;
                        if(_loc3_ && _loc2_)
                        {
                           continue loop0;
                        }
                     }
                     break;
                  }
                  §§push(_loc2_);
                  if(_loc4_ || _loc2_)
                  {
                     §§push(§§pop() + 1);
                     if(_loc3_ && _loc3_)
                     {
                        continue;
                     }
                  }
                  §§push(Number(§§pop()));
                  if(_loc4_)
                  {
                     _loc2_ = §§pop();
                     if(_loc3_ && this)
                     {
                        break;
                     }
                     continue loop0;
                  }
               }
               return;
            }
         }
         §§goto(addr24);
      }
      
      public function setDamageEnabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§'0§ = param1;
         }
      }
      
      public function §=!C§() : Boolean
      {
         return this.§'0§;
      }
      
      public function §6!&§() : int
      {
         return this.§@Q§;
      }
      
      public function § !q§() : int
      {
         return this.§99§;
      }
   }
}
