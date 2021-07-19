package §&!8§
{
   import §!r§.§"B§;
   import §!r§.§2k§;
   import §!r§.§3!!§;
   import §!r§.§9!,§;
   import §!r§.§=?§;
   import §+!9§.§6!N§;
   import §,§.§ p§;
   import §,§.§'-§;
   import §,§.§?9§;
   import §,§.§?s§;
   import §-!Q§.§,!7§;
   import §1!4§.§7!?§;
   import §1!4§.§do§;
   import §6!H§.b2Vec2;
   import §9t§.§35§;
   import §;!#§.b2PrismaticJoint;
   import §;!#§.b2RevoluteJoint;
   import §;!#§.b2WeldJoint;
   import §;A§.§ f§;
   import §;A§.§9s§;
   import §;A§.§=y§;
   import §;A§.§]!A§;
   import §>^§.§!6§;
   import §]!a§.Texture;
   import §^a§.§6p§;
   import §^a§.Sprite;
   import §`![§.§!!K§;
   import flash.display.BitmapData;
   import flash.display.BitmapDataChannel;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §+!6§
   {
       
      
      protected var § #§:Vector.<§[g§>;
      
      protected var §2!E§:int;
      
      public var §^!I§:§ p§;
      
      public var §[F§:Vector.<§7@§>;
      
      protected var §6!Q§:Sprite;
      
      protected var §=!M§:Sprite;
      
      private var §,!C§:Sprite;
      
      private var §@!@§:Sprite;
      
      private var §&!,§:Sprite;
      
      protected var §7A§:Vector.<Texture>;
      
      protected var §]N§:Vector.<§=y§>;
      
      protected var §&f§:int = 1;
      
      public var mMightyEagleAdded:Boolean = false;
      
      public var mMightyEagleHasTouchedGround:Boolean = false;
      
      public var §3!M§:Boolean = false;
      
      public var mSardineCanAdded:Boolean = false;
      
      public var mMightyEagleTimer:Number = 0;
      
      protected var §17§:Boolean = false;
      
      protected var §1Q§:Number;
      
      protected var §&!@§:int;
      
      protected var §[!A§:Vector.<§9s§>;
      
      protected var §<c§:int = 0;
      
      private var §&!P§:int = 0;
      
      private var §]!9§:int = 0;
      
      protected var §1!?§:int;
      
      private var §1v§:Boolean = true;
      
      private var §"-§:Boolean = true;
      
      public function §+!6§(param1:§ p§, param2:§!!K§, param3:Sprite)
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         var _loc5_:§=y§ = null;
         var _loc6_:§]!A§ = null;
         var _loc7_:§[g§ = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:§[g§ = null;
         var _loc11_:§[g§ = null;
         if(_loc15_)
         {
            this.§ #§ = new Vector.<§[g§>();
            while(true)
            {
               this.§[F§ = new Vector.<§7@§>();
               loop1:
               while(true)
               {
                  this.§7A§ = new Vector.<Texture>();
                  loop2:
                  while(true)
                  {
                     this.§1Q§ = this.§?9§.SARDINE_CAN_INITIAL_ROTATION_SPEED;
                     while(true)
                     {
                        this.§[!A§ = new Vector.<§9s§>();
                        continue loop2;
                        while(!(_loc14_ && param3))
                        {
                           this.§2!E§ = 0;
                           continue loop1;
                           addr219:
                           if(_loc14_ && param2)
                           {
                              continue;
                           }
                           this.§@!@§ = new Sprite();
                           while(_loc15_)
                           {
                              this.§&!,§ = new Sprite();
                              while(true)
                              {
                                 if(_loc15_ || this)
                                 {
                                    if(_loc14_)
                                    {
                                       break;
                                    }
                                    if(!(_loc15_ || param2))
                                    {
                                       continue loop2;
                                    }
                                    §§push(this.§=!M§);
                                    loop18:
                                    while(true)
                                    {
                                       §§pop().addChild(this.§6!Q§);
                                       addr176:
                                       while(true)
                                       {
                                          §§push(this.§=!M§);
                                          continue loop18;
                                       }
                                    }
                                 }
                                 §§goto(addr232);
                              }
                              while(_loc15_)
                              {
                                 while(true)
                                 {
                                    §§goto(addr246);
                                 }
                              }
                              continue loop1;
                           }
                           while(!(_loc14_ && param1))
                           {
                              §§goto(addr219);
                           }
                           §§goto(addr248);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr257);
      }
      
      protected function get §?9§() : Class
      {
         return §?9§;
      }
      
      public function get §]4§() : Sprite
      {
         return this.§&!,§;
      }
      
      public function get §#!^§() : Sprite
      {
         return this.§=!M§;
      }
      
      public function get §[!a§() : Sprite
      {
         return this.§@!@§;
      }
      
      public function dispose() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:Texture = null;
         loop0:
         while(true)
         {
            if(this.§ #§.length > 0)
            {
               this.removeObjectWithIndex(0);
               continue;
            }
            loop1:
            while(true)
            {
               this.§ #§ = null;
               loop2:
               while(true)
               {
                  this.§[!A§ = null;
                  loop3:
                  while(true)
                  {
                     §§push(this.§=!M§);
                     if(_loc2_)
                     {
                        if(§§pop())
                        {
                           if(!(_loc3_ && _loc2_))
                           {
                              addr111:
                              this.§=!M§.dispose();
                              loop4:
                              while(true)
                              {
                                 this.§=!M§ = null;
                                 loop5:
                                 while(true)
                                 {
                                    if(!_loc2_)
                                    {
                                       continue loop4;
                                    }
                                    if(_loc3_ && _loc1_)
                                    {
                                       break;
                                    }
                                    this.§6!Q§ = null;
                                    if(!_loc3_)
                                    {
                                       if(_loc3_ && _loc2_)
                                       {
                                          continue loop2;
                                       }
                                       this.§&!,§ = null;
                                       loop6:
                                       while(true)
                                       {
                                          addr44:
                                          while(true)
                                          {
                                             this.§,!C§ = null;
                                             while(true)
                                             {
                                                if(!_loc2_)
                                                {
                                                   continue loop6;
                                                }
                                                if(!_loc2_)
                                                {
                                                   break;
                                                }
                                                this.§@!@§ = null;
                                                if(!_loc3_)
                                                {
                                                   if(_loc2_ || _loc1_)
                                                   {
                                                      if(!_loc3_)
                                                      {
                                                         continue loop3;
                                                      }
                                                      continue loop5;
                                                   }
                                                   continue;
                                                }
                                             }
                                             continue loop0;
                                          }
                                          continue loop3;
                                       }
                                    }
                                 }
                                 continue loop1;
                              }
                           }
                        }
                        else
                        {
                           addr163:
                           if(this.§7A§.length > 0)
                           {
                              _loc1_ = this.§7A§.pop();
                              if(_loc2_ || _loc1_)
                              {
                                 this.§^!I§.§],§.§`E§(_loc1_);
                              }
                              §§goto(addr163);
                           }
                           addr134:
                        }
                        return;
                     }
                     §§goto(addr111);
                  }
               }
            }
         }
      }
      
      private function §#!0§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§6!Q§.visible = param1;
         }
      }
      
      private function §9![§() : void
      {
         var _loc16_:Boolean = false;
         var _loc17_:Boolean = true;
         var _loc3_:§[g§ = null;
         var _loc4_:Rectangle = null;
         var _loc5_:* = NaN;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         var _loc8_:* = 0;
         var _loc9_:int = 0;
         var _loc10_:BitmapData = null;
         var _loc11_:BitmapData = null;
         var _loc12_:Texture = null;
         var _loc13_:§6p§ = null;
         var _loc1_:Rectangle = null;
         var _loc2_:Vector.<§[g§> = new Vector.<§[g§>();
         for each(_loc3_ in this.§ #§)
         {
            if(!_loc16_)
            {
               if(!_loc3_.isTexture())
               {
                  continue;
               }
               if(!_loc16_)
               {
                  _loc2_.push(_loc3_);
               }
            }
            _loc4_ = _loc3_.sprite.getBounds(this.§=!M§);
            if(!_loc16_)
            {
               if(_loc1_ != null)
               {
                  _loc1_ = _loc1_.union(_loc4_);
                  continue;
               }
            }
            _loc1_ = new Rectangle(_loc4_.x,_loc4_.y,_loc4_.width,_loc4_.height);
         }
         if(!_loc16_)
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
                        addr292:
                        loop4:
                        while(true)
                        {
                           loop5:
                           while(true)
                           {
                              §§push(_loc1_.width > 2048);
                              if(_loc17_)
                              {
                                 if(!§§pop())
                                 {
                                    loop15:
                                    while(true)
                                    {
                                       §§pop();
                                       addr223:
                                       while(true)
                                       {
                                          if(_loc17_)
                                          {
                                             if(!(_loc16_ && _loc3_))
                                             {
                                                if(!_loc16_)
                                                {
                                                   continue loop15;
                                                }
                                                continue loop1;
                                             }
                                             addr276:
                                             addr268:
                                             _loc1_.right /= 2;
                                             _loc1_.bottom /= 2;
                                          }
                                          addr260:
                                          §§push(_loc5_);
                                          if(_loc16_)
                                          {
                                             §§goto(addr243);
                                          }
                                          §§push(§§pop() / 2);
                                          if(_loc17_)
                                          {
                                             addr243:
                                             if(_loc16_ && this)
                                             {
                                                continue loop3;
                                             }
                                             §§push(Number(§§pop()));
                                          }
                                          _loc5_ = §§pop();
                                          continue loop5;
                                       }
                                    }
                                    addr222:
                                 }
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       loop7:
                                       while(true)
                                       {
                                          if(_loc16_)
                                          {
                                             continue loop5;
                                          }
                                          if(_loc16_)
                                          {
                                             break;
                                          }
                                          §§push(int(_loc1_.width));
                                          loop8:
                                          while(true)
                                          {
                                             _loc6_ = §§pop();
                                             loop9:
                                             while(true)
                                             {
                                                §§push(int(_loc1_.height));
                                                loop10:
                                                while(true)
                                                {
                                                   _loc7_ = §§pop();
                                                   loop11:
                                                   while(true)
                                                   {
                                                      if(_loc17_)
                                                      {
                                                         if(_loc17_ || _loc2_)
                                                         {
                                                            if(_loc17_ || _loc3_)
                                                            {
                                                               do
                                                               {
                                                                  §§push(int(_loc1_.left));
                                                                  loop13:
                                                                  while(_loc17_)
                                                                  {
                                                                     _loc8_ = §§pop();
                                                                     while(true)
                                                                     {
                                                                        if(_loc17_ || _loc3_)
                                                                        {
                                                                           if(_loc17_ || _loc1_)
                                                                           {
                                                                              if(_loc17_)
                                                                              {
                                                                                 §§push(int(_loc1_.top));
                                                                                 if(_loc17_)
                                                                                 {
                                                                                    if(!_loc16_)
                                                                                    {
                                                                                       if(!_loc17_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       continue;
                                                                                    }
                                                                                    continue loop10;
                                                                                 }
                                                                                 continue loop13;
                                                                              }
                                                                              continue loop7;
                                                                           }
                                                                           continue loop9;
                                                                        }
                                                                        continue loop11;
                                                                     }
                                                                     continue loop2;
                                                                  }
                                                                  continue loop8;
                                                               }
                                                               while(false);
                                                               
                                                               _loc10_ = new BitmapData(_loc6_,_loc7_,true,0);
                                                               if(_loc17_)
                                                               {
                                                                  this.§-d§(_loc10_.rect,_loc10_,_loc5_);
                                                               }
                                                               _loc11_ = this.§;!!§(_loc2_,_loc6_,_loc7_,_loc8_,_loc9_,_loc5_);
                                                               if(_loc17_ || _loc2_)
                                                               {
                                                                  _loc10_.copyChannel(_loc11_,_loc11_.rect,new Point(0,0),BitmapDataChannel.ALPHA,BitmapDataChannel.ALPHA);
                                                               }
                                                               _loc12_ = this.§^!I§.§],§.§0!U§(_loc10_);
                                                               if(_loc17_ || this)
                                                               {
                                                                  this.§7A§.push(_loc12_);
                                                               }
                                                               (_loc13_ = new §6p§(_loc12_)).x = _loc8_ / _loc5_;
                                                               if(_loc17_)
                                                               {
                                                                  _loc13_.y = _loc9_ / _loc5_;
                                                                  _loc13_.scaleX = 1 / _loc5_;
                                                                  _loc13_.scaleY = 1 / _loc5_;
                                                                  addr433:
                                                                  if(_loc17_)
                                                                  {
                                                                     addr396:
                                                                     this.§6!Q§.addChild(_loc13_);
                                                                     _loc11_.dispose();
                                                                     if(_loc17_ || _loc3_)
                                                                     {
                                                                        if(_loc17_ || _loc1_)
                                                                        {
                                                                           if(!(_loc16_ && this))
                                                                           {
                                                                              §§goto(addr394);
                                                                           }
                                                                        }
                                                                        §§goto(addr433);
                                                                     }
                                                                     addr401:
                                                                     §§goto(addr401);
                                                                  }
                                                                  addr427:
                                                                  §§goto(addr427);
                                                               }
                                                               §§goto(addr394);
                                                            }
                                                            else
                                                            {
                                                               _loc1_.top /= 2;
                                                               §§goto(addr276);
                                                               addr286:
                                                            }
                                                         }
                                                         §§goto(addr268);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr223);
                                                      }
                                                   }
                                                   §§goto(addr260);
                                                }
                                             }
                                          }
                                       }
                                       continue loop4;
                                    }
                                    _loc1_.left /= 2;
                                    §§goto(addr286);
                                    §§goto(addr234);
                                 }
                              }
                              §§goto(addr222);
                           }
                        }
                     }
                  }
               }
            }
            addr394:
            if(false)
            {
               §§goto(addr396);
            }
            return;
         }
         §§goto(addr292);
      }
      
      private function §;!!§(param1:Vector.<§[g§>, param2:int, param3:int, param4:int, param5:int, param6:Number) : BitmapData
      {
         var _loc16_:Boolean = true;
         var _loc17_:Boolean = false;
         var _loc7_:§[g§ = null;
         var _loc11_:§2k§ = null;
         var _loc12_:Array = null;
         var _loc13_:Rectangle = null;
         var _loc8_:BitmapData = new BitmapData(param2,param3,true,0);
         var _loc9_:BitmapData = new BitmapData(1,1,true,4294967295);
         var _loc10_:Matrix = new Matrix();
         loop0:
         for each(_loc7_ in param1)
         {
            _loc12_ = (_loc11_ = _loc7_.§-!6§.shape).§%!,§();
            _loc13_ = new Rectangle(_loc12_[0].x / § p§.§]!E§ * param6,_loc12_[0].y / § p§.§]!E§ * param6,(_loc12_[1].x - _loc12_[0].x) / § p§.§]!E§ * param6,(_loc12_[1].y - _loc12_[0].y) / § p§.§]!E§ * param6);
            if(!_loc17_)
            {
               _loc10_.identity();
               while(true)
               {
                  _loc10_.scale(_loc13_.width,_loc13_.height);
                  while(_loc16_)
                  {
                     _loc10_.translate(-_loc13_.width / 2,-_loc13_.height / 2);
                     while(_loc16_)
                     {
                        _loc10_.rotate((360 - _loc7_.§?%§()) / 180 * Math.PI);
                        loop4:
                        while(true)
                        {
                           addr146:
                           while(true)
                           {
                              _loc10_.translate(_loc7_.sprite.x * param6 - param4,_loc7_.sprite.y * param6 - param5);
                              continue loop4;
                           }
                        }
                        if(_loc16_ || param3)
                        {
                           while(true)
                           {
                              _loc8_.draw(_loc9_,_loc10_);
                              if(_loc16_ || param2)
                              {
                                 if(true)
                                 {
                                    break;
                                 }
                                 §§goto(addr146);
                              }
                              §§goto(addr163);
                           }
                           continue loop0;
                           addr177:
                        }
                     }
                  }
               }
            }
            §§goto(addr177);
         }
         if(!_loc17_)
         {
            _loc9_.dispose();
         }
         return _loc8_;
      }
      
      private function §-d§(param1:Rectangle, param2:BitmapData, param3:Number) : void
      {
         var _loc16_:Boolean = false;
         var _loc17_:Boolean = true;
         var _loc6_:BitmapData = null;
         var _loc7_:Matrix = null;
         var _loc8_:* = 0;
         var _loc9_:* = 0;
         var _loc10_:* = 0;
         var _loc11_:* = 0;
         var _loc12_:int = 0;
         var _loc13_:int = 0;
         var _loc14_:int = 0;
         var _loc15_:int = 0;
         §§push(this.§^!I§.background.§+m§());
         if(!(_loc16_ && param3))
         {
            §§push(§§pop());
         }
         var _loc4_:* = §§pop();
         var _loc5_:§35§;
         if(_loc5_ = this.§^!I§.§-!7§.§=!+§(_loc4_))
         {
            _loc6_ = new BitmapData(_loc5_.bitmapData.width * param3,_loc5_.bitmapData.height * param3);
            (_loc7_ = new Matrix()).scale(param3,param3);
            if(_loc17_)
            {
               _loc6_.draw(_loc5_.bitmapData,_loc7_,null,null,null,true);
               loop0:
               while(true)
               {
                  §§push(int(_loc6_.width));
                  addr388:
                  while(true)
                  {
                     _loc8_ = §§pop();
                     addr389:
                     while(true)
                     {
                        §§push(int(_loc6_.height));
                        loop3:
                        while(true)
                        {
                           _loc9_ = §§pop();
                           addr383:
                           loop4:
                           while(true)
                           {
                              §§push(param1.top / _loc9_);
                              addr375:
                              while(true)
                              {
                                 §§push(int(§§pop()));
                                 loop6:
                                 while(true)
                                 {
                                    _loc10_ = §§pop();
                                    addr377:
                                    while(true)
                                    {
                                       if(param1.top < 0)
                                       {
                                          loop8:
                                          while(true)
                                          {
                                             §§push(_loc10_);
                                             addr365:
                                             while(true)
                                             {
                                                §§push(§§pop() - 1);
                                                addr366:
                                                while(true)
                                                {
                                                   _loc10_ = §§pop();
                                                   addr367:
                                                   while(_loc17_)
                                                   {
                                                   }
                                                   continue loop4;
                                                }
                                             }
                                             addr344:
                                             while(true)
                                             {
                                                if(_loc17_ || this)
                                                {
                                                   continue loop0;
                                                }
                                                continue loop8;
                                             }
                                             continue loop0;
                                          }
                                       }
                                       while(true)
                                       {
                                          §§push(param1.bottom / _loc9_);
                                          addr330:
                                          while(true)
                                          {
                                             §§push(int(§§pop()));
                                             addr331:
                                             while(_loc17_ || param2)
                                             {
                                                §§push(§§pop());
                                                while(true)
                                                {
                                                   _loc11_ = §§pop();
                                                   addr340:
                                                   while(!_loc16_)
                                                   {
                                                      §§push(§§pop() + 1);
                                                      while(true)
                                                      {
                                                         _loc11_ = §§pop();
                                                         §§goto(addr344);
                                                      }
                                                   }
                                                   continue loop3;
                                                }
                                             }
                                             continue loop6;
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
            §§goto(addr312);
         }
         §§goto(addr410);
      }
      
      public function §8!g§(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §[g§
      {
         var _loc10_:§=?§ = §3!!§.§^!-§(param2);
         return new §7q§(this,param1,this.§^!I§.mLevelEngine.mWorld,this.§^!I§,this.§2!E§,param2,param3,param4,param5,param9,_loc10_.particleJSONId,_loc10_.particleVariationCount);
      }
      
      public function addObjectParseBirds(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §[g§
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc10_:§[g§ = null;
         var _loc11_:* = param2;
         if(_loc12_)
         {
            if("BIRD_BLACK" === _loc11_)
            {
               if(!(_loc13_ && param1))
               {
                  §§push(0);
                  if(!(_loc12_ || param1))
                  {
                     addr311:
                  }
               }
               else
               {
                  addr271:
                  §§push(2);
                  if(!_loc12_)
                  {
                     addr342:
                  }
               }
            }
            else
            {
               if("BIRD_BLUE" === _loc11_)
               {
                  if(_loc12_)
                  {
                     addr257:
                     §§push(1);
                     if(_loc12_ || param2)
                     {
                        §§goto(addr347);
                     }
                     else
                     {
                        §§goto(addr311);
                     }
                  }
               }
               else if("BIRD_GREEN" === _loc11_)
               {
                  if(!_loc13_)
                  {
                     §§goto(addr271);
                  }
                  else
                  {
                     addr303:
                     §§push(5);
                     if(_loc12_ || param2)
                     {
                        §§goto(addr311);
                     }
                     §§goto(addr347);
                  }
               }
               else
               {
                  if("BIRD_WHITE" === _loc11_)
                  {
                     if(_loc12_)
                     {
                        §§push(3);
                        if(_loc13_ && this)
                        {
                        }
                     }
                  }
                  else if("BIRD_YELLOW" === _loc11_)
                  {
                     if(_loc12_)
                     {
                        §§push(4);
                        if(_loc12_)
                        {
                           §§goto(addr347);
                        }
                        else
                        {
                           §§goto(addr342);
                        }
                     }
                  }
                  else if("BIRD_RED" === _loc11_)
                  {
                     if(!_loc13_)
                     {
                        §§goto(addr303);
                     }
                  }
                  else if("BIRD_REDBIG" === _loc11_)
                  {
                     if(!_loc13_)
                     {
                        §§push(6);
                        if(!(_loc13_ && param3))
                        {
                           §§goto(addr347);
                        }
                        else
                        {
                           §§goto(addr342);
                        }
                     }
                  }
                  else if("BIRD_ORANGE" !== _loc11_)
                  {
                     addr347:
                     switch(§§pop())
                     {
                        case 0:
                           _loc10_ = new §'E§(this,param1,this.§^!I§.mLevelEngine.mWorld,this.§^!I§,this.§2!E§,param2,param3,param4,param5,param8,param9);
                           break;
                        case 1:
                           _loc10_ = new §8R§(this,param1,this.§^!I§.mLevelEngine.mWorld,this.§^!I§,this.§2!E§,param2,param3,param4,param5,param8,param9);
                           break;
                        case 2:
                           _loc10_ = new §6d§(this,param1,this.§^!I§.mLevelEngine.mWorld,this.§^!I§,this.§2!E§,param2,param3,param4,param5,param8,param9);
                           break;
                        case 3:
                           _loc10_ = new §4! §(this,param1,this.§^!I§.mLevelEngine.mWorld,this.§^!I§,this.§2!E§,param2,param3,param4,param5,param8,param9);
                           break;
                        case 4:
                           _loc10_ = new §&v§(this,param1,this.§^!I§.mLevelEngine.mWorld,this.§^!I§,this.§2!E§,param2,param3,param4,param5,param8,param9);
                           break;
                        case 5:
                           _loc10_ = new §,!f§(this,param1,this.§^!I§.mLevelEngine.mWorld,this.§^!I§,this.§2!E§,param2,param3,param4,param5,param8,param9);
                           break;
                        case 6:
                           _loc10_ = new §`!,§(this,param1,this.§^!I§.mLevelEngine.mWorld,this.§^!I§,this.§2!E§,param2,param3,param4,param5,param8,param9);
                           break;
                        case 7:
                           _loc10_ = new §['§(this,param1,this.§^!I§.mLevelEngine.mWorld,this.§^!I§,this.§2!E§,param2,param3,param4,param5,param8,param9);
                           break;
                        default:
                           _loc10_ = new §]V§(this,param1,this.§^!I§.mLevelEngine.mWorld,this.§^!I§,this.§2!E§,param2,param3,param4,param5,param8,param9);
                     }
                     return _loc10_;
                     §§push(8);
                  }
                  §§goto(addr347);
               }
               §§goto(addr347);
               if(!_loc13_)
               {
                  §§goto(addr342);
               }
            }
            §§goto(addr347);
         }
         §§goto(addr257);
      }
      
      public function hasBirds() : Boolean
      {
         return this.§<c§ > 0;
      }
      
      public function addObject(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : §[g§
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         var _loc10_:Sprite;
         (_loc10_ = new Sprite()).scaleX = param8;
         if(!_loc14_)
         {
            _loc10_.scaleY = param8;
         }
         var _loc11_:§[g§;
         §§push((_loc11_ = this.§#Y§(_loc10_,param1,param2,param3,param4,param5,param6,param7,param8)).isTexture());
         if(!_loc14_)
         {
            if(§§pop())
            {
               if(_loc15_ || param1)
               {
                  §§push(_loc10_);
                  §§push(this.§1v§);
                  if(_loc15_)
                  {
                     §§push(!§§pop());
                  }
                  §§pop().visible = §§pop();
                  if(!_loc14_)
                  {
                     this.§ #§[this.§ #§.length] = _loc11_;
                     if(!(_loc14_ && param1))
                     {
                        loop0:
                        while(true)
                        {
                           §§push(_loc11_ is §]V§);
                           if(!_loc14_)
                           {
                              §§push(§§pop());
                              if(!_loc14_)
                              {
                                 if(§§pop())
                                 {
                                    if(!(_loc14_ && param1))
                                    {
                                       §§pop();
                                       if(!_loc14_)
                                       {
                                          if(!(_loc14_ && param1))
                                          {
                                             §§push(_loc11_.§4!Y§());
                                             if(_loc15_ || param1)
                                             {
                                                §§push(!§§pop());
                                                if(!_loc14_)
                                                {
                                                   addr77:
                                                   while(true)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         if(!_loc14_)
                                                         {
                                                            loop18:
                                                            while(true)
                                                            {
                                                               this.§,!C§.addChild(_loc10_);
                                                               if(!_loc14_)
                                                               {
                                                                  if(false)
                                                                  {
                                                                     continue loop0;
                                                                  }
                                                                  var _loc12_:*;
                                                                  §§push((_loc12_ = this).§<c§);
                                                                  if(_loc15_ || param3)
                                                                  {
                                                                     §§push(§§pop() + 1);
                                                                  }
                                                                  var _loc13_:* = §§pop();
                                                                  if(_loc15_ || param3)
                                                                  {
                                                                     _loc12_.§<c§ = _loc13_;
                                                                  }
                                                                  if(_loc15_ || this)
                                                                  {
                                                                     loop8:
                                                                     while(true)
                                                                     {
                                                                        §§push(param5);
                                                                        addr246:
                                                                        loop9:
                                                                        while(_loc15_ || param3)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              loop10:
                                                                              for(; !(_loc14_ && param2); if(!(_loc15_ || param3))
                                                                              {
                                                                                 continue;
                                                                              },§§push(this.§^!I§),if(!_loc15_)
                                                                              {
                                                                                 §§goto(addr265);
                                                                              },§§pop().activeObject = _loc11_,§§goto(addr236))
                                                                              {
                                                                                 if(_loc15_)
                                                                                 {
                                                                                    §§push(this.§^!I§);
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop().§?!C§(_loc11_);
                                                                                       addr267:
                                                                                       loop17:
                                                                                       while(true)
                                                                                       {
                                                                                          addr190:
                                                                                          addr286:
                                                                                          addr315:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(param6);
                                                                                             if(_loc15_)
                                                                                             {
                                                                                                addr194:
                                                                                                if(_loc15_ || this)
                                                                                                {
                                                                                                   addr316:
                                                                                                   if(!(_loc14_ && param3))
                                                                                                   {
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         if(_loc15_ || param2)
                                                                                                         {
                                                                                                            if(!(_loc14_ && param1))
                                                                                                            {
                                                                                                               continue loop10;
                                                                                                            }
                                                                                                            continue loop17;
                                                                                                         }
                                                                                                         addr236:
                                                                                                         if(!(_loc14_ && this))
                                                                                                         {
                                                                                                            break loop18;
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            this.§&!,§.addChild(_loc10_);
                                                                                                            addr299:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc14_)
                                                                                                               {
                                                                                                                  break loop9;
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  continue loop8;
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         addr295:
                                                                                                      }
                                                                                                      §§goto(addr185);
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop());
                                                                                                      addr317:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!§§pop())
                                                                                                         {
                                                                                                            break loop0;
                                                                                                         }
                                                                                                         addr293:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!§§pop())
                                                                                                            {
                                                                                                               this.§@!@§.addChild(_loc10_);
                                                                                                               break loop10;
                                                                                                            }
                                                                                                            §§goto(addr295);
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   addr316:
                                                                                                }
                                                                                                break;
                                                                                             }
                                                                                             continue loop9;
                                                                                          }
                                                                                          addr286:
                                                                                          while(_loc15_ || this)
                                                                                          {
                                                                                             §§goto(addr293);
                                                                                             §§goto(addr194);
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§goto(addr316);
                                                                                             §§goto(addr286);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    addr265:
                                                                                 }
                                                                                 §§goto(addr299);
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 continue loop8;
                                                                                 §§goto(addr254);
                                                                              }
                                                                              addr254:
                                                                           }
                                                                           §§goto(addr190);
                                                                        }
                                                                        break loop0;
                                                                        addr319:
                                                                        while(true)
                                                                        {
                                                                           §§push(param9);
                                                                           if(_loc15_ || param2)
                                                                           {
                                                                              §§push(Boolean(§§pop()));
                                                                           }
                                                                           §§goto(addr286);
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr311);
                                                               }
                                                               break;
                                                            }
                                                            addr81:
                                                         }
                                                         addr185:
                                                         return _loc11_;
                                                      }
                                                      §§goto(addr315);
                                                      §§push(_loc11_.front);
                                                      §§goto(addr315);
                                                   }
                                                   addr78:
                                                }
                                             }
                                             §§goto(addr316);
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                continue loop0;
                                             }
                                             addr126:
                                          }
                                       }
                                       §§goto(addr319);
                                    }
                                    §§goto(addr315);
                                 }
                                 §§goto(addr77);
                              }
                              §§goto(addr317);
                           }
                           break;
                        }
                        while(true)
                        {
                           §§pop();
                           §§goto(addr319);
                           §§goto(addr246);
                        }
                     }
                     §§goto(addr311);
                  }
                  §§goto(addr267);
               }
               §§goto(addr81);
            }
            else
            {
               this.§ #§[this.§ #§.length] = _loc11_;
            }
            §§goto(addr126);
         }
         §§goto(addr78);
      }
      
      public function §^b§(param1:int, param2:§[g§, param3:§[g§, param4:Boolean = false, param5:Boolean = false, param6:Number = 0.0, param7:Number = 0.0, param8:Boolean = false, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Number = 0, param13:Number = 0.0, param14:Number = 0.0) : void
      {
         var _loc21_:Boolean = false;
         var _loc22_:Boolean = true;
         var _loc17_:§=y§ = null;
         var _loc18_:* = 0;
         var _loc19_:* = 0;
         var _loc20_:§9s§ = null;
         var _loc15_:int = this.§ #§.indexOf(param2) - this.§1!?§;
         var _loc16_:int = this.§ #§.indexOf(param3) - this.§1!?§;
         if(_loc22_ || param3)
         {
            §§push(_loc15_);
            if(!_loc21_)
            {
               §§push(0);
               if(_loc22_ || param1)
               {
                  §§push(§§pop() >= §§pop());
                  if(_loc22_)
                  {
                     if(§§pop())
                     {
                        if(!_loc21_)
                        {
                           addr70:
                           §§pop();
                           if(_loc22_ || param2)
                           {
                              §§goto(addr81);
                           }
                           §§goto(addr82);
                        }
                     }
                     §§goto(addr81);
                  }
                  §§goto(addr70);
               }
            }
            §§goto(addr81);
         }
         addr81:
         if(_loc16_ >= 0)
         {
            addr82:
            _loc17_ = new §=y§(param1,_loc15_,_loc16_,new Point(0,0),new Point(0,0),param4,param5,param6,param7,param8,param9,param10,param11);
            if(_loc22_ || param1)
            {
               this.§]N§.push(_loc17_);
               while(true)
               {
                  _loc17_.§^`§ = param12;
                  while(_loc22_ || param2)
                  {
                     _loc17_.axisX = param13;
                     while(true)
                     {
                        _loc17_.axisY = param14;
                        loop3:
                        while(true)
                        {
                           §§push(param1);
                           while(true)
                           {
                              if(§§pop() == § f§.§+!7§)
                              {
                                 §§push(int(parseInt(param2.uniqueID)));
                                 while(true)
                                 {
                                    _loc18_ = §§pop();
                                    §§goto(addr161);
                                 }
                              }
                              break;
                              if(_loc21_ && param1)
                              {
                                 continue;
                              }
                              _loc19_ = §§pop();
                              if(_loc21_)
                              {
                                 addr161:
                                 §§goto(addr182);
                              }
                              if(_loc22_)
                              {
                                 continue loop3;
                              }
                              §§goto(addr182);
                           }
                           _loc17_.§@!&§ = this.§^!I§.mLevelEngine.mWorld.§,Y§(_loc17_.§<y§(param2,param3));
                           addr182:
                           §§goto(addr152);
                        }
                     }
                  }
               }
            }
            §§goto(addr165);
         }
         addr152:
         while(true)
         {
            if(_loc21_)
            {
               break loop4;
            }
            if(_loc22_)
            {
               continue loop5;
            }
            continue loop1;
         }
         while(!_loc22_)
         {
            continue loop2;
         }
      }
      
      public function §]!8§(param1:§=y§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            if(!(param1.§@!&§ is b2WeldJoint))
            {
               if(!(_loc4_ && _loc2_))
               {
                  §§goto(addr31);
               }
            }
            var _loc2_:§[g§ = this.§0;§(param1.index1 + this.§1!?§);
            var _loc3_:§[g§ = this.§0;§(param1.index2 + this.§1!?§);
            if(_loc5_)
            {
               this.§^!I§.mLevelEngine.mWorld.§4!F§(param1.§@!&§);
               do
               {
                  param1.§@!&§ = this.§^!I§.mLevelEngine.mWorld.§,Y§(param1.§<y§(_loc2_,_loc3_));
               }
               while(_loc4_ && this);
               
            }
            return;
         }
         addr31:
      }
      
      public function §]b§(param1:§[g§) : Vector.<§=y§>
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:§=y§ = null;
         var _loc2_:Vector.<§=y§> = new Vector.<§=y§>();
         var _loc3_:int = this.§ #§.indexOf(param1) - this.§1!?§;
         if(_loc8_ || this)
         {
            §§push(_loc3_);
            if(!_loc7_)
            {
               if(§§pop() >= 0)
               {
                  addr48:
                  addr47:
                  for each(_loc4_ in this.§]N§)
                  {
                     §§push(_loc4_.index1 == _loc3_);
                     if(_loc8_ || this)
                     {
                        if(!§§pop())
                        {
                           if(!(_loc7_ && _loc2_))
                           {
                              addr90:
                              §§pop();
                              if(_loc7_ && this)
                              {
                                 continue;
                              }
                              §§push(_loc4_.index2 == _loc3_);
                           }
                        }
                        if(§§pop())
                        {
                           if(!(_loc7_ && _loc2_))
                           {
                              _loc2_.push(_loc4_);
                           }
                        }
                        continue;
                     }
                     §§goto(addr90);
                  }
               }
               return _loc2_;
            }
            §§goto(addr48);
         }
         §§goto(addr47);
      }
      
      public function §#!8§() : Vector.<§=y§>
      {
         return this.§]N§;
      }
      
      public function §2$§(param1:§[g§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:int = this.§ #§.indexOf(param1) - this.§1!?§;
         var _loc3_:int = this.§]N§.length - 1;
         loop0:
         while(true)
         {
            §§push(_loc3_);
            if(!_loc5_)
            {
               if(_loc4_ || this)
               {
                  if(§§pop() < 0)
                  {
                     if(!_loc4_)
                     {
                        continue;
                     }
                     if(!_loc5_)
                     {
                        break;
                     }
                     loop3:
                     while(true)
                     {
                        if(_loc5_)
                        {
                           loop2:
                           while(true)
                           {
                              §§push(this.§]N§[_loc3_].index2 == _loc2_);
                              if(_loc4_)
                              {
                                 break;
                              }
                              addr117:
                              while(true)
                              {
                                 §§pop();
                                 continue loop2;
                              }
                           }
                           while(§§pop())
                           {
                              if(_loc4_)
                              {
                                 this.§]N§.splice(_loc3_,1);
                              }
                              continue loop3;
                              §§goto(addr118);
                           }
                           addr118:
                           addr77:
                        }
                        addr64:
                        _loc3_--;
                        continue loop0;
                     }
                  }
                  else
                  {
                     §§push(this.§]N§[_loc3_].index1 == _loc2_);
                     if(_loc4_ || this)
                     {
                        if(!§§pop())
                        {
                           §§goto(addr117);
                        }
                        §§goto(addr77);
                     }
                  }
                  §§goto(addr117);
               }
            }
            §§goto(addr64);
         }
      }
      
      protected function §!K§(param1:§[g§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(param1.uniqueID);
         if(_loc4_ || _loc2_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         var _loc3_:* = int(this.§[!A§.length - 1);
         while(true)
         {
            §§push(_loc3_);
            if(!(_loc5_ && this))
            {
               if(_loc4_)
               {
                  if(§§pop() < 0)
                  {
                     if(_loc4_ || param1)
                     {
                        break;
                     }
                     loop2:
                     while(!(_loc4_ || this))
                     {
                        while(true)
                        {
                           continue loop2;
                        }
                     }
                     continue;
                     addr71:
                  }
                  else if(this.§[!A§[_loc3_].targetId.toString() == _loc2_)
                  {
                     if(!_loc5_)
                     {
                        this.§[!A§.splice(_loc3_,1);
                     }
                     §§goto(addr106);
                  }
                  while(true)
                  {
                     §§push(_loc3_);
                  }
               }
               while(true)
               {
                  §§push(§§pop() - 1);
               }
            }
            while(true)
            {
               _loc3_ = §§pop();
               §§goto(addr71);
            }
         }
      }
      
      public function §?!!§(param1:§[g§, param2:§[g§) : Boolean
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:int = this.§ #§.indexOf(param1) - this.§1!?§;
         var _loc4_:int = this.§ #§.indexOf(param2) - this.§1!?§;
         var _loc5_:* = int(this.§]N§.length - 1);
         loop0:
         while(true)
         {
            §§push(_loc5_);
            if(_loc7_ || param2)
            {
               if(§§pop() < 0)
               {
                  if(!(_loc6_ && param2))
                  {
                     if(_loc7_ || _loc3_)
                     {
                        if(!(_loc6_ && this))
                        {
                           if(!_loc6_)
                           {
                              §§push(false);
                              if(!_loc6_)
                              {
                                 if(!_loc6_)
                                 {
                                    if(_loc7_ || param2)
                                    {
                                       break;
                                    }
                                    loop1:
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       if(!_loc6_)
                                       {
                                          if(!_loc6_)
                                          {
                                             if(§§pop())
                                             {
                                                loop2:
                                                while(true)
                                                {
                                                   §§pop();
                                                   addr164:
                                                   while(true)
                                                   {
                                                      §§push(this.§]N§[_loc5_].index2 == _loc3_);
                                                      addr123:
                                                      while(true)
                                                      {
                                                         if(!(_loc6_ && this))
                                                         {
                                                            addr130:
                                                            while(true)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(true);
                                                                     continue loop2;
                                                                  }
                                                                  addr132:
                                                               }
                                                               else
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc5_);
                                                                     if(!(_loc6_ && _loc3_))
                                                                     {
                                                                        addr111:
                                                                        §§push(§§pop() - 1);
                                                                        while(true)
                                                                        {
                                                                           _loc5_ = §§pop();
                                                                           addr112:
                                                                           while(!_loc7_)
                                                                           {
                                                                              while(_loc6_)
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this.§]N§[_loc5_].index2 == _loc4_);
                                                                                    addr173:
                                                                                    while(true)
                                                                                    {
                                                                                    }
                                                                                 }
                                                                                 §§pop();
                                                                              }
                                                                              continue loop1;
                                                                           }
                                                                           continue loop0;
                                                                        }
                                                                        addr111:
                                                                     }
                                                                     §§goto(addr111);
                                                                  }
                                                                  addr101:
                                                               }
                                                            }
                                                            addr130:
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(§§pop());
                                                            addr175:
                                                            while(true)
                                                            {
                                                               if(!§§pop())
                                                               {
                                                                  while(true)
                                                                  {
                                                                     if(_loc7_)
                                                                     {
                                                                        if(!_loc6_)
                                                                        {
                                                                           §§goto(addr180);
                                                                        }
                                                                        else
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop());
                                                                              addr204:
                                                                              while(true)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop();
                                                                                       §§goto(addr206);
                                                                                    }
                                                                                    addr205:
                                                                                 }
                                                                              }
                                                                           }
                                                                           addr203:
                                                                        }
                                                                        §§goto(addr173);
                                                                     }
                                                                     §§goto(addr205);
                                                                  }
                                                                  addr176:
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr130);
                                                               }
                                                               §§goto(addr181);
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             §§goto(addr130);
                                          }
                                          §§goto(addr204);
                                       }
                                       §§goto(addr175);
                                    }
                                 }
                                 §§goto(addr123);
                              }
                              §§goto(addr133);
                           }
                           §§goto(addr164);
                        }
                        §§goto(addr132);
                     }
                     §§goto(addr101);
                  }
                  §§goto(addr112);
               }
               else
               {
                  §§push(this.§]N§[_loc5_].index1 == _loc3_);
               }
               §§goto(addr203);
            }
            §§goto(addr111);
         }
         return §§pop();
      }
      
      protected function §#Y§(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §[g§
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         var _loc10_:§[g§ = null;
         var _loc11_:§=?§ = null;
         if(!(_loc14_ && param2))
         {
            §§push(param2);
            if(_loc15_)
            {
               if(§§pop().indexOf("BIRD") == 0)
               {
                  if(_loc15_)
                  {
                     addr39:
                     _loc10_ = this.addObjectParseBirds(param1,param2,param3,param4,param5,param6,param7,param8,param9);
                     if(!(_loc14_ && param2))
                     {
                        var _loc12_:*;
                        §§push((_loc12_ = this).§]!9§);
                        if(!(_loc14_ && param2))
                        {
                           §§push(§§pop() + 1);
                        }
                        var _loc13_:* = §§pop();
                        if(_loc15_ || param2)
                        {
                           _loc12_.§]!9§ = _loc13_;
                        }
                        if(_loc15_)
                        {
                           addr267:
                           _loc10_.uniqueID = this.§#!#§();
                           addr86:
                        }
                        return _loc10_;
                     }
                     §§goto(addr86);
                  }
                  else
                  {
                     addr92:
                     _loc10_ = this.§8!g§(param1,param2,param3,param4,param5,param6,param7,param8,param9);
                  }
                  §§goto(addr267);
               }
               else
               {
                  addr88:
                  if(param2.indexOf("PIG") == 0)
                  {
                     §§goto(addr92);
                  }
                  else
                  {
                     §§push((_loc11_ = §3!!§.§^!-§(param2)) == null);
                     if(_loc15_)
                     {
                        §§push(§§pop());
                        if(_loc15_)
                        {
                           if(§§pop())
                           {
                              if(_loc15_)
                              {
                                 addr122:
                                 §§pop();
                                 if(_loc15_)
                                 {
                                    §§push(param2);
                                    if(!_loc14_)
                                    {
                                       §§push(§§pop().indexOf("MISC_") == 0);
                                       if(!(_loc14_ && param3))
                                       {
                                          addr149:
                                          if(§§pop())
                                          {
                                             if(_loc15_)
                                             {
                                                addr158:
                                                param2 = "MISC_FOOD_" + param2.substring(5);
                                                if(!_loc14_)
                                                {
                                                   addr161:
                                                   _loc11_ = §3!!§.§^!-§(param2);
                                                   §§push(_loc11_.§=J§);
                                                   if(_loc15_ || this)
                                                   {
                                                      §§push(§=?§.§=K§);
                                                      if(_loc15_ || param3)
                                                      {
                                                         §§push(§§pop() == §§pop());
                                                         if(_loc15_)
                                                         {
                                                            addr187:
                                                            if(!§§pop())
                                                            {
                                                               if(!(_loc14_ && param2))
                                                               {
                                                                  addr196:
                                                                  §§pop();
                                                                  addr210:
                                                                  if(_loc15_ || this)
                                                                  {
                                                                     addr208:
                                                                     §§push(_loc11_.§=J§ == §=?§.§<![§);
                                                                  }
                                                                  _loc10_ = new §#!J§(this,param1,this.§^!I§.mLevelEngine.mWorld,this.§^!I§,this.§2!E§,param2,param3,param4,param5,param9,_loc11_.front,_loc11_.particleJSONId,_loc11_.particleVariationCount);
                                                                  §§goto(addr267);
                                                               }
                                                            }
                                                         }
                                                         if(§§pop())
                                                         {
                                                            §§goto(addr210);
                                                         }
                                                         else
                                                         {
                                                            _loc10_ = new §[g§(this,param1,this.§^!I§.mLevelEngine.mWorld,this.§^!I§,this.§2!E§,param2,param3,param4,param5,param9,_loc11_.front);
                                                            §§goto(addr267);
                                                         }
                                                      }
                                                   }
                                                }
                                                §§goto(addr208);
                                             }
                                          }
                                          §§goto(addr161);
                                       }
                                       §§goto(addr187);
                                    }
                                    §§goto(addr158);
                                 }
                                 §§goto(addr210);
                              }
                              §§goto(addr196);
                           }
                           §§goto(addr149);
                        }
                        §§goto(addr187);
                     }
                     §§goto(addr122);
                  }
               }
               §§goto(addr92);
            }
            §§goto(addr88);
         }
         §§goto(addr39);
      }
      
      protected function §#!#§() : String
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:§[g§ = null;
         var _loc1_:int = this.§ #§.length;
         var _loc2_:* = false;
         loop0:
         while(true)
         {
            §§push(_loc2_);
            if(_loc6_)
            {
               while(true)
               {
                  §§push(!§§pop());
               }
               addr101:
            }
            while(§§pop())
            {
               §§push(true);
               if(!_loc7_)
               {
                  _loc2_ = §§pop();
                  if(!(_loc6_ || _loc3_))
                  {
                     break;
                  }
                  §§push(0);
                  if(!_loc6_)
                  {
                     return §§pop().toString();
                  }
                  addr104:
                  for each(_loc3_ in this.§ #§)
                  {
                     if(!(_loc7_ && this))
                     {
                        if(_loc3_.uniqueID != _loc1_.toString())
                        {
                           continue;
                        }
                        if(_loc6_)
                        {
                           addr78:
                           _loc1_++;
                           if(_loc6_)
                           {
                              addr81:
                              _loc2_ = false;
                           }
                           break;
                        }
                        §§goto(addr81);
                     }
                     §§goto(addr78);
                  }
                  continue loop0;
               }
               §§goto(addr101);
            }
            §§goto(addr104);
         }
      }
      
      public function §2!4§(param1:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§[g§ = null;
         var _loc2_:* = int(this.§ #§.length - 1);
         loop0:
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§ #§[_loc2_] as §[g§;
            if(!(_loc4_ && _loc3_))
            {
               if(_loc3_)
               {
                  if(!_loc4_)
                  {
                     if(_loc3_.§+_§ > 0)
                     {
                        _loc3_.§2!M§();
                        loop1:
                        while(true)
                        {
                           if(_loc5_ || param1)
                           {
                              while(true)
                              {
                                 loop5:
                                 while(true)
                                 {
                                    _loc3_.§0!P§();
                                    addr79:
                                    addr81:
                                    while(!_loc5_)
                                    {
                                       continue loop1;
                                    }
                                    while(true)
                                    {
                                       §§push(_loc2_);
                                       if(_loc5_)
                                       {
                                          §§push(§§pop() - 1);
                                       }
                                       _loc2_ = §§pop();
                                       if(_loc5_ || _loc2_)
                                       {
                                          addr67:
                                          if(_loc5_ || this)
                                          {
                                             if(true)
                                             {
                                                break;
                                             }
                                             continue loop5;
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr79);
                                       }
                                       §§goto(addr81);
                                    }
                                    continue loop0;
                                 }
                              }
                              addr94:
                           }
                           else
                           {
                              while(true)
                              {
                                 this.removeObjectWithIndex(_loc2_,true,true,true);
                              }
                              addr103:
                           }
                           while(true)
                           {
                              §§goto(addr81);
                              §§goto(addr67);
                           }
                        }
                     }
                  }
                  §§goto(addr103);
               }
               §§goto(addr81);
            }
            §§goto(addr94);
         }
         if(!_loc4_)
         {
            this.§1!-§(param1);
         }
      }
      
      protected function §1!-§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§6s§(param1);
         }
         do
         {
            this.§-M§();
         }
         while(_loc2_ && this);
         
      }
      
      private function §6s§(param1:Number) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:§9s§ = null;
         var _loc5_:* = 0;
         var _loc6_:§[g§ = null;
         if(!_loc7_)
         {
            if(this.§[!A§.length == 0)
            {
               if(!(_loc7_ && _loc2_))
               {
                  return;
               }
            }
         }
         var _loc2_:Vector.<§9s§> = this.§[!A§.concat();
         var _loc3_:* = int(_loc2_.length - 1);
         while(_loc3_ >= 0)
         {
            §§push((_loc4_ = _loc2_[_loc3_]).§,Q§);
            if(!(_loc7_ && this))
            {
               §§push(Boolean(§§pop()));
               if(!_loc7_)
               {
                  if(§§pop())
                  {
                     if(_loc7_)
                     {
                     }
                     addr95:
                     if(§§pop())
                     {
                        if(_loc7_ && param1)
                        {
                           continue;
                        }
                        §§push(_loc4_.update(param1));
                        if(!_loc7_)
                        {
                           §§push(int(§§pop()));
                           if(_loc8_ || _loc2_)
                           {
                              §§push(§§pop());
                              if(!_loc7_)
                              {
                                 _loc5_ = §§pop();
                                 addr163:
                                 if(!_loc7_)
                                 {
                                    addr122:
                                    §§push(-1);
                                 }
                                 _loc3_ = §§pop() - 1;
                                 continue;
                              }
                              if(§§pop() != §§pop())
                              {
                                 if(!(_loc8_ || _loc2_))
                                 {
                                    continue;
                                 }
                                 addr131:
                                 §§push(this);
                                 §§push("");
                                 if(_loc8_)
                                 {
                                    §§push(§§pop() + _loc5_);
                                 }
                                 if(_loc6_ = §§pop().§,y§(§§pop()))
                                 {
                                    if(!_loc7_)
                                    {
                                       this.§9?§(_loc6_,true,true,true);
                                       addr160:
                                       §§push(_loc3_);
                                       if(_loc7_)
                                       {
                                       }
                                       §§goto(addr163);
                                    }
                                 }
                              }
                              §§goto(addr160);
                           }
                           §§goto(addr163);
                        }
                        §§goto(addr122);
                     }
                     §§goto(addr160);
                  }
                  §§goto(addr95);
               }
               §§pop();
               if(_loc8_)
               {
                  §§push(this.§[!A§.indexOf(_loc4_) == -1);
                  if(_loc8_)
                  {
                     §§goto(addr95);
                     §§push(!§§pop());
                  }
                  §§goto(addr95);
               }
               §§goto(addr131);
            }
            §§goto(addr95);
         }
      }
      
      private function §-M§() : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc1_:§=y§ = null;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         var _loc4_:Class = null;
         var _loc5_:* = false;
         loop0:
         for each(_loc1_ in this.§]N§)
         {
            if(!(_loc8_ && this))
            {
               §§push(_loc1_.type == § f§.§?x§);
               if(_loc9_ || _loc3_)
               {
                  §§push(§§pop());
                  if(_loc9_)
                  {
                     if(!§§pop())
                     {
                        if(!(_loc8_ && _loc2_))
                        {
                           §§pop();
                           if(_loc9_ || this)
                           {
                              §§push(_loc1_.type == § f§.§+!J§);
                              if(_loc9_ || _loc2_)
                              {
                                 addr93:
                                 if(§§pop())
                                 {
                                    if(_loc9_)
                                    {
                                       addr96:
                                       §§pop();
                                       if(_loc9_ || _loc3_)
                                       {
                                          §§push(Boolean(_loc1_.§4!2§));
                                          if(_loc9_ || this)
                                          {
                                             addr114:
                                             if(!§§pop())
                                             {
                                                continue;
                                             }
                                             if(!(_loc8_ && _loc2_))
                                             {
                                                addr122:
                                                §§push(_loc1_.§@!&§);
                                                if(_loc9_ || this)
                                                {
                                                   §§push(§§pop() is b2PrismaticJoint);
                                                   if(!(_loc8_ && _loc1_))
                                                   {
                                                      addr140:
                                                      if(§§pop())
                                                      {
                                                         if(_loc9_)
                                                         {
                                                            addr143:
                                                            _loc4_ = b2PrismaticJoint;
                                                            if(!(_loc8_ && _loc1_))
                                                            {
                                                               §§push(_loc1_.§@!&§);
                                                               if(_loc9_ || _loc1_)
                                                               {
                                                                  §§push((§§pop() as b2PrismaticJoint).§ !Q§());
                                                                  if(!_loc8_)
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                     if(_loc9_)
                                                                     {
                                                                        _loc2_ = §§pop();
                                                                        if(_loc9_ || _loc2_)
                                                                        {
                                                                           §§push(_loc1_.§@!&§);
                                                                           if(_loc9_)
                                                                           {
                                                                              addr182:
                                                                              §§push((§§pop() as b2PrismaticJoint).§ U§());
                                                                              if(!_loc8_)
                                                                              {
                                                                                 addr187:
                                                                                 §§push(Number(§§pop()));
                                                                                 if(_loc9_ || _loc1_)
                                                                                 {
                                                                                    addr195:
                                                                                    _loc3_ = §§pop();
                                                                                    if(_loc9_ || _loc2_)
                                                                                    {
                                                                                       addr263:
                                                                                       §§push(Boolean(_loc1_.§"P§));
                                                                                       if(!(_loc8_ && _loc1_))
                                                                                       {
                                                                                          §§push(§§pop());
                                                                                          if(!_loc8_)
                                                                                          {
                                                                                             if(§§pop())
                                                                                             {
                                                                                                if(_loc9_ || _loc3_)
                                                                                                {
                                                                                                   §§pop();
                                                                                                   if(!(_loc8_ && _loc2_))
                                                                                                   {
                                                                                                      §§push(Boolean(_loc1_.§?!W§));
                                                                                                      loop22:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop());
                                                                                                         addr443:
                                                                                                         loop23:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               loop24:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§pop();
                                                                                                                  addr445:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc3_);
                                                                                                                     addr421:
                                                                                                                     loop14:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(0);
                                                                                                                        loop20:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop() > §§pop());
                                                                                                                           loop19:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(!_loc9_)
                                                                                                                              {
                                                                                                                                 continue loop24;
                                                                                                                              }
                                                                                                                              addr425:
                                                                                                                              §§push(§§pop());
                                                                                                                              loop9:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(§§pop())
                                                                                                                                 {
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§pop();
                                                                                                                                       addr428:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(_loc2_);
                                                                                                                                          addr402:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(!_loc9_)
                                                                                                                                             {
                                                                                                                                                continue loop14;
                                                                                                                                             }
                                                                                                                                             §§push(§§pop() >= _loc1_.upperLimit);
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(!(_loc8_ && _loc2_))
                                                                                                                                                {
                                                                                                                                                   break loop9;
                                                                                                                                                }
                                                                                                                                                continue loop19;
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    addr427:
                                                                                                                                 }
                                                                                                                                 break;
                                                                                                                                 §§goto(addr425);
                                                                                                                              }
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop());
                                                                                                                                 loop18:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(!§§pop())
                                                                                                                                    {
                                                                                                                                       addr417:
                                                                                                                                       §§pop();
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          loop2:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(_loc3_);
                                                                                                                                             loop3:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(_loc9_)
                                                                                                                                                {
                                                                                                                                                   §§push(0);
                                                                                                                                                   if(_loc8_)
                                                                                                                                                   {
                                                                                                                                                      continue loop20;
                                                                                                                                                   }
                                                                                                                                                   §§push(§§pop() < §§pop());
                                                                                                                                                   loop4:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(_loc9_)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop());
                                                                                                                                                         loop5:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(§§pop())
                                                                                                                                                            {
                                                                                                                                                               loop6:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(!(_loc9_ || _loc3_))
                                                                                                                                                                  {
                                                                                                                                                                     continue loop22;
                                                                                                                                                                  }
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§pop();
                                                                                                                                                                     addr399:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc2_);
                                                                                                                                                                        if(_loc8_ && _loc3_)
                                                                                                                                                                        {
                                                                                                                                                                           break;
                                                                                                                                                                        }
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() <= _loc1_.lowerLimit);
                                                                                                                                                                           if(_loc9_)
                                                                                                                                                                           {
                                                                                                                                                                              if(!(_loc9_ || _loc2_))
                                                                                                                                                                              {
                                                                                                                                                                                 continue loop6;
                                                                                                                                                                              }
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(Boolean(§§pop()));
                                                                                                                                                                                 if(!(_loc9_ || _loc1_))
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop4;
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(false)
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop2;
                                                                                                                                                                                 }
                                                                                                                                                                                 continue loop0;
                                                                                                                                                                                 addr370:
                                                                                                                                                                                 if(_loc9_ || _loc3_)
                                                                                                                                                                                 {
                                                                                                                                                                                    continue;
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr428);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop());
                                                                                                                                                                              if(_loc8_)
                                                                                                                                                                              {
                                                                                                                                                                                 continue loop5;
                                                                                                                                                                              }
                                                                                                                                                                              if(!_loc9_)
                                                                                                                                                                              {
                                                                                                                                                                                 continue loop18;
                                                                                                                                                                              }
                                                                                                                                                                              if(!(_loc8_ && _loc1_))
                                                                                                                                                                              {
                                                                                                                                                                                 if(!_loc8_)
                                                                                                                                                                                 {
                                                                                                                                                                                    _loc5_ = §§pop();
                                                                                                                                                                                    continue loop4;
                                                                                                                                                                                 }
                                                                                                                                                                                 continue loop23;
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr426);
                                                                                                                                                                           }
                                                                                                                                                                           continue loop18;
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     continue loop3;
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr314);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr407);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr402);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              addr426:
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     continue loop24;
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr314);
                                                                                                         }
                                                                                                      }
                                                                                                      addr442:
                                                                                                      addr292:
                                                                                                   }
                                                                                                   §§goto(addr314);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr442);
                                                                                          }
                                                                                          §§goto(addr443);
                                                                                       }
                                                                                       §§goto(addr398);
                                                                                    }
                                                                                    §§goto(addr445);
                                                                                 }
                                                                                 §§goto(addr421);
                                                                              }
                                                                              §§goto(addr302);
                                                                           }
                                                                           §§goto(addr361);
                                                                        }
                                                                        §§goto(addr359);
                                                                     }
                                                                     §§goto(addr187);
                                                                  }
                                                                  §§goto(addr195);
                                                               }
                                                               §§goto(addr182);
                                                            }
                                                            §§goto(addr292);
                                                         }
                                                         else
                                                         {
                                                            addr209:
                                                            _loc4_ = b2RevoluteJoint;
                                                            if(!(_loc8_ && _loc1_))
                                                            {
                                                               §§push(_loc1_.§@!&§);
                                                               if(_loc9_ || _loc3_)
                                                               {
                                                                  §§push((§§pop() as b2RevoluteJoint).§?!^§());
                                                                  if(!(_loc8_ && _loc1_))
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                     if(!_loc8_)
                                                                     {
                                                                        addr251:
                                                                        _loc2_ = §§pop();
                                                                        if(!_loc8_)
                                                                        {
                                                                           addr256:
                                                                           §§push((_loc1_.§@!&§ as b2RevoluteJoint).§ U§());
                                                                           if(_loc9_)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                           }
                                                                        }
                                                                        §§goto(addr263);
                                                                     }
                                                                     _loc3_ = §§pop();
                                                                     §§goto(addr263);
                                                                  }
                                                                  §§goto(addr251);
                                                               }
                                                            }
                                                            §§goto(addr256);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         addr208:
                                                         if(_loc1_.§@!&§ is b2RevoluteJoint)
                                                         {
                                                            §§goto(addr209);
                                                         }
                                                      }
                                                      §§goto(addr263);
                                                   }
                                                }
                                                §§goto(addr208);
                                             }
                                             §§goto(addr209);
                                          }
                                          §§goto(addr140);
                                       }
                                       §§goto(addr122);
                                    }
                                    §§goto(addr208);
                                 }
                                 §§goto(addr114);
                              }
                              §§goto(addr96);
                           }
                           §§goto(addr122);
                        }
                        §§goto(addr140);
                     }
                     §§goto(addr114);
                  }
               }
               §§goto(addr93);
            }
            §§goto(addr143);
         }
      }
      
      public function addExplosions(param1:int, param2:Number, param3:Number, param4:Vector.<§[g§> = null) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && this))
         {
            this.§[F§.push(§7@§.createExplosion(param1,param2,param3,param4));
         }
         do
         {
            §,!7§.playSound("TntExplosions","ChannelExplosions");
         }
         while(!(_loc6_ || this));
         
      }
      
      public function §0P§(param1:Number, param2:Number) : int
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:§[g§ = null;
         var _loc3_:* = int(this.§ #§.length - 1);
         while(true)
         {
            §§push(_loc3_);
            if(!(_loc5_ && _loc3_))
            {
               if(§§pop() < 0)
               {
                  break;
               }
               if(_loc4_ = this.§ #§[_loc3_])
               {
                  if(!(_loc5_ && param1))
                  {
                     if(_loc4_.isInCoordinates(param1,param2))
                     {
                        if(!(_loc6_ || param1))
                        {
                           continue;
                        }
                        addr65:
                        §§push(_loc3_);
                        if(_loc6_ || this)
                        {
                           return §§pop();
                        }
                     }
                     else
                     {
                        addr76:
                        §§push(_loc3_);
                        if(!(_loc5_ && param2))
                        {
                           §§push(§§pop() - 1);
                        }
                     }
                     _loc3_ = §§pop();
                     continue;
                  }
                  §§goto(addr65);
               }
               §§goto(addr76);
            }
            break;
         }
         return §§pop();
      }
      
      public function §`!2§(param1:Number, param2:Number) : §[g§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:§[g§ = null;
         var _loc3_:* = int(this.§ #§.length - 1);
         while(true)
         {
            if(_loc3_ < 0)
            {
               return null;
            }
            if(_loc4_ = this.§ #§[_loc3_])
            {
               if(_loc6_)
               {
                  break;
               }
               if(_loc4_.isInCoordinates(param1,param2))
               {
                  if(!(_loc6_ && _loc3_))
                  {
                     break;
                  }
               }
               else
               {
                  addr63:
                  §§push(_loc3_);
                  if(_loc5_ || param1)
                  {
                     §§push(§§pop() - 1);
                  }
                  _loc3_ = §§pop();
               }
               continue;
            }
            §§goto(addr63);
         }
         return _loc4_;
      }
      
      public function §#p§(param1:Number, param2:Number) : Vector.<§[g§>
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:§[g§ = null;
         var _loc3_:Vector.<§[g§> = new Vector.<§[g§>();
         var _loc4_:* = int(this.§ #§.length - 1);
         while(_loc4_ >= 0)
         {
            §§push(Boolean(_loc5_ = this.§ #§[_loc4_]));
            if(!_loc6_)
            {
               if(§§pop())
               {
                  if(_loc7_)
                  {
                     §§pop();
                     if(!(_loc7_ || param2))
                     {
                        continue;
                     }
                     §§push(_loc5_.isInCoordinates(param1,param2));
                     if(!(_loc6_ && this))
                     {
                        §§push(Boolean(§§pop()));
                     }
                  }
               }
            }
            if(§§pop())
            {
               if(_loc6_)
               {
                  continue;
               }
               _loc3_.push(_loc5_);
               if(_loc6_ && this)
               {
                  continue;
               }
            }
            §§push(_loc4_);
            if(_loc7_ || _loc3_)
            {
               §§push(§§pop() - 1);
            }
            _loc4_ = §§pop();
         }
         return _loc3_;
      }
      
      public function §0;§(param1:int) : §[g§
      {
         return this.§ #§[param1];
      }
      
      public function §5m§(param1:Number, param2:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:§[g§ = null;
         var _loc3_:* = int(this.§ #§.length - 1);
         while(_loc3_ >= 0)
         {
            (_loc4_ = this.§ #§[_loc3_] as §[g§).§5m§(param2,param1);
            if(_loc5_)
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
      
      private function §^p§(param1:§[g§, param2:Number) : Boolean
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:§[g§ = null;
         if(!_loc9_)
         {
            §§push(this.mSardineCanAdded);
            if(_loc8_ || _loc3_)
            {
               if(!§§pop())
               {
                  if(_loc8_ || param2)
                  {
                     §§push(true);
                     if(_loc8_ || param2)
                     {
                        §§goto(addr52);
                     }
                     else
                     {
                        addr69:
                        if(§§pop())
                        {
                           if(!_loc9_)
                           {
                              §§push(false);
                              if(!_loc9_)
                              {
                                 §§goto(addr75);
                              }
                           }
                           else
                           {
                              addr76:
                              §§push(false);
                           }
                           var _loc3_:* = §§pop();
                           if(_loc8_)
                           {
                              §§push(param1.§+_§);
                              loop0:
                              while(true)
                              {
                                 §§push(param1.§ !G§);
                                 loop1:
                                 while(true)
                                 {
                                    if(§§pop() != §§pop())
                                    {
                                       §§push(this.§&!@§);
                                       loop2:
                                       while(true)
                                       {
                                          §§push(0);
                                          addr526:
                                          while(true)
                                          {
                                             if(§§pop() == §§pop())
                                             {
                                                while(true)
                                                {
                                                   this.§&!@§ = this.§^!I§.§5!H§;
                                                   addr532:
                                                   while(true)
                                                   {
                                                   }
                                                }
                                                addr527:
                                             }
                                             addr505:
                                             loop6:
                                             while(true)
                                             {
                                                §§push(param1.§>!<§());
                                                loop7:
                                                while(true)
                                                {
                                                   §§push(Boolean(§§pop()));
                                                   if(_loc8_ || param2)
                                                   {
                                                      §§push(§§pop());
                                                      loop8:
                                                      while(true)
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            loop9:
                                                            while(true)
                                                            {
                                                               §§pop();
                                                               loop10:
                                                               while(true)
                                                               {
                                                                  §§push(this.§@s§(param1));
                                                                  loop11:
                                                                  while(true)
                                                                  {
                                                                     if(!_loc8_)
                                                                     {
                                                                        continue loop9;
                                                                     }
                                                                     if(_loc9_ && _loc3_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     §§push(Boolean(§§pop()));
                                                                     addr354:
                                                                     while(true)
                                                                     {
                                                                        if(!(_loc9_ && param2))
                                                                        {
                                                                           §§push(§§pop());
                                                                           if(!_loc8_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           continue loop8;
                                                                        }
                                                                        continue loop11;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        if(_loc8_ || param1)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              if(_loc8_)
                                                                              {
                                                                                 §§pop();
                                                                                 loop52:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!(_loc9_ && this))
                                                                                    {
                                                                                       §§push(this.§^!I§.§5!H§);
                                                                                       if(!_loc9_)
                                                                                       {
                                                                                          §§push(§§pop() > this.§&!@§ + this.§?9§.SARDINE_CAN_DELAY_AFTER_HIT);
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc8_ || this)
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      if(!_loc9_)
                                                                                                      {
                                                                                                         §§push(this.mMightyEagleTimer);
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(§§pop() < this.§?9§.MIGHTY_EAGLE_WAIT_TIME)
                                                                                                            {
                                                                                                               loop19:
                                                                                                               while(_loc8_)
                                                                                                               {
                                                                                                                  §§push(this.mMightyEagleTimer);
                                                                                                                  loop20:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(param2);
                                                                                                                     loop21:
                                                                                                                     while(_loc8_)
                                                                                                                     {
                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                        loop22:
                                                                                                                        while(_loc8_ || _loc3_)
                                                                                                                        {
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              _loc4_ = §§pop();
                                                                                                                              addr444:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(this.mMightyEagleTimer);
                                                                                                                                 addr350:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§goto(addr354);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              addr176:
                                                                                                                              if(_loc9_ && this)
                                                                                                                              {
                                                                                                                                 continue;
                                                                                                                              }
                                                                                                                              if(_loc9_ && param1)
                                                                                                                              {
                                                                                                                                 continue loop20;
                                                                                                                              }
                                                                                                                              §§push(this.§?9§.MIGHTY_EAGLE_STARTING_DISTANCE_Y * this.§?9§.MIGHTY_EAGLE_Y_CHANGE);
                                                                                                                              if(!_loc9_)
                                                                                                                              {
                                                                                                                                 if(_loc9_ && this)
                                                                                                                                 {
                                                                                                                                    continue loop21;
                                                                                                                                 }
                                                                                                                                 §§push(§§pop() * 1.07);
                                                                                                                              }
                                                                                                                              addr217:
                                                                                                                              §§push(§§pop() - §§pop());
                                                                                                                              if(_loc8_ || this)
                                                                                                                              {
                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                              }
                                                                                                                              if(_loc8_)
                                                                                                                              {
                                                                                                                                 if(_loc8_)
                                                                                                                                 {
                                                                                                                                    if(_loc8_)
                                                                                                                                    {
                                                                                                                                       addr223:
                                                                                                                                       if(!(_loc9_ && param1))
                                                                                                                                       {
                                                                                                                                          if(!_loc9_)
                                                                                                                                          {
                                                                                                                                             _loc6_ = §§pop();
                                                                                                                                             addr581:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(_loc8_ || _loc3_)
                                                                                                                                                {
                                                                                                                                                   if(!_loc8_)
                                                                                                                                                   {
                                                                                                                                                      continue loop19;
                                                                                                                                                   }
                                                                                                                                                   if(_loc9_ && this)
                                                                                                                                                   {
                                                                                                                                                      break;
                                                                                                                                                   }
                                                                                                                                                   §§push(this.§@s§(param1));
                                                                                                                                                   if(!(_loc9_ && param2))
                                                                                                                                                   {
                                                                                                                                                      addr92:
                                                                                                                                                      if(!(_loc9_ && _loc3_))
                                                                                                                                                      {
                                                                                                                                                         if(§§pop())
                                                                                                                                                         {
                                                                                                                                                            if(_loc8_ || param2)
                                                                                                                                                            {
                                                                                                                                                               continue;
                                                                                                                                                            }
                                                                                                                                                            addr141:
                                                                                                                                                            if(false)
                                                                                                                                                            {
                                                                                                                                                               loop40:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(param1.§`e§());
                                                                                                                                                                  if(_loc8_ || this)
                                                                                                                                                                  {
                                                                                                                                                                     if(!(_loc9_ && this))
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop().GetPosition());
                                                                                                                                                                        if(!(_loc9_ && _loc3_))
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop().y);
                                                                                                                                                                           if(_loc8_ || param1)
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr176);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr217);
                                                                                                                                                                        }
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop().x);
                                                                                                                                                                           addr262:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() - this.§?9§.MIGHTY_EAGLE_STARTING_DISTANCE_X);
                                                                                                                                                                              if(_loc8_ || param1)
                                                                                                                                                                              {
                                                                                                                                                                                 addr274:
                                                                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    _loc5_ = §§pop();
                                                                                                                                                                                    if(_loc9_ && this)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr635:
                                                                                                                                                                                       §§push(_loc3_);
                                                                                                                                                                                       break loop40;
                                                                                                                                                                                    }
                                                                                                                                                                                    if(!(_loc9_ && param2))
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop40;
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr527);
                                                                                                                                                                                 }
                                                                                                                                                                                 addr274:
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr274);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        addr261:
                                                                                                                                                                     }
                                                                                                                                                                     else
                                                                                                                                                                     {
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(param2);
                                                                                                                                                                           if(_loc8_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() * this.§1Q§);
                                                                                                                                                                           }
                                                                                                                                                                           §§pop().§,!d§(§§pop());
                                                                                                                                                                           break loop19;
                                                                                                                                                                        }
                                                                                                                                                                        addr541:
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  addr260:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr261);
                                                                                                                                                                     continue loop40;
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr636);
                                                                                                                                                            }
                                                                                                                                                            addr582:
                                                                                                                                                            _loc7_ = this.addObject("BIRD_MIGHTY_EAGLE",_loc5_,_loc6_,this.§?9§.MIGHTY_EAGLE_FLYING_ANGLE * 1.2);
                                                                                                                                                            if(_loc8_)
                                                                                                                                                            {
                                                                                                                                                               this.mMightyEagleAdded = true;
                                                                                                                                                            }
                                                                                                                                                            addr611:
                                                                                                                                                            this.§&!@§ = 0;
                                                                                                                                                            if(_loc8_)
                                                                                                                                                            {
                                                                                                                                                               _loc7_.§5d§.setScale(1.82);
                                                                                                                                                               if(!(_loc9_ && param1))
                                                                                                                                                               {
                                                                                                                                                                  if(false)
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr611);
                                                                                                                                                                  }
                                                                                                                                                                  addr632:
                                                                                                                                                                  this.mMightyEagleTimer = _loc4_;
                                                                                                                                                                  §§goto(addr635);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr611);
                                                                                                                                                            }
                                                                                                                                                            addr631:
                                                                                                                                                            §§goto(addr631);
                                                                                                                                                            §§goto(addr632);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr582);
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         while(!(_loc9_ && this))
                                                                                                                                                         {
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(§§pop())
                                                                                                                                                               {
                                                                                                                                                                  if(_loc8_)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc9_)
                                                                                                                                                                     {
                                                                                                                                                                        continue loop52;
                                                                                                                                                                     }
                                                                                                                                                                     if(_loc9_)
                                                                                                                                                                     {
                                                                                                                                                                        continue loop10;
                                                                                                                                                                     }
                                                                                                                                                                     §,!7§.playSound("Mighty_Eagle_Selected_1","ChannelBird");
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc8_)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc8_)
                                                                                                                                                                           {
                                                                                                                                                                              §,!7§.playSound("Mighty_Eagle_Flying_1","ChannelBird");
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 addr250:
                                                                                                                                                                                 loop33:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc4_);
                                                                                                                                                                                    addr252:
                                                                                                                                                                                    while(§§pop() >= this.§?9§.MIGHTY_EAGLE_WAIT_TIME)
                                                                                                                                                                                    {
                                                                                                                                                                                       while(_loc8_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr260);
                                                                                                                                                                                          §§push(param1.§`e§());
                                                                                                                                                                                       }
                                                                                                                                                                                       continue loop33;
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr632);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           else
                                                                                                                                                                           {
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(this.§1Q§);
                                                                                                                                                                                 break loop22;
                                                                                                                                                                              }
                                                                                                                                                                              addr554:
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr532);
                                                                                                                                                                     }
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr541);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr635);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr250);
                                                                                                                                                            }
                                                                                                                                                            continue loop52;
                                                                                                                                                            §§goto(addr92);
                                                                                                                                                         }
                                                                                                                                                         addr323:
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr354);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr636);
                                                                                                                                                }
                                                                                                                                                §§goto(addr256);
                                                                                                                                             }
                                                                                                                                             while(_loc8_ || param2)
                                                                                                                                             {
                                                                                                                                                continue loop2;
                                                                                                                                             }
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§goto(addr538);
                                                                                                                                             }
                                                                                                                                             addr581:
                                                                                                                                          }
                                                                                                                                          §§goto(addr350);
                                                                                                                                       }
                                                                                                                                       §§goto(addr298);
                                                                                                                                    }
                                                                                                                                    §§goto(addr252);
                                                                                                                                 }
                                                                                                                                 §§goto(addr262);
                                                                                                                              }
                                                                                                                              §§goto(addr274);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(§§pop() < this.§?9§.SARDINE_CAN_MAX_ROTATION_SPEED)
                                                                                                                           {
                                                                                                                              if(!(_loc9_ && _loc3_))
                                                                                                                              {
                                                                                                                                 §§push(this);
                                                                                                                                 §§push(this.§1Q§);
                                                                                                                                 if(_loc8_)
                                                                                                                                 {
                                                                                                                                    §§push(param2);
                                                                                                                                    if(_loc8_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() * this.§?9§.SARDINE_CAN_ROTATION_ACCELERATION);
                                                                                                                                    }
                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                 }
                                                                                                                                 §§pop().§1Q§ = §§pop();
                                                                                                                                 §§goto(addr581);
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 §§goto(addr635);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr538);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     continue loop1;
                                                                                                                  }
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  this.§&!@§ = 0;
                                                                                                                  addr537:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     continue loop6;
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            if(!(_loc8_ || param1))
                                                                                                            {
                                                                                                               continue;
                                                                                                            }
                                                                                                            if(!_loc8_)
                                                                                                            {
                                                                                                               continue loop0;
                                                                                                            }
                                                                                                            §§goto(addr323);
                                                                                                            §§push(§§pop() > this.§?9§.MIGHTY_EAGLE_SOUND_DELAY);
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr635);
                                                                                                }
                                                                                                addr417:
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr496);
                                                                                             }
                                                                                             §§goto(addr581);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr431);
                                                                                    }
                                                                                    §§goto(addr537);
                                                                                 }
                                                                              }
                                                                              §§goto(addr636);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr495);
                                                                        }
                                                                        §§goto(addr417);
                                                                     }
                                                                  }
                                                                  continue loop7;
                                                               }
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            §§goto(addr494);
                                                         }
                                                      }
                                                   }
                                                   addr636:
                                                   return §§pop();
                                                }
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr554);
                                 }
                              }
                           }
                           §§goto(addr504);
                        }
                     }
                  }
                  §§goto(addr76);
               }
               else
               {
                  addr60:
                  §§push(this.mMightyEagleAdded);
                  if(!(_loc9_ && param1))
                  {
                     §§goto(addr69);
                  }
               }
               addr75:
               return §§pop();
            }
            addr52:
            return §§pop();
         }
         §§goto(addr60);
      }
      
      private function §9-§(param1:§[g§, param2:Number) : Boolean
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc5_:§[g§ = null;
         if(!_loc9_)
         {
            §§push(Boolean(this.§?9§.MIGHTY_EAGLE_USE_SHADE));
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
                           §§push(this.§17§);
                           loop4:
                           while(true)
                           {
                              §§push(!§§pop());
                              if(!_loc9_)
                              {
                                 if(!_loc8_)
                                 {
                                    break;
                                 }
                                 if(!_loc8_)
                                 {
                                    continue loop0;
                                 }
                                 §§push(Boolean(§§pop()));
                                 while(true)
                                 {
                                    loop11:
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       if(!_loc8_)
                                       {
                                          continue loop1;
                                       }
                                       if(§§pop())
                                       {
                                          loop5:
                                          while(true)
                                          {
                                             §§pop();
                                             loop6:
                                             while(_loc8_)
                                             {
                                                while(true)
                                                {
                                                   §§push(this.mMightyEagleTimer);
                                                   if(_loc8_ || param1)
                                                   {
                                                      §§push(§§pop() > this.§?9§.MIGHTY_EAGLE_SHADING_DELAY);
                                                      if(_loc9_)
                                                      {
                                                         break;
                                                      }
                                                      if(!(_loc8_ || this))
                                                      {
                                                         continue loop11;
                                                      }
                                                      if(_loc9_)
                                                      {
                                                         continue loop4;
                                                      }
                                                      while(true)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            loop8:
                                                            while(true)
                                                            {
                                                               this.§17§ = true;
                                                               loop9:
                                                               while(!_loc9_)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     this.§^!I§.§24§();
                                                                     if(_loc8_ || param2)
                                                                     {
                                                                        continue loop8;
                                                                     }
                                                                     continue loop9;
                                                                  }
                                                               }
                                                               continue loop6;
                                                            }
                                                         }
                                                      }
                                                   }
                                                   var _loc3_:* = §§pop();
                                                   if(!(_loc9_ && this))
                                                   {
                                                      §§push(this);
                                                      §§push(this.mMightyEagleTimer);
                                                      if(!(_loc9_ && _loc3_))
                                                      {
                                                         §§push(§§pop() + param2);
                                                      }
                                                      §§pop().mMightyEagleTimer = §§pop();
                                                      if(!_loc9_)
                                                      {
                                                         addr130:
                                                         §§push(this.§^!I§.particles);
                                                         §§push(§7!?§.§=!E§);
                                                         §§push(§do§.§+!c§);
                                                         §§push(§7!?§.§22§);
                                                         §§push(param1.§`e§().GetPosition().x);
                                                         if(_loc8_ || param2)
                                                         {
                                                            §§push(_loc3_);
                                                            if(!_loc9_)
                                                            {
                                                               §§push(§§pop() - §§pop());
                                                               if(_loc8_ || param2)
                                                               {
                                                                  §§push(Math.random() * (_loc3_ * 2));
                                                                  if(_loc8_ || _loc3_)
                                                                  {
                                                                     addr175:
                                                                     §§push(§§pop() + §§pop());
                                                                     §§push(param1.§`e§().GetPosition().y);
                                                                     if(!(_loc9_ && this))
                                                                     {
                                                                        addr186:
                                                                        §§push(_loc3_);
                                                                        if(!_loc9_)
                                                                        {
                                                                           addr204:
                                                                           §§push(§§pop() - §§pop());
                                                                           if(_loc8_ || param1)
                                                                           {
                                                                              §§push(Math.random() * (_loc3_ * 2));
                                                                           }
                                                                           §§pop().addParticle(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),3500,"",§7!?§.§7R§(param1.§>p§),0,0,1,0,4);
                                                                           var _loc4_:* = 1;
                                                                           if(_loc8_)
                                                                           {
                                                                              §§push(this.mMightyEagleHasTouchedGround);
                                                                              loop14:
                                                                              while(true)
                                                                              {
                                                                                 if(!§§pop())
                                                                                 {
                                                                                    this.mMightyEagleHasTouchedGround = param1.§`e§().GetPosition().y >= -5.5;
                                                                                    break;
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    param1.§%b§(this.§?9§.MIGHTY_EAGLE_ROTATION_SPEED * param2);
                                                                                    addr320:
                                                                                    addr322:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(-1);
                                                                                       if(!(_loc8_ || _loc3_))
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       _loc4_ = §§pop();
                                                                                       continue loop14;
                                                                                    }
                                                                                    var _loc6_:* = §§pop();
                                                                                    var _loc7_:* = this.§ #§;
                                                                                    addr393:
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
                                                                                                if(!(_loc9_ && this))
                                                                                                {
                                                                                                   addr352:
                                                                                                   §§pop();
                                                                                                   if(_loc8_ || this)
                                                                                                   {
                                                                                                      §§push(_loc5_.§[a§());
                                                                                                      if(!(_loc9_ && _loc3_))
                                                                                                      {
                                                                                                         addr370:
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            if(!_loc9_)
                                                                                                            {
                                                                                                               §§push(_loc5_.§`e§());
                                                                                                               if(!(_loc9_ && _loc3_))
                                                                                                               {
                                                                                                                  §§pop().SetAwake(true);
                                                                                                                  if(!_loc9_)
                                                                                                                  {
                                                                                                                     addr386:
                                                                                                                     §§push(_loc5_.§`e§());
                                                                                                                  }
                                                                                                                  §§goto(addr393);
                                                                                                               }
                                                                                                               §§pop().SetLinearVelocity(new b2Vec2(0,-18));
                                                                                                               §§goto(addr393);
                                                                                                            }
                                                                                                            §§goto(addr386);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr370);
                                                                                                   }
                                                                                                   §§goto(addr393);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr370);
                                                                                          }
                                                                                          §§goto(addr352);
                                                                                       }
                                                                                       if(_loc8_ || _loc3_)
                                                                                       {
                                                                                          if(!_loc9_)
                                                                                          {
                                                                                             if(!(_loc9_ && this))
                                                                                             {
                                                                                                this.§5S§();
                                                                                                if(_loc8_ || _loc3_)
                                                                                                {
                                                                                                   addr429:
                                                                                                   §§push(this.mMightyEagleTimer > 6000);
                                                                                                   if(_loc8_)
                                                                                                   {
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         if(_loc8_)
                                                                                                         {
                                                                                                            §§pop();
                                                                                                            if(_loc8_ || _loc3_)
                                                                                                            {
                                                                                                               §§push(this.isPigsAlive());
                                                                                                               if(!_loc9_)
                                                                                                               {
                                                                                                                  §§push(Boolean(§§pop()));
                                                                                                                  if(_loc8_)
                                                                                                                  {
                                                                                                                     addr454:
                                                                                                                     if(§§pop())
                                                                                                                     {
                                                                                                                        if(_loc8_)
                                                                                                                        {
                                                                                                                           _loc6_ = 0;
                                                                                                                           if(_loc8_)
                                                                                                                           {
                                                                                                                              _loc7_ = this.§ #§;
                                                                                                                              addr512:
                                                                                                                              for each(_loc5_ in _loc7_)
                                                                                                                              {
                                                                                                                                 §§push(Boolean(_loc5_));
                                                                                                                                 if(_loc8_ || param2)
                                                                                                                                 {
                                                                                                                                    if(§§pop())
                                                                                                                                    {
                                                                                                                                       if(_loc8_)
                                                                                                                                       {
                                                                                                                                          §§pop();
                                                                                                                                          if(!_loc9_)
                                                                                                                                          {
                                                                                                                                             §§push(_loc5_.§[a§());
                                                                                                                                             if(_loc8_)
                                                                                                                                             {
                                                                                                                                                addr493:
                                                                                                                                                if(§§pop())
                                                                                                                                                {
                                                                                                                                                   if(!(_loc9_ && _loc3_))
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc5_);
                                                                                                                                                      §§push(_loc5_.§ !G§);
                                                                                                                                                      if(!_loc9_)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() * 2);
                                                                                                                                                      }
                                                                                                                                                      §§pop().applyDamage(§§pop(),true,true,true);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr493);
                                                                                                                                          }
                                                                                                                                          §§goto(addr512);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr493);
                                                                                                                              }
                                                                                                                              addr515:
                                                                                                                              if(_loc8_)
                                                                                                                              {
                                                                                                                                 addr524:
                                                                                                                                 param1.§!S§(param2,new Point(this.§?9§.MIGHTY_EAGLE_X_DIRECTION,_loc4_ * this.§?9§.MIGHTY_EAGLE_Y_CHANGE),this.§?9§.MIGHTY_EAGLE_FLYING_SPEED);
                                                                                                                                 if(_loc8_)
                                                                                                                                 {
                                                                                                                                    addr543:
                                                                                                                                    if(_loc9_ && param2)
                                                                                                                                    {
                                                                                                                                       break loop14;
                                                                                                                                    }
                                                                                                                                    return false;
                                                                                                                                    addr550:
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§goto(addr524);
                                                                                                                                 }
                                                                                                                                 §§goto(addr543);
                                                                                                                                 addr557:
                                                                                                                                 addr556:
                                                                                                                              }
                                                                                                                              break loop14;
                                                                                                                              addr514:
                                                                                                                           }
                                                                                                                           §§goto(addr515);
                                                                                                                        }
                                                                                                                        §§goto(addr550);
                                                                                                                     }
                                                                                                                     §§goto(addr557);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr543);
                                                                                                            }
                                                                                                            §§goto(addr556);
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr454);
                                                                                                }
                                                                                                §§goto(addr543);
                                                                                             }
                                                                                             §§goto(addr429);
                                                                                          }
                                                                                          §§goto(addr515);
                                                                                       }
                                                                                       §§goto(addr514);
                                                                                    }
                                                                                    §§goto(addr512);
                                                                                 }
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 this.§3!M§ = this.mMightyEagleHasTouchedGround;
                                                                                 §§goto(addr524);
                                                                                 §§goto(addr543);
                                                                              }
                                                                              §§goto(addr543);
                                                                           }
                                                                           §§goto(addr268);
                                                                        }
                                                                        §§push(§§pop() + §§pop());
                                                                     }
                                                                     §§goto(addr204);
                                                                  }
                                                                  §§goto(addr186);
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr175);
                                                      }
                                                      §§goto(addr204);
                                                   }
                                                   §§goto(addr130);
                                                }
                                                continue loop5;
                                             }
                                             continue loop3;
                                          }
                                          addr92:
                                       }
                                       §§goto(addr67);
                                    }
                                 }
                              }
                              §§goto(addr92);
                           }
                           continue loop2;
                        }
                     }
                  }
                  §§goto(addr87);
               }
            }
         }
         §§goto(addr74);
      }
      
      private function §&z§() : void
      {
         var _loc20_:Boolean = true;
         var _loc21_:Boolean = false;
         var _loc1_:§7@§ = null;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc6_:§[g§ = null;
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
         var _loc17_:Number = NaN;
         loop0:
         while(this.§[F§.length > 0)
         {
            _loc1_ = this.§[F§.shift();
            if(!(_loc21_ && _loc1_))
            {
               §§push(_loc1_.§0!2§);
               loop1:
               while(true)
               {
                  §§push(Number(§§pop()));
                  if(!(_loc21_ && _loc2_))
                  {
                     _loc2_ = §§pop();
                     if(!_loc20_)
                     {
                        continue loop0;
                     }
                     §§push(_loc1_.x);
                     if(!(_loc21_ && _loc1_))
                     {
                        if(_loc21_)
                        {
                           continue;
                        }
                        §§push(Number(§§pop()));
                        if(_loc20_ || _loc3_)
                        {
                           _loc3_ = §§pop();
                           if(_loc20_)
                           {
                              loop2:
                              while(true)
                              {
                                 §§push(_loc1_.y);
                                 if(!_loc21_)
                                 {
                                    §§push(Number(§§pop()));
                                    if(_loc20_ || _loc1_)
                                    {
                                       _loc4_ = §§pop();
                                       if(_loc20_ || this)
                                       {
                                          §§push(_loc1_.damage);
                                          if(!(_loc21_ && this))
                                          {
                                             addr847:
                                             §§push(Number(§§pop()));
                                             if(!_loc21_)
                                             {
                                                _loc5_ = §§pop();
                                                if(_loc20_)
                                                {
                                                   loop27:
                                                   while(true)
                                                   {
                                                      if(true)
                                                      {
                                                         §§push(0);
                                                         if(!_loc21_)
                                                         {
                                                            var _loc18_:* = §§pop();
                                                            if(!_loc21_)
                                                            {
                                                               for each(_loc6_ in this.§ #§)
                                                               {
                                                                  if(!_loc21_)
                                                                  {
                                                                     §§push(_loc1_.§-%§ == null);
                                                                     if(_loc20_ || this)
                                                                     {
                                                                        §§push(!§§pop());
                                                                        loop29:
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
                                                                                    §§push(_loc1_.§-%§.indexOf(_loc6_) == -1);
                                                                                    if(_loc20_)
                                                                                    {
                                                                                       continue loop29;
                                                                                    }
                                                                                    addr596:
                                                                                    if(!(_loc20_ || this))
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                 }
                                                                              }
                                                                              addr629:
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              if(!§§pop())
                                                                              {
                                                                                 §§push(_loc6_.§`e§());
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop().GetPosition());
                                                                                    loop32:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop().x);
                                                                                       loop33:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc3_);
                                                                                          loop34:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop() - §§pop());
                                                                                             loop35:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                                loop36:
                                                                                                while(true)
                                                                                                {
                                                                                                   _loc8_ = §§pop();
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc6_.§`e§());
                                                                                                      loop38:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop().GetPosition());
                                                                                                         if(!_loc20_)
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         §§push(§§pop().y);
                                                                                                         loop39:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc4_);
                                                                                                            loop40:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop() - §§pop());
                                                                                                               loop41:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(Number(§§pop()));
                                                                                                                  loop42:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     _loc9_ = §§pop();
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(Number(Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_)));
                                                                                                                        loop44:
                                                                                                                        for(; !(_loc21_ && _loc2_); if(_loc21_ && _loc2_)
                                                                                                                        {
                                                                                                                           continue;
                                                                                                                        },_loc14_ = §§pop(),§§goto(addr284))
                                                                                                                        {
                                                                                                                           §§push(§§pop());
                                                                                                                           if(!_loc21_)
                                                                                                                           {
                                                                                                                              if(_loc21_ && _loc3_)
                                                                                                                              {
                                                                                                                                 continue loop40;
                                                                                                                              }
                                                                                                                              _loc10_ = §§pop();
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc1_.§0!2§);
                                                                                                                              }
                                                                                                                              addr543:
                                                                                                                           }
                                                                                                                           loop46:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(§§pop() <= §§pop())
                                                                                                                              {
                                                                                                                                 while(_loc20_ || _loc1_)
                                                                                                                                 {
                                                                                                                                    §§push(_loc1_.push);
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                       loop49:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(_loc21_ && _loc3_)
                                                                                                                                          {
                                                                                                                                             continue loop42;
                                                                                                                                          }
                                                                                                                                          if(!_loc20_)
                                                                                                                                          {
                                                                                                                                             break;
                                                                                                                                          }
                                                                                                                                          _loc11_ = §§pop();
                                                                                                                                          loop50:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(_loc10_);
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(1);
                                                                                                                                                loop52:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(§§pop() > §§pop())
                                                                                                                                                   {
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc11_);
                                                                                                                                                         addr507:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc10_);
                                                                                                                                                            addr508:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() / §§pop());
                                                                                                                                                               addr509:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                                  addr510:
                                                                                                                                                                  while(_loc20_)
                                                                                                                                                                  {
                                                                                                                                                                     _loc11_ = §§pop();
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr543);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      addr506:
                                                                                                                                                   }
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc10_);
                                                                                                                                                      loop60:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(0);
                                                                                                                                                         addr463:
                                                                                                                                                         while(_loc20_ || _loc2_)
                                                                                                                                                         {
                                                                                                                                                            if(§§pop() > §§pop())
                                                                                                                                                            {
                                                                                                                                                               continue loop50;
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         continue loop52;
                                                                                                                                                         loop70:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(!(_loc20_ || _loc3_))
                                                                                                                                                            {
                                                                                                                                                               continue loop60;
                                                                                                                                                            }
                                                                                                                                                            §§push(_loc9_);
                                                                                                                                                            if(_loc20_ || _loc1_)
                                                                                                                                                            {
                                                                                                                                                               addr412:
                                                                                                                                                               if(_loc20_ || _loc1_)
                                                                                                                                                               {
                                                                                                                                                                  if(!(_loc20_ || this))
                                                                                                                                                                  {
                                                                                                                                                                     break;
                                                                                                                                                                  }
                                                                                                                                                                  §§push(_loc10_);
                                                                                                                                                                  if(_loc20_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() / §§pop());
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                        addr431:
                                                                                                                                                                        addr240:
                                                                                                                                                                        while(_loc20_ || this)
                                                                                                                                                                        {
                                                                                                                                                                           if(!(_loc20_ || _loc1_))
                                                                                                                                                                           {
                                                                                                                                                                              continue loop49;
                                                                                                                                                                           }
                                                                                                                                                                           §§push(Number(§§pop()));
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              _loc13_ = §§pop();
                                                                                                                                                                              addr457:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!_loc21_)
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop38;
                                                                                                                                                                                 }
                                                                                                                                                                                 continue loop50;
                                                                                                                                                                              }
                                                                                                                                                                              continue loop38;
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        if(!(_loc20_ || this))
                                                                                                                                                                        {
                                                                                                                                                                           continue;
                                                                                                                                                                        }
                                                                                                                                                                        if(!(_loc21_ && _loc2_))
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc21_)
                                                                                                                                                                           {
                                                                                                                                                                              continue loop46;
                                                                                                                                                                           }
                                                                                                                                                                           §§push(§§pop() / §§pop());
                                                                                                                                                                           if(!_loc20_)
                                                                                                                                                                           {
                                                                                                                                                                              continue loop44;
                                                                                                                                                                           }
                                                                                                                                                                           if(!_loc21_)
                                                                                                                                                                           {
                                                                                                                                                                              addr261:
                                                                                                                                                                              if(_loc20_ || _loc2_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!(_loc21_ && _loc1_))
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                                                                    continue loop44;
                                                                                                                                                                                 }
                                                                                                                                                                                 continue loop41;
                                                                                                                                                                              }
                                                                                                                                                                              addr479:
                                                                                                                                                                              while(!(_loc21_ && _loc3_))
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc8_);
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc10_);
                                                                                                                                                                                    addr488:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() / §§pop());
                                                                                                                                                                                       addr489:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                          addr490:
                                                                                                                                                                                          while(!_loc21_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                                                                             while(!(_loc21_ && _loc2_))
                                                                                                                                                                                             {
                                                                                                                                                                                                _loc12_ = §§pop();
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue loop70;
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr431);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          continue loop39;
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr412);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr261);
                                                                                                                                                                              }
                                                                                                                                                                              continue loop35;
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr456);
                                                                                                                                                                        }
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr508);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     addr430:
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr488);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr493);
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr487);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr430);
                                                                                                                                                         }
                                                                                                                                                         continue loop34;
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                if(!(_loc20_ || this))
                                                                                                                                                {
                                                                                                                                                   continue;
                                                                                                                                                }
                                                                                                                                                §§push(_loc10_);
                                                                                                                                                if(!_loc21_)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr240);
                                                                                                                                                }
                                                                                                                                                §§goto(addr314);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       continue loop36;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr630);
                                                                                                                              }
                                                                                                                              §§goto(addr301);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        continue loop33;
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      continue loop32;
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    if(_loc21_ && _loc2_)
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                    §§pop().ApplyImpulse(new b2Vec2(_loc12_,_loc13_),new b2Vec2(_loc3_,_loc4_));
                                                                                    §§goto(addr388);
                                                                                 }
                                                                              }
                                                                              §§goto(addr605);
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr629);
                                                                  }
                                                                  §§goto(addr630);
                                                               }
                                                            }
                                                            if(!(_loc21_ && _loc3_))
                                                            {
                                                               §§push(this.§^!I§);
                                                               while(true)
                                                               {
                                                                  §§push(§§pop().particles);
                                                                  addr871:
                                                                  while(true)
                                                                  {
                                                                     §§push(this.getMainExplosionCoreName(_loc1_.type));
                                                                     addr875:
                                                                     while(true)
                                                                     {
                                                                        §§push(§do§.§+!c§);
                                                                        addr877:
                                                                        while(true)
                                                                        {
                                                                           §§push(§7!?§.§2B§);
                                                                           addr879:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc3_);
                                                                              addr880:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc4_);
                                                                                 addr881:
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop().addParticle(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),600,"",§7!?§.§%!>§,0,0,0,0,1,20,true);
                                                                                    addr893:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(30);
                                                                                       if(_loc20_ || _loc1_)
                                                                                       {
                                                                                          _loc7_ = §§pop();
                                                                                          while(true)
                                                                                          {
                                                                                             addr904:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc7_);
                                                                                             }
                                                                                          }
                                                                                          addr867:
                                                                                       }
                                                                                       addr905:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(150);
                                                                                          addr906:
                                                                                          while(true)
                                                                                          {
                                                                                             if(§§pop() < §§pop())
                                                                                             {
                                                                                                §§push(0.75);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                addr829:
                                                                                             }
                                                                                             continue loop0;
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
                                                               addr870:
                                                            }
                                                            loop94:
                                                            while(true)
                                                            {
                                                               if(false)
                                                               {
                                                                  loop11:
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§^!I§);
                                                                     if(_loc20_ || _loc2_)
                                                                     {
                                                                        §§push(§§pop().particles);
                                                                        if(!(_loc20_ || _loc1_))
                                                                        {
                                                                           break;
                                                                        }
                                                                        §§push(§7!?§.§,M§);
                                                                        if(!(_loc21_ && _loc1_))
                                                                        {
                                                                           §§push(§do§.§+!c§);
                                                                           if(!(_loc21_ && _loc2_))
                                                                           {
                                                                              §§push(§7!?§.§22§);
                                                                              if(_loc20_ || _loc1_)
                                                                              {
                                                                                 §§push(_loc3_);
                                                                                 if(_loc20_)
                                                                                 {
                                                                                    §§push(_loc4_);
                                                                                    if(_loc20_)
                                                                                    {
                                                                                       §§push(_loc16_);
                                                                                       §§push("");
                                                                                       §§push(§7!?§.§%!>§);
                                                                                       §§push(_loc15_);
                                                                                       if(_loc20_ || _loc1_)
                                                                                       {
                                                                                          §§push(§§pop() * Math.cos(_loc17_));
                                                                                       }
                                                                                       §§push(_loc15_);
                                                                                       if(_loc20_ || _loc2_)
                                                                                       {
                                                                                          §§push(-§§pop());
                                                                                          if(!_loc21_)
                                                                                          {
                                                                                             addr760:
                                                                                             §§push(§§pop() * Math.sin(_loc17_));
                                                                                          }
                                                                                          §§pop().addParticle(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),20,0);
                                                                                          loop12:
                                                                                          while(_loc20_)
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc7_);
                                                                                                if(!(_loc21_ && _loc3_))
                                                                                                {
                                                                                                   break loop27;
                                                                                                }
                                                                                                addr668:
                                                                                                while(true)
                                                                                                {
                                                                                                   _loc7_ = §§pop();
                                                                                                   if(_loc21_ && _loc1_)
                                                                                                   {
                                                                                                      continue loop0;
                                                                                                   }
                                                                                                   if(_loc21_)
                                                                                                   {
                                                                                                      continue loop12;
                                                                                                   }
                                                                                                   if(!_loc21_)
                                                                                                   {
                                                                                                      continue loop94;
                                                                                                   }
                                                                                                   §§goto(addr893);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          while(!_loc21_)
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(1250);
                                                                                                loop4:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(Math.random() * 750);
                                                                                                   addr812:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                      addr813:
                                                                                                      while(_loc20_)
                                                                                                      {
                                                                                                         §§push(Number(§§pop()));
                                                                                                         while(!(_loc21_ && _loc1_))
                                                                                                         {
                                                                                                            if(!_loc21_)
                                                                                                            {
                                                                                                               _loc16_ = §§pop();
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(_loc7_);
                                                                                                                  if(_loc21_)
                                                                                                                  {
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  continue loop4;
                                                                                                                  addr798:
                                                                                                                  if(!(_loc20_ || _loc3_))
                                                                                                                  {
                                                                                                                     continue;
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     continue loop11;
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr905);
                                                                                                               addr826:
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(Number(§§pop()));
                                                                                                               break loop2;
                                                                                                            }
                                                                                                         }
                                                                                                         break loop2;
                                                                                                      }
                                                                                                      break loop1;
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr867);
                                                                                          addr854:
                                                                                       }
                                                                                       §§goto(addr760);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr881);
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr880);
                                                                                 }
                                                                                 §§goto(addr881);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr879);
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr877);
                                                                           }
                                                                           §§goto(addr879);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr875);
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr870);
                                                                     }
                                                                  }
                                                                  §§goto(addr871);
                                                               }
                                                               §§goto(addr904);
                                                            }
                                                         }
                                                      }
                                                      continue loop2;
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(5);
                                                      if(!(_loc21_ && this))
                                                      {
                                                         if(!_loc21_)
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            if(!_loc21_)
                                                            {
                                                               §§push(int(§§pop()));
                                                               if(!_loc21_)
                                                               {
                                                                  §§goto(addr668);
                                                               }
                                                               §§goto(addr905);
                                                            }
                                                            §§goto(addr793);
                                                         }
                                                         §§goto(addr782);
                                                      }
                                                      §§goto(addr906);
                                                   }
                                                   addr83:
                                                }
                                                §§goto(addr856);
                                             }
                                             while(true)
                                             {
                                                §§push(Math.random() * _loc2_);
                                                addr851:
                                                while(true)
                                                {
                                                   §§goto(addr852);
                                                }
                                             }
                                             addr847:
                                          }
                                          break loop1;
                                       }
                                       §§goto(addr805);
                                    }
                                    §§goto(addr795);
                                 }
                                 break;
                              }
                              while(true)
                              {
                                 _loc15_ = §§pop();
                                 §§goto(addr854);
                              }
                              addr853:
                           }
                           §§goto(addr769);
                        }
                        §§goto(addr847);
                     }
                     §§goto(addr852);
                  }
                  break;
               }
               while(true)
               {
                  §§push(_loc2_);
                  if(_loc20_ || this)
                  {
                     §§push(§§pop() * §§pop());
                     if(!(_loc21_ && _loc1_))
                     {
                        §§goto(addr847);
                     }
                     §§goto(addr853);
                  }
                  §§goto(addr851);
                  §§goto(addr829);
               }
            }
            §§goto(addr83);
         }
      }
      
      protected function §?!@§(param1:§[g§, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            param1.applyDamage(param2,false,false,false,true);
         }
      }
      
      protected function getMainExplosionCoreName(param1:int) : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(param1);
         if(_loc3_ || _loc3_)
         {
         }
         switch(§§pop())
         {
         }
         return §7!?§.§[!M§;
      }
      
      public function §6u§(param1:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:§[g§ = null;
         var _loc3_:* = int(this.§ #§.length - 1);
         loop0:
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§ #§[_loc3_];
            if(!_loc4_)
            {
               §§push(_loc2_.§9W§());
               if(_loc5_)
               {
                  if(!§§pop())
                  {
                     §§push(_loc2_.§4!Y§());
                     loop1:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           §§push(this.§@s§(_loc2_));
                           loop2:
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 §§push(_loc2_.isReadyToBeRemoved(param1));
                                 loop3:
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       §§push(_loc2_.§2!N§());
                                       if(!(_loc4_ && _loc2_))
                                       {
                                          §§push(Boolean(§§pop()));
                                       }
                                       loop4:
                                       while(!_loc4_)
                                       {
                                          if(!_loc5_)
                                          {
                                             continue loop1;
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
                                                   loop7:
                                                   while(true)
                                                   {
                                                      §§push(_loc2_.§2!!§());
                                                      if(!_loc4_)
                                                      {
                                                         if(_loc4_)
                                                         {
                                                            continue loop3;
                                                         }
                                                         if(_loc5_ || _loc2_)
                                                         {
                                                            §§push(Boolean(§§pop()));
                                                         }
                                                         loop23:
                                                         while(true)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               loop19:
                                                               while(true)
                                                               {
                                                                  this.removeObjectWithIndex(_loc3_,false,false,false);
                                                                  addr246:
                                                                  while(true)
                                                                  {
                                                                     continue loop19;
                                                                  }
                                                               }
                                                               addr230:
                                                            }
                                                            while(true)
                                                            {
                                                               addr37:
                                                               loop15:
                                                               while(true)
                                                               {
                                                                  §§push(_loc3_);
                                                                  if(!_loc4_)
                                                                  {
                                                                     §§push(§§pop() - 1);
                                                                  }
                                                                  _loc3_ = §§pop();
                                                                  if(!_loc4_)
                                                                  {
                                                                     if(_loc4_ && _loc2_)
                                                                     {
                                                                        continue loop6;
                                                                     }
                                                                     if(_loc5_)
                                                                     {
                                                                        if(_loc5_ || this)
                                                                        {
                                                                           if(true)
                                                                           {
                                                                              break;
                                                                           }
                                                                           continue loop7;
                                                                        }
                                                                        addr225:
                                                                        while(true)
                                                                        {
                                                                           continue loop23;
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           this.removeObjectWithIndex(_loc3_,false,true,true);
                                                                        }
                                                                        addr170:
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     addr103:
                                                                     while(true)
                                                                     {
                                                                        if(_loc4_ && _loc2_)
                                                                        {
                                                                        }
                                                                        continue loop15;
                                                                     }
                                                                     addr103:
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     if(!_loc4_)
                                                                     {
                                                                        if(_loc5_ || _loc2_)
                                                                        {
                                                                           continue loop15;
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           if(_loc5_)
                                                                           {
                                                                              if(_loc5_)
                                                                              {
                                                                                 _loc2_.§0!5§(§"B§.§!G§);
                                                                                 loop18:
                                                                                 while(true)
                                                                                 {
                                                                                    this.removeObjectWithIndex(_loc3_,false,false,false);
                                                                                    addr178:
                                                                                    while(true)
                                                                                    {
                                                                                       if(!(_loc5_ || _loc2_))
                                                                                       {
                                                                                          continue loop18;
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          continue loop15;
                                                                                       }
                                                                                       continue loop18;
                                                                                    }
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr230);
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 this.§9-§(_loc2_,param1);
                                                                                 addr212:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!(_loc4_ && param1))
                                                                                    {
                                                                                       continue loop15;
                                                                                    }
                                                                                 }
                                                                              }
                                                                              addr208:
                                                                           }
                                                                           §§goto(addr246);
                                                                        }
                                                                        addr193:
                                                                     }
                                                                     §§goto(addr212);
                                                                     §§goto(addr103);
                                                                  }
                                                               }
                                                               continue loop0;
                                                            }
                                                         }
                                                      }
                                                      if(_loc4_)
                                                      {
                                                         break;
                                                      }
                                                      if(!_loc5_)
                                                      {
                                                         continue loop4;
                                                      }
                                                   }
                                                   continue loop5;
                                                }
                                             }
                                          }
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                if(!(_loc4_ && this))
                                                {
                                                   if(!(_loc4_ && _loc2_))
                                                   {
                                                      if(_loc5_)
                                                      {
                                                         _loc2_.update(param1);
                                                         §§goto(addr103);
                                                      }
                                                      §§goto(addr178);
                                                   }
                                                   else
                                                   {
                                                      while(true)
                                                      {
                                                         _loc2_.§0!5§(§"B§.§!G§);
                                                      }
                                                      addr166:
                                                   }
                                                   §§goto(addr170);
                                                }
                                                §§goto(addr103);
                                             }
                                             §§goto(addr37);
                                          }
                                       }
                                       continue loop2;
                                    }
                                    §§goto(addr166);
                                 }
                              }
                              §§goto(addr193);
                           }
                        }
                        §§goto(addr208);
                     }
                  }
                  §§goto(addr225);
               }
               §§goto(addr229);
            }
            §§goto(addr185);
         }
         if(_loc5_)
         {
            this.§&z§();
         }
      }
      
      private function §5S§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§=y§ = null;
         for each(_loc1_ in this.§]N§)
         {
            if(!_loc5_)
            {
               if(_loc1_.type != § f§.§+!7§)
               {
                  if(!_loc5_)
                  {
                     this.§^!I§.mLevelEngine.mWorld.§4!F§(_loc1_.§@!&§);
                  }
               }
            }
         }
      }
      
      public function §&!!§() : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§[g§ = null;
         var _loc1_:int = 0;
         while(true)
         {
            if(_loc1_ >= this.§ #§.length)
            {
               return false;
            }
            _loc2_ = this.§ #§[_loc1_];
            if(!(_loc3_ && this))
            {
               §§push(_loc2_.explode());
               if(!_loc4_)
               {
                  break;
               }
               if(§§pop())
               {
                  if(_loc4_ || _loc1_)
                  {
                     §§push(true);
                     break;
                  }
               }
            }
            _loc1_++;
         }
         return §§pop();
      }
      
      public function §@s§(param1:§[g§) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(Boolean(param1));
            if(!_loc3_)
            {
               §§push(§§pop());
               loop0:
               while(true)
               {
                  if(§§pop())
                  {
                     addr129:
                     while(true)
                     {
                        §§pop();
                        addr130:
                        while(true)
                        {
                           §§push(param1.§-!6§.§4!?§() == §9!,§.§;a§);
                           addr97:
                           while(true)
                           {
                              §§push(!§§pop());
                              addr98:
                              while(true)
                              {
                                 §§push(Boolean(§§pop()));
                              }
                           }
                        }
                     }
                     addr129:
                  }
                  while(true)
                  {
                     continue loop0;
                  }
               }
            }
            §§goto(addr129);
         }
         §§goto(addr111);
      }
      
      public function removeObjectWithIndex(param1:int, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc6_:§=y§ = null;
         var _loc7_:§9s§ = null;
         if(_loc12_ || param3)
         {
            if(param1 < 0)
            {
               if(_loc12_ || this)
               {
                  §§goto(addr39);
               }
            }
            var _loc5_:§[g§;
            §§push((_loc5_ = this.§ #§[param1]).§[a§());
            if(_loc12_)
            {
               if(§§pop())
               {
                  if(_loc12_ || param3)
                  {
                     var _loc8_:*;
                     §§push((_loc8_ = this).§&!P§);
                     if(_loc12_ || param1)
                     {
                        §§push(§§pop() + 1);
                     }
                     var _loc9_:* = §§pop();
                     if(!_loc13_)
                     {
                        _loc8_.§&!P§ = _loc9_;
                     }
                     if(!_loc13_)
                     {
                        addr239:
                        if(_loc5_ == this.§^!I§.activeObject)
                        {
                           while(true)
                           {
                              §§push(this.§^!I§);
                              addr256:
                              loop19:
                              while(true)
                              {
                                 §§pop().activeObject = null;
                                 addr258:
                                 while(true)
                                 {
                                    continue loop19;
                                 }
                              }
                           }
                           addr254:
                        }
                        while(true)
                        {
                           §§push(param2);
                           addr203:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 loop25:
                                 while(true)
                                 {
                                    §§push(this.§^!I§);
                                    if(_loc12_)
                                    {
                                       §§push(_loc5_.§-!6§.score);
                                       §§push(§'-§.§@!4§);
                                       §§push(true);
                                       §§push(_loc5_.§`e§().GetPosition().x);
                                       §§push(_loc5_.§`e§().GetPosition().y);
                                       if(!_loc13_)
                                       {
                                          §§push(3);
                                          if(!(_loc13_ && this))
                                          {
                                             addr233:
                                             §§push(§§pop() - §§pop());
                                             §§push(§7!?§.§=I§(_loc5_.§>p§));
                                          }
                                          §§pop().addScore(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
                                          loop0:
                                          while(true)
                                          {
                                             addr191:
                                             while(true)
                                             {
                                                §§push(param3);
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      while(true)
                                                      {
                                                         this.addDestructionParticles(_loc5_,this.§^!I§.particles);
                                                         addr200:
                                                         while(true)
                                                         {
                                                         }
                                                      }
                                                      addr194:
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(param4);
                                                      loop6:
                                                      while(true)
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            continue;
                                                         }
                                                         loop7:
                                                         while(true)
                                                         {
                                                            if(!_loc13_)
                                                            {
                                                               if(_loc13_ && param3)
                                                               {
                                                                  continue loop25;
                                                               }
                                                               if(!_loc13_)
                                                               {
                                                                  this.checkExplosions(_loc5_);
                                                                  while(true)
                                                                  {
                                                                     continue loop6;
                                                                     addr117:
                                                                     if(_loc13_ && param1)
                                                                     {
                                                                        continue;
                                                                     }
                                                                     if(!(_loc12_ || param3))
                                                                     {
                                                                        continue loop7;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        if(false)
                                                                        {
                                                                           loop11:
                                                                           while(true)
                                                                           {
                                                                              this.§2$§(_loc5_);
                                                                              while(!_loc13_)
                                                                              {
                                                                                 if(_loc13_)
                                                                                 {
                                                                                    continue loop0;
                                                                                 }
                                                                                 this.§!K§(_loc5_);
                                                                                 if(_loc13_)
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 §§goto(addr117);
                                                                              }
                                                                              addr170:
                                                                              addr172:
                                                                              while(_loc13_)
                                                                              {
                                                                                 break loop7;
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 continue loop11;
                                                                              }
                                                                           }
                                                                        }
                                                                        _loc8_ = 0;
                                                                        _loc9_ = this.§]N§;
                                                                        break;
                                                                     }
                                                                     loop14:
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
                                                                                 if(!(_loc13_ && param3))
                                                                                 {
                                                                                    var _loc10_:*;
                                                                                    var _loc11_:* = (_loc10_ = _loc6_).index1 - 1;
                                                                                    if(!(_loc13_ && param1))
                                                                                    {
                                                                                       _loc10_.index1 = _loc11_;
                                                                                    }
                                                                                    if(_loc13_ && this)
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                 }
                                                                              }
                                                                              if(_loc6_.index2 >= param1)
                                                                              {
                                                                                 if(!(_loc13_ && param3))
                                                                                 {
                                                                                    _loc11_ = (_loc10_ = _loc6_).index2 - 1;
                                                                                    if(!(_loc13_ && this))
                                                                                    {
                                                                                       _loc10_.index2 = _loc11_;
                                                                                    }
                                                                                 }
                                                                              }
                                                                              continue;
                                                                           }
                                                                           if(_loc12_ || param2)
                                                                           {
                                                                              if(!_loc13_)
                                                                              {
                                                                                 if(_loc12_ || param1)
                                                                                 {
                                                                                    _loc8_ = 0;
                                                                                    if(_loc12_ || param2)
                                                                                    {
                                                                                       _loc9_ = this.§[!A§;
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§hasnext(_loc9_,_loc8_));
                                                                                          break loop14;
                                                                                       }
                                                                                       addr443:
                                                                                       if(!(_loc13_ && param2))
                                                                                       {
                                                                                          addr451:
                                                                                          _loc5_.dispose();
                                                                                       }
                                                                                       _loc5_ = null;
                                                                                       if(!(_loc13_ && this))
                                                                                       {
                                                                                          this.§ #§[param1] = null;
                                                                                          do
                                                                                          {
                                                                                             this.§ #§.splice(param1,1);
                                                                                          }
                                                                                          while(!(_loc12_ || this));
                                                                                          
                                                                                       }
                                                                                       return;
                                                                                       addr442:
                                                                                       addr440:
                                                                                    }
                                                                                    §§goto(addr443);
                                                                                 }
                                                                                 §§goto(addr451);
                                                                              }
                                                                              §§goto(addr443);
                                                                           }
                                                                           §§goto(addr442);
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
                                                                           §§push(_loc7_.§6!A§);
                                                                           if(!(_loc13_ && param1))
                                                                           {
                                                                              §§push(param1);
                                                                              if(!_loc13_)
                                                                              {
                                                                                 if(§§pop() == §§pop())
                                                                                 {
                                                                                    if(_loc12_)
                                                                                    {
                                                                                       _loc7_.§,Q§ = true;
                                                                                       if(_loc12_ || param2)
                                                                                       {
                                                                                          addr409:
                                                                                          if(_loc7_.§6!A§ < param1)
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                          if(!(_loc12_ || param1))
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§push((_loc10_ = _loc7_).§6!A§);
                                                                                    if(_loc12_)
                                                                                    {
                                                                                       §§push(§§pop() - 1);
                                                                                    }
                                                                                    _loc11_ = §§pop();
                                                                                    if(_loc12_ || param1)
                                                                                    {
                                                                                       _loc10_.§6!A§ = _loc11_;
                                                                                    }
                                                                                    continue;
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr409);
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr258);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr194);
                                                            }
                                                         }
                                                         §§goto(addr200);
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          addr238:
                                       }
                                       §§goto(addr233);
                                    }
                                    break;
                                 }
                                 §§goto(addr256);
                              }
                              §§goto(addr191);
                           }
                        }
                     }
                     §§goto(addr131);
                  }
                  §§goto(addr166);
               }
               else
               {
                  §§push(_loc5_.§2!N§());
                  if(_loc12_ || param3)
                  {
                     if(§§pop())
                     {
                        if(_loc12_)
                        {
                           §§push((_loc8_ = this).§<c§);
                           if(!_loc13_)
                           {
                              §§push(§§pop() - 1);
                           }
                           _loc9_ = §§pop();
                           if(_loc12_)
                           {
                              _loc8_.§<c§ = _loc9_;
                           }
                           if(_loc12_)
                           {
                              §§goto(addr239);
                           }
                           §§goto(addr238);
                        }
                        §§goto(addr172);
                     }
                     §§goto(addr239);
                  }
               }
               §§goto(addr203);
            }
            §§goto(addr161);
         }
         addr39:
      }
      
      protected function addDestructionParticles(param1:§[g§, param2:§do§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || this)
         {
            param1.addDestructionParticles(param2);
         }
      }
      
      protected function §7!V§(param1:Sprite) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            §§push(this.§@!@§);
            if(_loc3_ || this)
            {
               if(!§§pop().contains(param1))
               {
                  loop0:
                  while(true)
                  {
                     §§push(this.§,!C§);
                     if(!(_loc2_ && _loc3_))
                     {
                        if(!§§pop().contains(param1))
                        {
                           loop1:
                           do
                           {
                              §§push(this.§6!Q§);
                              if(_loc3_)
                              {
                                 if(!§§pop().contains(param1))
                                 {
                                    do
                                    {
                                       §§push(this.§&!,§);
                                       if(_loc3_ || _loc2_)
                                       {
                                          if(!§§pop().contains(param1))
                                          {
                                             return;
                                          }
                                          if(!_loc2_)
                                          {
                                             if(_loc2_)
                                             {
                                                addr132:
                                                §§push(this.§,!C§);
                                                break loop0;
                                             }
                                             addr51:
                                             this.§&!,§.removeChild(param1);
                                          }
                                          if(_loc3_)
                                          {
                                             if(_loc3_)
                                             {
                                                return;
                                             }
                                             addr94:
                                             if(!(_loc2_ && _loc3_))
                                             {
                                                if(!(_loc2_ && _loc2_))
                                                {
                                                   return;
                                                }
                                                continue loop0;
                                             }
                                             continue loop1;
                                          }
                                          continue;
                                       }
                                       §§goto(addr51);
                                    }
                                    while(!_loc2_);
                                    
                                    return;
                                    addr136:
                                 }
                                 if(_loc3_)
                                 {
                                    if(!(_loc3_ || _loc3_))
                                    {
                                       addr164:
                                       this.§@!@§.removeChild(param1);
                                       addr162:
                                       break;
                                    }
                                    addr92:
                                    this.§6!Q§.removeChild(param1);
                                 }
                                 §§goto(addr94);
                              }
                              §§goto(addr92);
                           }
                           while(!(_loc2_ && _loc3_));
                           
                           return;
                        }
                        §§goto(addr132);
                     }
                     break;
                  }
                  §§pop().removeChild(param1);
                  §§goto(addr136);
               }
               §§goto(addr162);
            }
            §§goto(addr164);
         }
         §§goto(addr136);
      }
      
      protected function checkExplosions(param1:§[g§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            §§push(param1.§,X§());
            loop0:
            while(true)
            {
               §§push(§§pop().toUpperCase() == "WHITE_EGG");
               addr141:
               loop1:
               while(true)
               {
                  if(!§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        addr144:
                        do
                        {
                           §§push(param1.§#!A§());
                           if(!(_loc2_ && _loc3_))
                           {
                              §§push(Boolean(§§pop()));
                           }
                           if(_loc2_ && this)
                           {
                              continue loop2;
                           }
                        }
                        while(!(_loc2_ && param1));
                        
                        continue loop1;
                     }
                  }
                  loop4:
                  while(§§pop())
                  {
                     if(!_loc2_)
                     {
                        continue loop0;
                     }
                     addr106:
                     while(true)
                     {
                        if(!(_loc2_ && param1))
                        {
                           this.addExplosions(§7@§.§6U§,param1.§`e§().GetPosition().x,param1.§`e§().GetPosition().y);
                           break loop4;
                           addr125:
                        }
                        §§goto(addr144);
                     }
                  }
                  §§goto(addr25);
               }
            }
            addr138:
         }
         while(true)
         {
            §§push(param1.§>p§);
            if(_loc3_ || _loc3_)
            {
               if(§§pop().toUpperCase() != §4! §.§6r§)
               {
                  this.addExplosions(§7@§.§`!a§,param1.§`e§().GetPosition().x,param1.§`e§().GetPosition().y);
                  if(_loc3_ || param1)
                  {
                     if(_loc2_)
                     {
                        §§goto(addr106);
                     }
                     addr25:
                     return;
                  }
                  §§goto(addr125);
               }
               §§goto(addr106);
            }
            else
            {
               §§goto(addr138);
            }
         }
      }
      
      public function §9?§(param1:Object, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || this)
         {
            this.removeObjectWithIndex(this.§ #§.indexOf(param1),param2,param3,param4);
         }
      }
      
      public function §1q§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            §§push(this.§=!M§);
            loop0:
            while(true)
            {
               §§push(param1);
               addr74:
               while(true)
               {
                  §§push(-§§pop());
                  addr75:
                  while(true)
                  {
                     §§pop().x = §§pop();
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr70);
      }
      
      public function isPigsAlive(param1:Boolean = false) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§[g§ = null;
         var _loc2_:int = 0;
         loop0:
         while(_loc2_ < this.§ #§.length)
         {
            _loc3_ = this.§ #§[_loc2_] as §[g§;
            if(!(_loc5_ && param1))
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
                              §§push(_loc3_.§[a§());
                              if(_loc4_ || _loc2_)
                              {
                                 §§push(Boolean(§§pop()));
                                 while(true)
                                 {
                                 }
                                 addr212:
                              }
                              loop5:
                              while(true)
                              {
                                 §§push(§§pop());
                                 loop6:
                                 while(!_loc5_)
                                 {
                                    if(§§pop())
                                    {
                                       continue loop1;
                                    }
                                    loop11:
                                    while(true)
                                    {
                                       loop12:
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             if(!(_loc5_ && this))
                                             {
                                                §§push(param1);
                                                loop13:
                                                for(; _loc4_; if(!(_loc5_ && this))
                                                {
                                                   continue loop3;
                                                })
                                                {
                                                   §§push(!§§pop());
                                                   loop14:
                                                   while(true)
                                                   {
                                                      §§push(§§pop());
                                                      addr195:
                                                      while(!_loc5_)
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            loop16:
                                                            while(true)
                                                            {
                                                               §§pop();
                                                               addr199:
                                                               loop22:
                                                               while(true)
                                                               {
                                                                  §§push(_loc3_.§5d§);
                                                                  loop23:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop().mTryToBlink);
                                                                     loop24:
                                                                     while(!_loc5_)
                                                                     {
                                                                        §§push(0);
                                                                        loop25:
                                                                        while(_loc4_ || this)
                                                                        {
                                                                           §§push(§§pop() <= §§pop());
                                                                           if(_loc4_ || _loc2_)
                                                                           {
                                                                              continue loop14;
                                                                           }
                                                                           addr163:
                                                                           loop20:
                                                                           while(!_loc5_)
                                                                           {
                                                                              §§pop();
                                                                              loop21:
                                                                              while(true)
                                                                              {
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    continue loop22;
                                                                                 }
                                                                                 if(_loc5_ && _loc3_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    loop27:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc3_.§5d§);
                                                                                       if(!_loc5_)
                                                                                       {
                                                                                          §§push(§§pop().mTryToScream);
                                                                                          if(_loc4_ || this)
                                                                                          {
                                                                                             §§push(0);
                                                                                             if(_loc4_ || this)
                                                                                             {
                                                                                                addr85:
                                                                                                §§push(§§pop() <= §§pop());
                                                                                                if(!(_loc5_ && _loc2_))
                                                                                                {
                                                                                                   if(_loc5_)
                                                                                                   {
                                                                                                      continue loop16;
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         if(!_loc5_)
                                                                                                         {
                                                                                                            §§push(true);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            loop18:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               addr39:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  _loc2_++;
                                                                                                                  if(!(_loc5_ && _loc3_))
                                                                                                                  {
                                                                                                                     if(_loc4_ || _loc3_)
                                                                                                                     {
                                                                                                                        if(!(_loc5_ && _loc2_))
                                                                                                                        {
                                                                                                                           if(true)
                                                                                                                           {
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           continue loop27;
                                                                                                                        }
                                                                                                                        continue loop4;
                                                                                                                     }
                                                                                                                     continue loop21;
                                                                                                                  }
                                                                                                                  continue loop18;
                                                                                                               }
                                                                                                               continue loop0;
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr39);
                                                                                                   }
                                                                                                }
                                                                                                while(!(_loc4_ || _loc3_))
                                                                                                {
                                                                                                   continue loop20;
                                                                                                   §§goto(addr85);
                                                                                                }
                                                                                                continue loop13;
                                                                                             }
                                                                                             continue loop25;
                                                                                          }
                                                                                          continue loop24;
                                                                                       }
                                                                                       continue loop23;
                                                                                    }
                                                                                 }
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc3_.§+_§);
                                                                                 break loop24;
                                                                                 §§goto(addr168);
                                                                              }
                                                                           }
                                                                           continue loop12;
                                                                        }
                                                                        continue loop11;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        continue loop11;
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr95);
                                                      }
                                                      continue loop6;
                                                   }
                                                }
                                                continue loop5;
                                             }
                                             §§goto(addr199);
                                          }
                                          §§goto(addr39);
                                       }
                                    }
                                 }
                                 continue loop2;
                              }
                           }
                           if(_loc4_)
                           {
                              return §§pop();
                           }
                        }
                     }
                     §§goto(addr212);
                  }
               }
            }
            §§goto(addr175);
         }
         return false;
      }
      
      public function §=!P§(param1:Boolean = false) : int
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:§[g§ = null;
         var _loc2_:int = 0;
         var _loc3_:* = int(this.§ #§.length - 1);
         loop0:
         while(true)
         {
            §§push(_loc3_);
            if(_loc6_)
            {
               if(§§pop() < 0)
               {
                  §§push(_loc2_);
                  break;
               }
               §§push(Boolean(_loc4_ = this.§ #§[_loc3_] as §[g§));
               if(_loc6_ || _loc3_)
               {
                  §§push(§§pop());
                  if(_loc6_ || param1)
                  {
                     if(§§pop())
                     {
                        if(!(_loc5_ && _loc3_))
                        {
                           §§pop();
                           if(_loc6_)
                           {
                              §§push(_loc4_.§[a§());
                              loop26:
                              while(true)
                              {
                                 §§push(Boolean(§§pop()));
                                 addr227:
                                 loop23:
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    loop24:
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          while(true)
                                          {
                                             §§pop();
                                             addr240:
                                             while(true)
                                             {
                                                §§push(_loc4_.§+_§);
                                                addr204:
                                                while(true)
                                                {
                                                   §§push(0);
                                                   addr205:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() > §§pop());
                                                   }
                                                }
                                             }
                                          }
                                          addr239:
                                       }
                                       loop15:
                                       while(true)
                                       {
                                          loop5:
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                if(!_loc5_)
                                                {
                                                   §§push(param1);
                                                   while(true)
                                                   {
                                                      §§push(!§§pop());
                                                      loop7:
                                                      while(true)
                                                      {
                                                         §§push(§§pop());
                                                         loop8:
                                                         while(true)
                                                         {
                                                            if(!(_loc6_ || _loc3_))
                                                            {
                                                               continue loop24;
                                                            }
                                                            if(!§§pop())
                                                            {
                                                               loop9:
                                                               while(true)
                                                               {
                                                                  §§pop();
                                                                  addr222:
                                                                  loop10:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc4_.§5d§);
                                                                     loop18:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop().mTryToBlink);
                                                                        loop17:
                                                                        while(true)
                                                                        {
                                                                           §§push(0);
                                                                           loop13:
                                                                           while(true)
                                                                           {
                                                                              if(!_loc5_)
                                                                              {
                                                                                 §§push(§§pop() <= §§pop());
                                                                                 if(_loc5_ && this)
                                                                                 {
                                                                                    continue loop9;
                                                                                 }
                                                                                 if(_loc5_ && param1)
                                                                                 {
                                                                                    continue loop7;
                                                                                 }
                                                                                 §§push(§§pop());
                                                                                 if(_loc5_ && this)
                                                                                 {
                                                                                    continue loop8;
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       continue loop9;
                                                                                    }
                                                                                    addr68:
                                                                                    addr144:
                                                                                    loop4:
                                                                                    while(§§pop())
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          if(!_loc5_)
                                                                                          {
                                                                                             _loc2_++;
                                                                                             while(_loc5_)
                                                                                             {
                                                                                                continue loop10;
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                break loop4;
                                                                                             }
                                                                                             addr149:
                                                                                             addr151:
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr200:
                                                                                             loop21:
                                                                                             while(true)
                                                                                             {
                                                                                                addr87:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc4_.§5d§);
                                                                                                   if(_loc5_ && _loc2_)
                                                                                                   {
                                                                                                      continue loop18;
                                                                                                   }
                                                                                                   §§push(§§pop().mTryToScream);
                                                                                                   if(!_loc6_)
                                                                                                   {
                                                                                                      continue loop17;
                                                                                                   }
                                                                                                   if(_loc6_ || _loc3_)
                                                                                                   {
                                                                                                      §§push(0);
                                                                                                      if(!(_loc5_ && param1))
                                                                                                      {
                                                                                                         §§push(§§pop() <= §§pop());
                                                                                                         if(!_loc5_)
                                                                                                         {
                                                                                                            if(_loc6_)
                                                                                                            {
                                                                                                               if(_loc6_ || _loc2_)
                                                                                                               {
                                                                                                                  if(_loc6_ || _loc2_)
                                                                                                                  {
                                                                                                                     continue loop4;
                                                                                                                  }
                                                                                                                  continue loop26;
                                                                                                               }
                                                                                                               continue loop23;
                                                                                                            }
                                                                                                            continue loop5;
                                                                                                         }
                                                                                                         continue loop9;
                                                                                                      }
                                                                                                      continue loop13;
                                                                                                   }
                                                                                                   §§goto(addr204);
                                                                                                   continue loop21;
                                                                                                }
                                                                                             }
                                                                                             addr200:
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc3_);
                                                                                       if(!(_loc5_ && this))
                                                                                       {
                                                                                          §§push(§§pop() - 1);
                                                                                       }
                                                                                       _loc3_ = §§pop();
                                                                                       if(_loc6_)
                                                                                       {
                                                                                          if(_loc6_)
                                                                                          {
                                                                                             if(!_loc5_)
                                                                                             {
                                                                                                if(true)
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                §§goto(addr87);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr240);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr146);
                                                                                       }
                                                                                       §§goto(addr149);
                                                                                    }
                                                                                    continue loop0;
                                                                                 }
                                                                              }
                                                                              §§goto(addr205);
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr144);
                                                         }
                                                         continue loop15;
                                                      }
                                                      if(_loc5_ && param1)
                                                      {
                                                         continue;
                                                      }
                                                      if(!_loc5_)
                                                      {
                                                         §§pop();
                                                         §§goto(addr200);
                                                      }
                                                      §§goto(addr239);
                                                   }
                                                }
                                                §§goto(addr222);
                                             }
                                             §§goto(addr68);
                                          }
                                       }
                                    }
                                 }
                              }
                              addr225:
                           }
                           §§goto(addr151);
                        }
                     }
                     §§goto(addr227);
                  }
                  §§goto(addr182);
               }
               §§goto(addr225);
            }
            break;
         }
         return §§pop();
      }
      
      public function §>w§() : int
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§[g§ = null;
         var _loc1_:int = 0;
         loop0:
         for each(_loc2_ in this.§ #§)
         {
            if(_loc6_ || _loc2_)
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
                        loop3:
                        while(true)
                        {
                           §§pop();
                           addr130:
                           while(true)
                           {
                              addr98:
                              while(true)
                              {
                                 §§push(_loc2_.§[n§());
                                 if(!_loc5_)
                                 {
                                    §§push(Boolean(§§pop()));
                                 }
                                 loop6:
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    if(_loc5_ && _loc2_)
                                    {
                                       break;
                                    }
                                    if(!§§pop())
                                    {
                                       loop7:
                                       while(true)
                                       {
                                          §§pop();
                                          addr114:
                                          while(true)
                                          {
                                             §§push(_loc2_.§ ! §());
                                             if(!(_loc5_ && this))
                                             {
                                                if(!_loc5_)
                                                {
                                                   §§push(Boolean(§§pop()));
                                                   continue loop7;
                                                }
                                                continue loop3;
                                             }
                                             continue loop7;
                                          }
                                          continue loop6;
                                       }
                                    }
                                 }
                                 continue loop2;
                              }
                           }
                        }
                     }
                     loop9:
                     while(§§pop())
                     {
                        if(_loc6_ || _loc2_)
                        {
                           if(!(_loc5_ && this))
                           {
                              _loc1_++;
                              addr94:
                              if(_loc6_)
                              {
                                 while(true)
                                 {
                                    if(true)
                                    {
                                       break loop9;
                                    }
                                    §§goto(addr98);
                                 }
                                 addr96:
                              }
                              §§goto(addr114);
                           }
                           §§goto(addr130);
                        }
                        §§goto(addr94);
                     }
                     continue loop0;
                  }
               }
            }
            §§goto(addr96);
         }
         return _loc1_;
      }
      
      public function §>!S§() : int
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§[g§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§ #§)
         {
            if(!_loc5_)
            {
               §§push(Boolean(_loc2_));
               if(_loc6_ || _loc1_)
               {
                  if(§§pop())
                  {
                     if(_loc6_ || _loc1_)
                     {
                        §§pop();
                        addr96:
                        if(!(_loc5_ && _loc1_))
                        {
                           §§push(_loc2_.isTexture());
                           if(_loc6_ || this)
                           {
                              addr82:
                              §§push(Boolean(§§pop()));
                           }
                        }
                        _loc1_++;
                        continue;
                     }
                     §§goto(addr82);
                  }
                  if(!§§pop())
                  {
                     continue;
                  }
                  if(!_loc6_)
                  {
                     continue;
                  }
                  §§goto(addr96);
               }
               §§goto(addr82);
            }
            §§goto(addr96);
         }
         return _loc1_;
      }
      
      public function makePigsSmile(param1:Number = 1) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§[g§ = null;
         var _loc2_:* = int(this.§ #§.length - 1);
         loop0:
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§ #§[_loc2_];
            if(!(_loc4_ && param1))
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
                              §§push(_loc3_.§[a§());
                              if(_loc5_)
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
                                       if(!§§pop())
                                       {
                                          loop11:
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                if(!(_loc4_ && _loc2_))
                                                {
                                                   §§push(_loc3_.§5d§);
                                                   §§push(§%$§.§&!D§);
                                                   if(_loc5_ || _loc3_)
                                                   {
                                                      §§push(§§pop() * param1);
                                                   }
                                                   §§pop().mTryToScream = §§pop();
                                                }
                                                loop8:
                                                while(_loc5_)
                                                {
                                                   while(true)
                                                   {
                                                      §§push(_loc2_);
                                                      if(!(_loc4_ && _loc2_))
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
                                                   while(false)
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(_loc3_.§+_§ > 0);
                                                         if(!_loc5_)
                                                         {
                                                            break;
                                                         }
                                                         continue loop11;
                                                      }
                                                      while(!_loc4_)
                                                      {
                                                         continue loop1;
                                                      }
                                                      continue loop3;
                                                   }
                                                   continue loop0;
                                                }
                                                while(!_loc4_)
                                                {
                                                   §§goto(addr57);
                                                }
                                                continue loop4;
                                                addr124:
                                             }
                                             §§goto(addr42);
                                          }
                                       }
                                    }
                                    continue loop2;
                                    addr109:
                                 }
                              }
                              §§goto(addr114);
                           }
                        }
                     }
                     §§goto(addr109);
                  }
               }
            }
            §§goto(addr55);
         }
      }
      
      public function §-Q§() : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§[g§ = null;
         var _loc1_:* = int(this.§ #§.length - 1);
         loop0:
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§ #§[_loc1_] as §[g§;
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
                     if(!§§pop())
                     {
                        while(true)
                        {
                           loop7:
                           while(true)
                           {
                              §§push(§§pop());
                              if(!_loc4_)
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
                                    while(!(_loc3_ && this))
                                    {
                                       loop10:
                                       while(true)
                                       {
                                          §§push(_loc2_.§+_§ > 0);
                                          if(!_loc4_)
                                          {
                                             addr83:
                                             break;
                                          }
                                          if(_loc4_ || _loc1_)
                                          {
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   if(_loc4_ || _loc1_)
                                                   {
                                                      §§push(true);
                                                      break loop10;
                                                   }
                                                   addr107:
                                                   while(true)
                                                   {
                                                   }
                                                   addr107:
                                                }
                                                while(true)
                                                {
                                                   §§push(_loc1_);
                                                   if(_loc4_ || this)
                                                   {
                                                      §§push(§§pop() - 1);
                                                   }
                                                   _loc1_ = §§pop();
                                                   if(!(_loc3_ && _loc3_))
                                                   {
                                                      break;
                                                   }
                                                   §§goto(addr107);
                                                }
                                                if(_loc4_ || _loc3_)
                                                {
                                                   if(true)
                                                   {
                                                      break;
                                                   }
                                                   continue loop10;
                                                }
                                                continue loop9;
                                             }
                                             continue loop0;
                                             addr90:
                                          }
                                          continue loop1;
                                       }
                                       while(true)
                                       {
                                          if(!_loc4_)
                                          {
                                             continue loop8;
                                          }
                                          if(!_loc4_)
                                          {
                                             continue loop7;
                                          }
                                          if(_loc4_)
                                          {
                                             return §§pop();
                                          }
                                          addr149:
                                          while(true)
                                          {
                                             §§pop();
                                             break loop9;
                                          }
                                       }
                                    }
                                    while(true)
                                    {
                                       §§push(_loc2_.§2!N§());
                                       continue loop1;
                                    }
                                 }
                              }
                              §§goto(addr90);
                           }
                           continue loop2;
                        }
                        addr120:
                     }
                     §§goto(addr149);
                  }
               }
            }
            §§goto(addr107);
         }
         return false;
      }
      
      public function isWorldAtSleep() : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§[g§ = null;
         var _loc1_:* = int(this.§ #§.length - 1);
         loop0:
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§ #§[_loc1_] as §[g§;
            if(!(_loc3_ && this))
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
                              §§push(_loc2_.§+_§);
                              loop5:
                              while(true)
                              {
                                 §§push(0);
                                 addr246:
                                 while(true)
                                 {
                                    §§push(§§pop() > §§pop());
                                    addr247:
                                    while(true)
                                    {
                                       §§push(Boolean(§§pop()));
                                    }
                                 }
                                 loop30:
                                 while(true)
                                 {
                                    §§push(_loc2_.§+_§);
                                    if(_loc3_ && _loc1_)
                                    {
                                       continue loop5;
                                    }
                                    §§push(0);
                                    if(!_loc4_)
                                    {
                                       break;
                                    }
                                    addr93:
                                    §§push(§§pop() > §§pop());
                                    if(_loc4_ || _loc3_)
                                    {
                                       if(!_loc3_)
                                       {
                                          loop25:
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                if(!(_loc3_ && _loc3_))
                                                {
                                                   if(_loc4_ || _loc2_)
                                                   {
                                                      §§push(false);
                                                      loop27:
                                                      while(true)
                                                      {
                                                         if(_loc4_)
                                                         {
                                                            if(!_loc3_)
                                                            {
                                                               if(_loc4_ || this)
                                                               {
                                                                  return §§pop();
                                                               }
                                                               break;
                                                            }
                                                            loop24:
                                                            while(true)
                                                            {
                                                               if(_loc4_)
                                                               {
                                                                  §§push(Boolean(§§pop()));
                                                                  if(_loc4_ || _loc2_)
                                                                  {
                                                                     addr183:
                                                                     if(!_loc3_)
                                                                     {
                                                                        §§push(§§pop());
                                                                        if(!_loc3_)
                                                                        {
                                                                           if(_loc3_)
                                                                           {
                                                                              continue loop2;
                                                                           }
                                                                           if(!§§pop())
                                                                           {
                                                                              continue loop25;
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§pop();
                                                                              addr169:
                                                                              while(true)
                                                                              {
                                                                                 if(!(_loc4_ || this))
                                                                                 {
                                                                                    addr192:
                                                                                    §§push(false);
                                                                                    break loop27;
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    continue loop30;
                                                                                 }
                                                                              }
                                                                           }
                                                                           addr168:
                                                                        }
                                                                        break;
                                                                     }
                                                                     while(_loc4_ || _loc3_)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              §§goto(addr192);
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              continue loop24;
                                                                              addr198:
                                                                           }
                                                                        }
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop());
                                                                        break loop24;
                                                                        §§goto(addr183);
                                                                     }
                                                                     addr183:
                                                                     addr227:
                                                                  }
                                                                  §§goto(addr168);
                                                               }
                                                               addr236:
                                                               loop18:
                                                               while(true)
                                                               {
                                                                  if(!_loc3_)
                                                                  {
                                                                     if(_loc3_)
                                                                     {
                                                                        continue loop3;
                                                                     }
                                                                     §§pop();
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc2_.§>!<§());
                                                                        addr180:
                                                                        addr224:
                                                                        while(_loc4_)
                                                                        {
                                                                           §§goto(addr183);
                                                                           §§push(!§§pop());
                                                                        }
                                                                        addr224:
                                                                        while(_loc4_)
                                                                        {
                                                                           §§goto(addr227);
                                                                           §§push(Boolean(§§pop()));
                                                                        }
                                                                        continue loop1;
                                                                     }
                                                                     addr241:
                                                                  }
                                                                  addr250:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop());
                                                                     addr251:
                                                                     while(true)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           continue loop1;
                                                                        }
                                                                        loop32:
                                                                        while(true)
                                                                        {
                                                                           if(!§§pop())
                                                                           {
                                                                              addr44:
                                                                              loop29:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc1_);
                                                                                 if(!(_loc3_ && _loc1_))
                                                                                 {
                                                                                    §§push(§§pop() - 1);
                                                                                 }
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    addr56:
                                                                                    _loc1_ = §§pop();
                                                                                    if(_loc4_ || this)
                                                                                    {
                                                                                       if(!(_loc3_ && this))
                                                                                       {
                                                                                          if(!(_loc3_ && _loc2_))
                                                                                          {
                                                                                             if(false)
                                                                                             {
                                                                                                continue loop30;
                                                                                             }
                                                                                             continue loop0;
                                                                                          }
                                                                                          addr222:
                                                                                          while(true)
                                                                                          {
                                                                                             §§goto(addr224);
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          if(!_loc4_)
                                                                                          {
                                                                                             break loop18;
                                                                                          }
                                                                                          §§goto(addr198);
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             if(!_loc3_)
                                                                                             {
                                                                                                continue loop29;
                                                                                             }
                                                                                             addr260:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc2_.§=J§);
                                                                                                break loop29;
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr241);
                                                                                          }
                                                                                          §§goto(addr56);
                                                                                       }
                                                                                       §§goto(addr180);
                                                                                       addr142:
                                                                                    }
                                                                                    §§goto(addr183);
                                                                                 }
                                                                                 break;
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop() == §=?§.§[b§);
                                                                                 addr205:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(!§§pop());
                                                                                    if(_loc4_ || _loc3_)
                                                                                    {
                                                                                       if(!(_loc4_ || this))
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       continue loop32;
                                                                                    }
                                                                                    §§goto(addr224);
                                                                                 }
                                                                                 §§goto(addr247);
                                                                                 §§goto(addr44);
                                                                              }
                                                                              addr44:
                                                                           }
                                                                           §§goto(addr222);
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               continue loop4;
                                                            }
                                                            while(!(_loc3_ && this))
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  §§goto(addr236);
                                                               }
                                                               §§goto(addr190);
                                                            }
                                                            §§goto(addr251);
                                                         }
                                                         §§goto(addr168);
                                                         §§goto(addr93);
                                                      }
                                                      if(_loc3_)
                                                      {
                                                         §§goto(addr205);
                                                      }
                                                      return §§pop();
                                                      addr120:
                                                   }
                                                   §§goto(addr169);
                                                }
                                                §§goto(addr142);
                                             }
                                             §§goto(addr44);
                                          }
                                          continue loop5;
                                       }
                                       §§goto(addr180);
                                    }
                                    §§goto(addr120);
                                 }
                                 §§goto(addr246);
                              }
                           }
                        }
                     }
                     while(true)
                     {
                        §§goto(addr250);
                     }
                  }
               }
            }
            §§goto(addr176);
         }
         return true;
      }
      
      public function §9D§(param1:Boolean = false) : §[g§
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc7_:§[g§ = null;
         if(!_loc8_)
         {
            if(!this.isPigsAlive())
            {
               if(!(_loc8_ && param1))
               {
                  return null;
               }
            }
         }
         var _loc2_:int = this.§ #§.length;
         §§push(this.§=!P§(param1));
         if(_loc9_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(_loc9_ || this)
         {
            §§push(_loc3_);
            if(_loc9_)
            {
               if(§§pop() == 0)
               {
                  if(_loc9_)
                  {
                     §§goto(addr60);
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
               §§push(Boolean(_loc7_ = this.§ #§[_loc6_] as §[g§));
               if(!_loc8_)
               {
                  §§push(§§pop());
                  if(!(_loc8_ && _loc2_))
                  {
                     if(§§pop())
                     {
                        if(!(_loc8_ && param1))
                        {
                           §§pop();
                           if(_loc9_ || _loc3_)
                           {
                              §§push(_loc7_.§[a§());
                              loop1:
                              while(true)
                              {
                                 §§push(Boolean(§§pop()));
                                 addr283:
                                 loop27:
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    addr284:
                                    loop28:
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          while(true)
                                          {
                                             §§pop();
                                             addr286:
                                             while(true)
                                             {
                                                §§push(_loc7_.§+_§);
                                                addr248:
                                                while(true)
                                                {
                                                   §§push(0);
                                                   addr249:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() > §§pop());
                                                   }
                                                }
                                             }
                                          }
                                          addr285:
                                       }
                                       while(true)
                                       {
                                          loop15:
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                loop13:
                                                while(true)
                                                {
                                                   §§push(param1);
                                                   while(true)
                                                   {
                                                      §§push(!§§pop());
                                                      loop5:
                                                      while(true)
                                                      {
                                                         if(_loc9_ || this)
                                                         {
                                                            §§push(§§pop());
                                                            loop6:
                                                            while(true)
                                                            {
                                                               if(_loc8_)
                                                               {
                                                                  continue loop28;
                                                               }
                                                               if(!§§pop())
                                                               {
                                                                  loop9:
                                                                  while(true)
                                                                  {
                                                                     if(!_loc9_)
                                                                     {
                                                                        continue loop1;
                                                                     }
                                                                     §§pop();
                                                                     loop10:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc7_.§5d§);
                                                                        loop25:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop().mTryToBlink);
                                                                           loop24:
                                                                           while(true)
                                                                           {
                                                                              §§push(0);
                                                                              loop14:
                                                                              while(true)
                                                                              {
                                                                                 if(_loc9_ || this)
                                                                                 {
                                                                                    §§push(§§pop() <= §§pop());
                                                                                    if(_loc9_)
                                                                                    {
                                                                                       if(_loc8_ && _loc2_)
                                                                                       {
                                                                                          continue loop15;
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop());
                                                                                          if(!_loc9_)
                                                                                          {
                                                                                             continue loop6;
                                                                                          }
                                                                                          if(!§§pop())
                                                                                          {
                                                                                          }
                                                                                          loop3:
                                                                                          while(true)
                                                                                          {
                                                                                             addr197:
                                                                                             while(true)
                                                                                             {
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   loop18:
                                                                                                   while(_loc9_)
                                                                                                   {
                                                                                                      if(_loc5_ >= _loc4_)
                                                                                                      {
                                                                                                         if(_loc9_ || this)
                                                                                                         {
                                                                                                            return _loc7_;
                                                                                                         }
                                                                                                         while(!_loc8_)
                                                                                                         {
                                                                                                         }
                                                                                                         §§goto(addr286);
                                                                                                         addr212:
                                                                                                      }
                                                                                                      loop17:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         _loc5_++;
                                                                                                         addr134:
                                                                                                         addr146:
                                                                                                         while(!_loc9_)
                                                                                                         {
                                                                                                            while(!_loc9_)
                                                                                                            {
                                                                                                               continue loop13;
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc7_.§5d§);
                                                                                                               if(_loc8_)
                                                                                                               {
                                                                                                                  continue loop25;
                                                                                                               }
                                                                                                               §§push(§§pop().mTryToScream);
                                                                                                               if(!_loc9_)
                                                                                                               {
                                                                                                                  continue loop24;
                                                                                                               }
                                                                                                               if(!_loc8_)
                                                                                                               {
                                                                                                                  §§push(0);
                                                                                                                  if(_loc8_ && this)
                                                                                                                  {
                                                                                                                     continue loop14;
                                                                                                                  }
                                                                                                                  §§push(§§pop() <= §§pop());
                                                                                                                  if(_loc9_ || _loc3_)
                                                                                                                  {
                                                                                                                     if(!(_loc8_ && _loc2_))
                                                                                                                     {
                                                                                                                        if(!(_loc8_ && param1))
                                                                                                                        {
                                                                                                                           if(_loc9_)
                                                                                                                           {
                                                                                                                              if(!(_loc8_ && _loc2_))
                                                                                                                              {
                                                                                                                                 continue loop3;
                                                                                                                              }
                                                                                                                              continue loop27;
                                                                                                                           }
                                                                                                                        }
                                                                                                                        continue loop5;
                                                                                                                     }
                                                                                                                     continue loop9;
                                                                                                                  }
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  §§goto(addr248);
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            _loc6_++;
                                                                                                            if(_loc9_ || _loc3_)
                                                                                                            {
                                                                                                               if(_loc9_)
                                                                                                               {
                                                                                                                  if(!(_loc8_ && param1))
                                                                                                                  {
                                                                                                                     if(true)
                                                                                                                     {
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     continue loop17;
                                                                                                                  }
                                                                                                                  continue loop18;
                                                                                                               }
                                                                                                               §§goto(addr212);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§goto(addr134);
                                                                                                            }
                                                                                                            §§goto(addr146);
                                                                                                         }
                                                                                                         continue loop0;
                                                                                                      }
                                                                                                   }
                                                                                                   continue loop10;
                                                                                                }
                                                                                                §§goto(addr146);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop();
                                                                                       §§goto(addr242);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr249);
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr196);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr285);
                                                         }
                                                         §§goto(addr286);
                                                      }
                                                      continue loop13;
                                                   }
                                                }
                                             }
                                             §§goto(addr146);
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                           §§goto(addr244);
                        }
                        §§goto(addr197);
                     }
                     §§goto(addr283);
                  }
                  §§goto(addr284);
               }
               §§goto(addr237);
            }
            return null;
         }
         addr60:
         return null;
      }
      
      public function §@!K§() : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:* = 0;
         var _loc2_:* = int(this.§ #§.length - 1);
         loop0:
         while(true)
         {
            §§push(_loc2_);
            if(_loc4_ || _loc1_)
            {
               if(_loc4_)
               {
                  §§push(0);
                  if(_loc4_)
                  {
                     if(§§pop() < §§pop())
                     {
                        if(!_loc3_)
                        {
                           if(!(_loc3_ && this))
                           {
                              §§push(_loc1_);
                              loop17:
                              while(_loc4_ || _loc3_)
                              {
                                 if(!(_loc3_ && _loc2_))
                                 {
                                    §§push(this.§^!I§.slingshot.§@!K§());
                                    loop11:
                                    while(_loc4_ || _loc3_)
                                    {
                                       §§push(§§pop() + §§pop());
                                       if(_loc4_)
                                       {
                                          if(_loc4_ || _loc3_)
                                          {
                                             §§push(int(§§pop()));
                                             loop12:
                                             while(!(_loc3_ && _loc3_))
                                             {
                                                addr123:
                                                _loc1_ = §§pop();
                                                loop6:
                                                while(true)
                                                {
                                                   if(_loc4_ || _loc1_)
                                                   {
                                                      if(_loc4_)
                                                      {
                                                         §§push(_loc1_);
                                                         if(_loc4_ || _loc2_)
                                                         {
                                                            if(!(_loc3_ && _loc2_))
                                                            {
                                                               return §§pop();
                                                            }
                                                            continue loop17;
                                                         }
                                                         continue loop12;
                                                      }
                                                      addr203:
                                                      while(true)
                                                      {
                                                         if((this.§ #§[_loc2_] as §[g§).§6!O§())
                                                         {
                                                            break loop6;
                                                         }
                                                         addr134:
                                                         addr140:
                                                         addr141:
                                                         while(true)
                                                         {
                                                            §§push(_loc2_);
                                                            break loop17;
                                                         }
                                                         §§push(§§pop() - 1);
                                                         loop16:
                                                         while(true)
                                                         {
                                                            _loc2_ = §§pop();
                                                            addr142:
                                                            while(!_loc4_)
                                                            {
                                                               while(true)
                                                               {
                                                                  §§goto(addr134);
                                                               }
                                                               continue loop16;
                                                            }
                                                            continue loop0;
                                                         }
                                                      }
                                                   }
                                                   break;
                                                   §§goto(addr123);
                                                }
                                                while(true)
                                                {
                                                   §§push(_loc1_);
                                                   addr155:
                                                   while(true)
                                                   {
                                                      §§push(§ p§.§5k§.getValue());
                                                      break loop11;
                                                   }
                                                   addr165:
                                                   §§push(§§pop() + §§pop() * int((this.§ #§[_loc2_] as §[g§).§ !G§));
                                                   addr176:
                                                   while(true)
                                                   {
                                                      §§push(int(§§pop()));
                                                      break loop12;
                                                   }
                                                }
                                             }
                                             while(true)
                                             {
                                                _loc1_ = §§pop();
                                                §§goto(addr178);
                                             }
                                          }
                                          loop13:
                                          while(true)
                                          {
                                             §§push(int(§§pop()));
                                             addr202:
                                             while(true)
                                             {
                                                _loc1_ = §§pop();
                                                §§goto(addr203);
                                                continue loop13;
                                             }
                                             §§goto(addr134);
                                          }
                                          addr201:
                                       }
                                       §§goto(addr176);
                                    }
                                    while(true)
                                    {
                                       if(_loc4_ || this)
                                       {
                                          §§goto(addr165);
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             §§goto(addr201);
                                          }
                                          addr200:
                                       }
                                       §§goto(addr134);
                                    }
                                    addr88:
                                 }
                                 else
                                 {
                                    addr182:
                                    §§push((this.§ #§[_loc2_] as §[g§).§-!6§.score);
                                 }
                                 §§goto(addr200);
                              }
                              while(true)
                              {
                                 if(_loc4_)
                                 {
                                    if(!_loc3_)
                                    {
                                       §§goto(addr140);
                                    }
                                    else
                                    {
                                       §§goto(addr202);
                                    }
                                 }
                                 §§goto(addr155);
                              }
                              addr70:
                           }
                           §§goto(addr142);
                        }
                        §§goto(addr124);
                     }
                     else
                     {
                        §§push(_loc1_);
                     }
                     §§goto(addr182);
                  }
                  §§goto(addr88);
               }
               §§goto(addr141);
            }
            §§goto(addr70);
         }
      }
      
      public function §&V§(param1:§[g§, param2:§[g§) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §§push(param2 is §8R§);
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
                           §§push(param1 is §8R§);
                           if(!_loc3_)
                           {
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    if(_loc4_ || param1)
                                    {
                                       §§push(true);
                                       break loop3;
                                    }
                                    while(true)
                                    {
                                    }
                                    addr142:
                                 }
                                 loop6:
                                 while(true)
                                 {
                                    §§push(param1.§;]§());
                                    loop7:
                                    while(true)
                                    {
                                       if(_loc3_ && _loc3_)
                                       {
                                          continue loop2;
                                       }
                                       §§push(!§§pop());
                                       if(_loc4_ || this)
                                       {
                                          if(_loc3_ && param2)
                                          {
                                             break loop3;
                                          }
                                          if(!_loc4_)
                                          {
                                             continue loop0;
                                          }
                                          §§push(§§pop());
                                          if(!(_loc4_ || param2))
                                          {
                                             continue loop1;
                                          }
                                          if(§§pop())
                                          {
                                             loop10:
                                             while(true)
                                             {
                                                §§pop();
                                                loop11:
                                                while(true)
                                                {
                                                   §§push(param2.§;]§());
                                                   if(_loc3_)
                                                   {
                                                      return §§pop();
                                                      addr54:
                                                   }
                                                   addr53:
                                                   §§push(!§§pop());
                                                   loop8:
                                                   while(true)
                                                   {
                                                      while(true)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(_loc4_)
                                                            {
                                                               if(_loc4_)
                                                               {
                                                                  if(_loc4_)
                                                                  {
                                                                     addr62:
                                                                     §§push(true);
                                                                     break;
                                                                  }
                                                                  break loop7;
                                                               }
                                                               continue loop6;
                                                            }
                                                            if(_loc3_)
                                                            {
                                                               continue loop11;
                                                            }
                                                         }
                                                         §§push(false);
                                                         if(!(_loc4_ || this))
                                                         {
                                                            break;
                                                         }
                                                         if(!_loc3_)
                                                         {
                                                            if(!(_loc3_ && this))
                                                            {
                                                               break loop8;
                                                            }
                                                            continue loop10;
                                                         }
                                                      }
                                                      §§goto(addr53);
                                                   }
                                                   continue loop7;
                                                }
                                             }
                                             addr113:
                                          }
                                          §§goto(addr54);
                                       }
                                       §§goto(addr113);
                                    }
                                    continue loop3;
                                 }
                              }
                              addr121:
                           }
                           break;
                        }
                        return §§pop();
                     }
                  }
                  §§goto(addr121);
               }
            }
         }
         §§goto(addr62);
      }
      
      public function §&l§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.mSardineCanAdded = true;
            do
            {
               this.§<c§ = 0;
            }
            while(!_loc1_);
            
         }
      }
      
      public function objectCollision(param1:§[g§, param2:§[g§) : Boolean
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Tip: You can try enabling "Automatic deobfuscation" in Settings
          * Error type: ExecutionException (java.lang.StackOverflowError)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public function §"!§(param1:§[g§, param2:§[g§) : void
      {
      }
      
      public function §5!M§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§[g§ = null;
         var _loc1_:* = int(this.§ #§.length - 1);
         loop0:
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§ #§[_loc1_] as §[g§;
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
                        loop6:
                        while(true)
                        {
                           if(§§pop())
                           {
                              loop8:
                              while(true)
                              {
                                 this.removeObjectWithIndex(_loc1_,true,true,true);
                                 loop9:
                                 while(true)
                                 {
                                    if(_loc4_)
                                    {
                                       loop7:
                                       while(true)
                                       {
                                          §§push(_loc1_);
                                          if(_loc4_ || _loc3_)
                                          {
                                             §§push(§§pop() - 1);
                                          }
                                          _loc1_ = §§pop();
                                          if(_loc4_)
                                          {
                                             if(!(_loc3_ && _loc1_))
                                             {
                                                if(true)
                                                {
                                                   break loop6;
                                                   addr71:
                                                }
                                                while(true)
                                                {
                                                   §§push(_loc2_.§[a§());
                                                   if(_loc4_)
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
                                                            break loop7;
                                                         }
                                                         addr115:
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
                                             continue loop8;
                                          }
                                          continue loop9;
                                       }
                                       addr39:
                                    }
                                    while(true)
                                    {
                                       §§goto(addr71);
                                    }
                                 }
                              }
                              addr90:
                           }
                           §§goto(addr39);
                        }
                        continue loop0;
                        addr88:
                     }
                     §§goto(addr115);
                  }
               }
            }
            §§goto(addr90);
         }
      }
      
      public function §66§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§[g§ = null;
         var _loc1_:* = int(this.§ #§.length - 1);
         loop0:
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§ #§[_loc1_] as §[g§;
            if(_loc4_ || _loc1_)
            {
               §§push(_loc2_ == null);
               loop1:
               while(true)
               {
                  §§push(!§§pop());
                  if(!_loc3_)
                  {
                     if(§§pop())
                     {
                        loop7:
                        while(true)
                        {
                           §§pop();
                           addr116:
                           addr82:
                           loop4:
                           while(true)
                           {
                              addr69:
                              while(true)
                              {
                                 §§push(_loc2_.§#!A§());
                                 if(_loc3_)
                                 {
                                    break loop4;
                                 }
                                 if(!(_loc3_ && this))
                                 {
                                    §§push(Boolean(§§pop()));
                                    break loop4;
                                 }
                                 continue loop7;
                              }
                              continue loop7;
                           }
                           if(_loc3_)
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
                           if(!_loc3_)
                           {
                              this.removeObjectWithIndex(_loc1_,true,true,true);
                           }
                           loop3:
                           while(!_loc3_)
                           {
                              while(true)
                              {
                                 continue loop3;
                              }
                           }
                           §§goto(addr116);
                           addr94:
                        }
                        while(true)
                        {
                           §§push(_loc1_);
                           if(!_loc3_)
                           {
                              §§push(§§pop() - 1);
                           }
                           _loc1_ = §§pop();
                           if(_loc4_ || this)
                           {
                              if(true)
                              {
                                 continue loop0;
                              }
                              §§goto(addr69);
                           }
                           else
                           {
                              §§goto(addr94);
                           }
                        }
                        §§goto(addr82);
                     }
                     continue;
                  }
                  §§goto(addr115);
               }
            }
            §§goto(addr96);
         }
      }
      
      public function §%!"§() : int
      {
         return this.§ #§.length;
      }
      
      public function §&!=§(param1:§!!K§) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc2_:§[g§ = null;
         var _loc3_:§=y§ = null;
         var _loc4_:§]!A§ = null;
         var _loc5_:§ f§ = null;
         var _loc6_:int = 0;
         var _loc7_:* = this.§ #§;
         loop0:
         while(true)
         {
            §§push(§§hasnext(_loc7_,_loc6_));
            if(!_loc9_)
            {
               if(§§pop())
               {
                  _loc2_ = §§nextvalue(_loc6_,_loc7_);
                  if(_loc8_ || _loc2_)
                  {
                     if(!_loc2_.isGround())
                     {
                        (_loc4_ = new §]!A§()).angle = _loc2_.§?%§();
                        if(!_loc9_)
                        {
                           _loc4_.id = _loc2_.§>p§;
                           while(true)
                           {
                              _loc4_.x = _loc2_.§`e§().GetPosition().x;
                              while(true)
                              {
                                 _loc4_.y = _loc2_.§`e§().GetPosition().y;
                                 loop3:
                                 while(true)
                                 {
                                    addr76:
                                    while(true)
                                    {
                                       _loc4_.uniqueID = _loc2_.uniqueID;
                                       continue loop3;
                                    }
                                 }
                              }
                              if(_loc9_ && _loc3_)
                              {
                                 continue;
                              }
                              while(true)
                              {
                                 param1.addObject(_loc4_);
                                 if(!(_loc9_ && param1))
                                 {
                                    if(true)
                                    {
                                       break;
                                    }
                                    §§goto(addr76);
                                 }
                                 §§goto(addr81);
                              }
                              continue loop0;
                              addr97:
                           }
                        }
                        §§goto(addr97);
                     }
                  }
                  continue;
               }
               if(!_loc9_)
               {
                  if(!(_loc9_ && param1))
                  {
                     if(_loc8_ || _loc3_)
                     {
                        _loc6_ = 0;
                        addr223:
                        if(!_loc9_)
                        {
                           _loc7_ = this.§]N§;
                           addr220:
                           §§push(§§hasnext(_loc7_,_loc6_));
                           break;
                        }
                     }
                     return;
                  }
               }
               §§goto(addr223);
            }
            break;
         }
         while(§§pop())
         {
            _loc3_ = §§nextvalue(_loc6_,_loc7_);
            (_loc5_ = new § f§(_loc3_.type,_loc3_.index1,_loc3_.index2,_loc3_.point1,_loc3_.point2,_loc3_.§53§,_loc3_.§"P§,_loc3_.lowerLimit,_loc3_.upperLimit,_loc3_.§?!W§,_loc3_.motorSpeed,_loc3_.§4!2§,_loc3_.maxTorque)).§^`§ = _loc3_.§^`§;
            if(!(_loc9_ && _loc3_))
            {
               param1.§3!b§(_loc5_);
            }
            §§goto(addr220);
         }
         §§goto(addr222);
      }
      
      public function §+!_§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:int = 0;
         while(true)
         {
            if(this.§ #§.length <= _loc1_)
            {
               if(_loc3_ || this)
               {
                  if(_loc3_ || _loc1_)
                  {
                     if(!_loc2_)
                     {
                        break;
                     }
                     addr83:
                     _loc1_++;
                  }
               }
               else
               {
                  addr64:
               }
               continue;
            }
            if(!this.§ #§[_loc1_].isGround())
            {
               this.§9?§(this.§ #§[_loc1_]);
               §§goto(addr64);
            }
            §§goto(addr83);
         }
      }
      
      public function §^!]§(param1:Point, param2:Point) : Array
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
               if(_loc6_ || param2)
               {
                  if(§§pop() >= this.§ #§.length)
                  {
                     if(!_loc5_)
                     {
                        break;
                     }
                     loop2:
                     while(_loc5_ && _loc3_)
                     {
                        while(true)
                        {
                           continue loop2;
                        }
                     }
                     continue;
                     addr73:
                  }
                  else if(this.§ #§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
                  {
                     if(!_loc5_)
                     {
                        _loc3_.push(this.§ #§[_loc4_]);
                     }
                     §§goto(addr115);
                  }
                  while(true)
                  {
                     §§push(_loc4_);
                  }
               }
               while(true)
               {
                  §§push(§§pop() + 1);
                  if(_loc6_ || this)
                  {
                     §§push(Number(§§pop()));
                  }
               }
            }
            while(true)
            {
               _loc4_ = §§pop();
               §§goto(addr73);
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
            this.§1v§ = param1;
            if(_loc3_)
            {
               addr28:
               this.§#!0§(param1);
            }
            var _loc2_:* = Number(0);
            while(true)
            {
               §§push(_loc2_);
               if(_loc3_ || param1)
               {
                  if(§§pop() >= this.§ #§.length)
                  {
                     if(_loc4_ && this)
                     {
                        continue;
                     }
                     if(!(_loc4_ && _loc2_))
                     {
                        if(_loc3_)
                        {
                           break;
                        }
                        this.§ #§[_loc2_].sprite.visible = !this.§1v§;
                        addr100:
                     }
                  }
                  else if(this.§ #§[_loc2_].isTexture())
                  {
                     §§goto(addr100);
                  }
                  §§push(_loc2_);
                  if(!_loc4_)
                  {
                     §§push(§§pop() + 1);
                     if(_loc3_ || this)
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
         if(_loc2_ || this)
         {
            this.§"-§ = param1;
         }
      }
      
      public function §!R§() : Boolean
      {
         return this.§"-§;
      }
      
      public function §<!4§() : int
      {
         return this.§]!9§;
      }
      
      public function §'!X§() : int
      {
         return this.§&!P§;
      }
      
      public function §,y§(param1:String) : §[g§
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§[g§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§ #§.length)
         {
            _loc3_ = this.§ #§[_loc2_] as §[g§;
            if(!(_loc4_ && _loc2_))
            {
               if(_loc3_.uniqueID == param1)
               {
                  if(_loc5_)
                  {
                     return _loc3_;
                  }
               }
            }
            _loc2_++;
         }
         return null;
      }
   }
}
