package §]![§
{
   import §!!§.§>4§;
   import §!!9§.Texture;
   import §+!r§.§@!a§;
   import §+&§.§-!7§;
   import §+&§.§3D§;
   import §+&§.§;!8§;
   import §+&§.§<T§;
   import §,6§.§5z§;
   import §1!T§.§6!H§;
   import §3v§.§,n§;
   import §3v§.§6Q§;
   import §6z§.§[g§;
   import §8>§.b2Vec2;
   import §9E§.§;!U§;
   import §9E§.Sprite;
   import §=!7§.§,F§;
   import §=!7§.§-!`§;
   import §=!7§.§6! §;
   import §=!7§.§@!;§;
   import §>o§.§"!e§;
   import §>o§.§'y§;
   import §>o§.§+!4§;
   import §>o§.§0!N§;
   import §>o§.§8!4§;
   import §[!N§.b2PrismaticJoint;
   import §[!N§.b2WeldJoint;
   import flash.display.BitmapData;
   import flash.display.BitmapDataChannel;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §[?§
   {
       
      
      protected var §@!d§:Vector.<§4!H§>;
      
      protected var §!E§:int;
      
      public var §+!X§:§-!7§;
      
      public var §5!%§:Vector.<§1! §>;
      
      protected var §1_§:Sprite;
      
      protected var §==§:Sprite;
      
      private var §>e§:Sprite;
      
      private var §16§:Sprite;
      
      private var §%L§:Sprite;
      
      protected var §+M§:Vector.<Texture>;
      
      protected var §<?§:Vector.<§@!;§>;
      
      protected var §]%§:int = 1;
      
      public var mMightyEagleAdded:Boolean = false;
      
      public var mMightyEagleHasTouchedGround:Boolean = false;
      
      public var §1!&§:Boolean = false;
      
      public var mSardineCanAdded:Boolean = false;
      
      public var mMightyEagleTimer:Number = 0;
      
      protected var §=!J§:Boolean = false;
      
      protected var §3!5§:Number;
      
      protected var §<!#§:int;
      
      protected var §#t§:Vector.<§6! §>;
      
      protected var §;!o§:int = 0;
      
      private var §;!0§:int = 0;
      
      private var §2i§:int = 0;
      
      private var §@W§:int;
      
      private var §?!e§:Boolean = true;
      
      private var §2!<§:Boolean = true;
      
      public function §[?§(param1:§-!7§, param2:§>4§, param3:Sprite)
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         var _loc5_:§@!;§ = null;
         var _loc6_:§,F§ = null;
         var _loc7_:§4!H§ = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:§4!H§ = null;
         var _loc11_:§4!H§ = null;
         if(_loc15_)
         {
            this.§@!d§ = new Vector.<§4!H§>();
            while(true)
            {
               this.§5!%§ = new Vector.<§1! §>();
               loop1:
               while(true)
               {
                  this.§+M§ = new Vector.<Texture>();
                  loop2:
                  while(true)
                  {
                     this.§3!5§ = this.§3D§.SARDINE_CAN_INITIAL_ROTATION_SPEED;
                     while(true)
                     {
                        this.§#t§ = new Vector.<§6! §>();
                        while(!(_loc14_ && param1))
                        {
                           super();
                           loop5:
                           while(true)
                           {
                              this.§+!X§ = param1;
                              addr281:
                              loop6:
                              while(true)
                              {
                                 this.§!E§ = 0;
                                 loop7:
                                 for(; !_loc14_; while(_loc15_ || param1)
                                 {
                                    this.§16§ = new Sprite();
                                    §§goto(addr211);
                                 })
                                 {
                                    if(!_loc15_)
                                    {
                                       continue loop1;
                                    }
                                    this.§==§ = param3;
                                    loop8:
                                    while(true)
                                    {
                                       §§push(this.§==§);
                                       addr258:
                                       while(true)
                                       {
                                          §§pop().§<V§ = false;
                                          loop10:
                                          while(!_loc14_)
                                          {
                                             this.§2!<§ = true;
                                             loop11:
                                             while(true)
                                             {
                                                this.§?!e§ = true;
                                                while(true)
                                                {
                                                   this.§1_§ = new Sprite();
                                                   continue loop2;
                                                   addr211:
                                                   while(_loc15_ || param1)
                                                   {
                                                      this.§%L§ = new Sprite();
                                                      while(true)
                                                      {
                                                         if(_loc15_)
                                                         {
                                                            if(_loc15_)
                                                            {
                                                               if(_loc14_ && param2)
                                                               {
                                                                  break;
                                                               }
                                                               continue loop8;
                                                            }
                                                            continue loop11;
                                                         }
                                                         continue loop7;
                                                      }
                                                      continue loop10;
                                                   }
                                                }
                                             }
                                          }
                                          continue loop6;
                                       }
                                    }
                                 }
                                 continue loop5;
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr281);
      }
      
      protected function get §3D§() : Class
      {
         return §3D§;
      }
      
      public function get §;+§() : Sprite
      {
         return this.§%L§;
      }
      
      public function get §47§() : Sprite
      {
         return this.§==§;
      }
      
      public function dispose() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:Texture = null;
         while(true)
         {
            if(this.§@!d§.length <= 0)
            {
               while(!(_loc3_ && this))
               {
                  this.§@!d§ = null;
                  while(true)
                  {
                     this.§#t§ = null;
                     loop3:
                     while(true)
                     {
                        §§push(this.§==§);
                        if(_loc2_)
                        {
                           if(§§pop())
                           {
                              loop4:
                              while(true)
                              {
                                 §§push(this.§==§);
                                 addr105:
                                 while(true)
                                 {
                                    §§pop().dispose();
                                    if(!(_loc3_ && _loc2_))
                                    {
                                       continue loop3;
                                    }
                                    continue loop4;
                                 }
                                 continue loop3;
                              }
                           }
                           else
                           {
                              §§goto(addr159);
                           }
                           return;
                        }
                        §§goto(addr105);
                     }
                  }
               }
            }
            else
            {
               this.§+!W§(0);
            }
         }
      }
      
      private function §4!"§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§1_§.visible = param1;
         }
      }
      
      private function §#!"§() : void
      {
         var _loc16_:Boolean = true;
         var _loc17_:Boolean = false;
         var _loc3_:§4!H§ = null;
         var _loc4_:Rectangle = null;
         var _loc5_:* = NaN;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:BitmapData = null;
         var _loc11_:BitmapData = null;
         var _loc12_:Texture = null;
         var _loc13_:§;!U§ = null;
         var _loc1_:Rectangle = null;
         var _loc2_:Vector.<§4!H§> = new Vector.<§4!H§>();
         for each(_loc3_ in this.§@!d§)
         {
            if(!_loc17_)
            {
               if(_loc3_.isTexture())
               {
                  if(!(_loc17_ && this))
                  {
                     addr78:
                     _loc2_.push(_loc3_);
                  }
                  _loc4_ = _loc3_.sprite.getBounds(this.§==§);
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
         if(!_loc17_)
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
                     while(true)
                     {
                        _loc5_ = §§pop();
                        loop4:
                        while(true)
                        {
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
                                       while(true)
                                       {
                                          if(_loc16_ || _loc3_)
                                          {
                                             §§push(_loc1_.height > 2048);
                                             if(!_loc16_)
                                             {
                                                continue loop7;
                                             }
                                             if(!_loc16_)
                                             {
                                                break;
                                             }
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   _loc1_.left /= 2;
                                                   break;
                                                }
                                                while(!_loc17_)
                                                {
                                                   if(_loc17_ && this)
                                                   {
                                                      continue loop4;
                                                   }
                                                   §§push(int(_loc1_.width));
                                                   loop11:
                                                   while(true)
                                                   {
                                                      _loc6_ = §§pop();
                                                      addr201:
                                                      while(true)
                                                      {
                                                         §§push(int(_loc1_.height));
                                                         addr175:
                                                         while(true)
                                                         {
                                                            _loc7_ = §§pop();
                                                            addr176:
                                                            while(true)
                                                            {
                                                               addr147:
                                                               while(true)
                                                               {
                                                                  §§push(int(_loc1_.left));
                                                                  continue loop11;
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                                while(true)
                                                {
                                                   _loc1_.bottom /= 2;
                                                   §§goto(addr267);
                                                }
                                             }
                                             while(!_loc16_)
                                             {
                                                continue loop1;
                                             }
                                             while(true)
                                             {
                                                _loc1_.top /= 2;
                                                §§goto(addr283);
                                             }
                                          }
                                          §§goto(addr245);
                                       }
                                       continue loop6;
                                    }
                                 }
                                 §§goto(addr186);
                              }
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr443);
         }
         §§goto(addr295);
      }
      
      private function §"!V§(param1:Vector.<§4!H§>, param2:int, param3:int, param4:int, param5:int, param6:Number) : BitmapData
      {
         var _loc16_:Boolean = true;
         var _loc17_:Boolean = false;
         var _loc7_:§4!H§ = null;
         var _loc11_:§0!N§ = null;
         var _loc12_:Array = null;
         var _loc13_:Rectangle = null;
         var _loc8_:BitmapData = new BitmapData(param2,param3,true,0);
         var _loc9_:BitmapData = new BitmapData(1,1,true,4294967295);
         var _loc10_:Matrix = new Matrix();
         loop0:
         for each(_loc7_ in param1)
         {
            _loc12_ = (_loc11_ = _loc7_.§&!'§.shape).§,s§();
            _loc13_ = new Rectangle(_loc12_[0].x / §-!7§.§8!r§ * param6,_loc12_[0].y / §-!7§.§8!r§ * param6,(_loc12_[1].x - _loc12_[0].x) / §-!7§.§8!r§ * param6,(_loc12_[1].y - _loc12_[0].y) / §-!7§.§8!r§ * param6);
            if(!_loc17_)
            {
               _loc10_.identity();
            }
            loop1:
            while(true)
            {
               _loc10_.scale(_loc13_.width,_loc13_.height);
               while(true)
               {
                  _loc10_.translate(-_loc13_.width / 2,-_loc13_.height / 2);
                  while(true)
                  {
                     _loc10_.rotate((360 - _loc7_.§[!i§()) / 180 * Math.PI);
                     addr185:
                     while(!(_loc17_ && param2))
                     {
                        continue loop1;
                     }
                  }
                  addr165:
                  if(!(_loc16_ || param1))
                  {
                     continue;
                  }
                  _loc8_.draw(_loc9_,_loc10_);
                  if(!(_loc17_ && param2))
                  {
                     addr144:
                     if(false)
                     {
                        while(true)
                        {
                           _loc10_.translate(_loc7_.sprite.x * param6 - param4,_loc7_.sprite.y * param6 - param5);
                           §§goto(addr144);
                        }
                        addr146:
                     }
                     continue loop0;
                  }
                  while(!_loc17_)
                  {
                     §§goto(addr165);
                  }
                  §§goto(addr185);
               }
            }
         }
         if(!_loc17_)
         {
            _loc9_.dispose();
         }
         return _loc8_;
      }
      
      private function §^!+§(param1:Rectangle, param2:BitmapData, param3:Number) : void
      {
         var _loc16_:Boolean = false;
         var _loc17_:Boolean = true;
         var _loc6_:BitmapData = null;
         var _loc7_:Matrix = null;
         var _loc8_:* = 0;
         var _loc9_:* = 0;
         var _loc10_:* = 0;
         var _loc11_:* = 0;
         var _loc12_:* = 0;
         var _loc13_:* = 0;
         var _loc14_:* = 0;
         var _loc15_:int = 0;
         §§push(this.§+!X§.background.§+!_§());
         if(!(_loc16_ && param3))
         {
            §§push(§§pop());
         }
         var _loc4_:* = §§pop();
         var _loc5_:§5z§;
         if(_loc5_ = this.§+!X§.backgroundTextureManager.§`F§(_loc4_))
         {
            _loc6_ = new BitmapData(_loc5_.bitmapData.width * param3,_loc5_.bitmapData.height * param3);
            (_loc7_ = new Matrix()).scale(param3,param3);
            if(!(_loc16_ && param3))
            {
               _loc6_.draw(_loc5_.bitmapData,_loc7_);
               loop0:
               while(true)
               {
                  §§push(_loc6_.width - 2);
                  loop1:
                  while(true)
                  {
                     §§push(int(§§pop()));
                     loop2:
                     while(true)
                     {
                        _loc8_ = §§pop();
                        loop3:
                        while(true)
                        {
                           §§push(_loc6_.height - 2);
                           loop4:
                           for(; _loc17_; loop7:
                           for(; !(_loc16_ && param1); if(_loc16_ && param2)
                           {
                              continue;
                           },§§push(int(§§pop())),if(_loc17_)
                           {
                              if(_loc17_ || param1)
                              {
                                 if(!_loc16_)
                                 {
                                    §§push(§§pop());
                                    if(_loc17_)
                                    {
                                       _loc13_ = §§pop();
                                       loop29:
                                       for(; !(_loc16_ && param1); if(!(_loc17_ || param3))
                                       {
                                          continue;
                                       },if(_loc17_)
                                       {
                                          _loc14_ = §§pop();
                                          if(_loc16_)
                                          {
                                             §§goto(addr287);
                                          }
                                          §§goto(addr225);
                                       },while(true)
                                       {
                                          §§push(§§pop() - 1);
                                          break loop29;
                                       })
                                       {
                                          §§push(§§pop() + 1);
                                          loop30:
                                          for(; _loc17_; if(!(_loc17_ || param1))
                                          {
                                             continue;
                                          },if(!(_loc16_ && param3))
                                          {
                                             if(!(_loc16_ && this))
                                             {
                                                §§push(int(§§pop()));
                                                continue loop29;
                                             }
                                             continue loop2;
                                          },§§goto(addr319))
                                          {
                                             if(!_loc16_)
                                             {
                                                _loc13_ = §§pop();
                                                while(!_loc16_)
                                                {
                                                   if(!(_loc17_ || param3))
                                                   {
                                                      continue loop0;
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(_loc12_);
                                                      if(!_loc16_)
                                                      {
                                                         continue loop30;
                                                      }
                                                      continue loop29;
                                                   }
                                                   §§goto(addr241);
                                                }
                                                §§goto(addr312);
                                                addr287:
                                             }
                                             §§goto(addr341);
                                          }
                                          §§goto(addr351);
                                       }
                                       while(true)
                                       {
                                          _loc12_ = §§pop();
                                          §§goto(addr312);
                                       }
                                       addr274:
                                    }
                                    §§goto(addr349);
                                 }
                                 §§goto(addr418);
                              }
                              §§goto(addr374);
                           },§§goto(addr274))
                           {
                              §§push(int(§§pop()));
                              loop8:
                              while(true)
                              {
                                 _loc10_ = §§pop();
                                 loop9:
                                 while(!_loc16_)
                                 {
                                    if(param1.top < 0)
                                    {
                                       loop10:
                                       while(true)
                                       {
                                          §§push(_loc10_);
                                          addr373:
                                          while(true)
                                          {
                                             §§push(§§pop() - 1);
                                             addr374:
                                             while(true)
                                             {
                                                _loc10_ = §§pop();
                                                addr375:
                                                while(!(_loc16_ && param3))
                                                {
                                                }
                                                continue loop9;
                                             }
                                          }
                                          loop23:
                                          while(true)
                                          {
                                             if(_loc16_ && this)
                                             {
                                                continue loop10;
                                             }
                                             if(param1.left < 0)
                                             {
                                                continue loop0;
                                             }
                                             loop28:
                                             while(true)
                                             {
                                                §§push(param1.right / _loc8_);
                                                if(!_loc16_)
                                                {
                                                   if(!_loc16_)
                                                   {
                                                      continue loop7;
                                                   }
                                                   addr340:
                                                   while(true)
                                                   {
                                                      §§push(int(§§pop()));
                                                      continue loop8;
                                                   }
                                                }
                                                else
                                                {
                                                   loop21:
                                                   while(true)
                                                   {
                                                      §§push(int(§§pop()));
                                                      addr319:
                                                      while(_loc17_ || this)
                                                      {
                                                         _loc12_ = §§pop();
                                                         continue loop23;
                                                      }
                                                      addr350:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() + 1);
                                                         addr351:
                                                         while(_loc17_ || param1)
                                                         {
                                                            _loc11_ = §§pop();
                                                            while(!(_loc16_ && this))
                                                            {
                                                               §§push(param1.left / _loc8_);
                                                               continue loop21;
                                                               if(!(_loc16_ && this))
                                                               {
                                                                  if(!_loc16_)
                                                                  {
                                                                     loop33:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc14_);
                                                                        if(_loc17_ || param3)
                                                                        {
                                                                           if(!(_loc16_ && param2))
                                                                           {
                                                                              §§push(_loc13_);
                                                                              if(_loc17_)
                                                                              {
                                                                                 if(§§pop() >= §§pop())
                                                                                 {
                                                                                    if(!(_loc16_ && this))
                                                                                    {
                                                                                       if(!_loc16_)
                                                                                       {
                                                                                          _loc6_.dispose();
                                                                                          addr122:
                                                                                          if(!(_loc16_ && param1))
                                                                                          {
                                                                                             if(true)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             loop35:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc15_);
                                                                                                addr133:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc11_);
                                                                                                   addr134:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(§§pop() >= §§pop())
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc17_)
                                                                                                            {
                                                                                                               addr137:
                                                                                                               _loc14_++;
                                                                                                               while(_loc16_ && this)
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     continue loop35;
                                                                                                                  }
                                                                                                                  §§goto(addr137);
                                                                                                               }
                                                                                                               continue loop33;
                                                                                                               addr138:
                                                                                                            }
                                                                                                         }
                                                                                                         addr135:
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         param2.copyPixels(_loc6_,_loc6_.rect,new Point(_loc14_ * _loc8_,_loc15_ * _loc9_));
                                                                                                         while(true)
                                                                                                         {
                                                                                                            _loc15_++;
                                                                                                         }
                                                                                                         addr167:
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!_loc16_)
                                                                                                         {
                                                                                                            continue loop35;
                                                                                                         }
                                                                                                         §§goto(addr167);
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr135);
                                                                                       }
                                                                                       §§goto(addr138);
                                                                                    }
                                                                                    §§goto(addr122);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§push(_loc10_);
                                                                                    if(_loc17_)
                                                                                    {
                                                                                       addr175:
                                                                                       _loc15_ = §§pop();
                                                                                    }
                                                                                    §§goto(addr175);
                                                                                 }
                                                                              }
                                                                              §§goto(addr134);
                                                                           }
                                                                           §§goto(addr175);
                                                                        }
                                                                        §§goto(addr133);
                                                                     }
                                                                     addr434:
                                                                     return;
                                                                     addr241:
                                                                  }
                                                                  break loop28;
                                                               }
                                                            }
                                                            continue loop3;
                                                         }
                                                         §§goto(addr373);
                                                      }
                                                   }
                                                }
                                                addr312:
                                                while(true)
                                                {
                                                   continue loop28;
                                                }
                                             }
                                             §§goto(addr375);
                                          }
                                          §§goto(addr374);
                                       }
                                    }
                                    while(true)
                                    {
                                       §§goto(addr340);
                                    }
                                 }
                                 §§goto(addr419);
                              }
                           })
                           {
                              §§push(int(§§pop()));
                              while(true)
                              {
                                 _loc9_ = §§pop();
                                 addr419:
                                 while(true)
                                 {
                                    §§push(param1.top / _loc9_);
                                    continue loop4;
                                 }
                              }
                           }
                           continue loop1;
                        }
                     }
                  }
                  while(_loc17_ || param2)
                  {
                     §§goto(addr310);
                     §§push(_loc12_);
                     §§goto(addr289);
                  }
               }
            }
            §§goto(addr296);
         }
         §§goto(addr434);
      }
      
      public function §78§(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §4!H§
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc10_:§4!H§ = null;
         var _loc11_:* = param2;
         if(_loc12_)
         {
            §§push("BIRD_BLACK");
            if(!_loc13_)
            {
               §§push(_loc11_);
               if(!(_loc13_ && param3))
               {
                  if(§§pop() === §§pop())
                  {
                     if(!_loc13_)
                     {
                        addr225:
                        §§push(0);
                        if(!_loc12_)
                        {
                           addr350:
                        }
                     }
                     else
                     {
                        addr340:
                        §§push(5);
                        if(_loc12_)
                        {
                           addr343:
                        }
                     }
                  }
                  else
                  {
                     §§push("BIRD_BLUE");
                     if(!(_loc13_ && param1))
                     {
                        addr237:
                        §§push(_loc11_);
                        if(!(_loc13_ && param1))
                        {
                           if(§§pop() === §§pop())
                           {
                              if(_loc12_ || param2)
                              {
                                 §§push(1);
                                 if(!(_loc12_ || param1))
                                 {
                                    addr284:
                                 }
                              }
                              else
                              {
                                 addr317:
                                 §§push(4);
                                 if(!_loc12_)
                                 {
                                 }
                              }
                              §§goto(addr355);
                           }
                           else
                           {
                              §§push("BIRD_GREEN");
                              if(!(_loc13_ && param2))
                              {
                                 §§push(_loc11_);
                                 if(!_loc13_)
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       if(_loc12_)
                                       {
                                          §§push(2);
                                          if(_loc12_ || this)
                                          {
                                             §§goto(addr284);
                                          }
                                          else
                                          {
                                             §§goto(addr343);
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr340);
                                       }
                                       §§goto(addr355);
                                    }
                                    else
                                    {
                                       §§push("BIRD_WHITE");
                                       if(_loc12_ || param3)
                                       {
                                          addr293:
                                          §§push(_loc11_);
                                          if(!_loc13_)
                                          {
                                             if(§§pop() === §§pop())
                                             {
                                                if(!_loc13_)
                                                {
                                                   §§push(3);
                                                   if(!_loc12_)
                                                   {
                                                   }
                                                   §§goto(addr355);
                                                }
                                                else
                                                {
                                                   §§goto(addr317);
                                                }
                                             }
                                             else
                                             {
                                                §§push("BIRD_YELLOW");
                                                if(!_loc13_)
                                                {
                                                   §§push(_loc11_);
                                                   if(_loc12_)
                                                   {
                                                      addr309:
                                                      if(§§pop() === §§pop())
                                                      {
                                                         if(!(_loc13_ && param2))
                                                         {
                                                            §§goto(addr317);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr340);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§push("BIRD_RED");
                                                         if(!_loc13_)
                                                         {
                                                            addr334:
                                                            §§push(_loc11_);
                                                            if(!_loc13_)
                                                            {
                                                               if(§§pop() === §§pop())
                                                               {
                                                                  if(!_loc13_)
                                                                  {
                                                                     §§goto(addr340);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  addr346:
                                                                  if("BIRD_REDBIG" !== _loc11_)
                                                                  {
                                                                     addr355:
                                                                     switch(§§pop())
                                                                     {
                                                                        case 0:
                                                                           _loc10_ = new §,u§(this,param1,this.§+!X§.mLevelEngine.mWorld,this.§+!X§,this.§!E§,param2,param3,param4,param5,param8,param9);
                                                                           break;
                                                                        case 1:
                                                                           _loc10_ = new §%s§(this,param1,this.§+!X§.mLevelEngine.mWorld,this.§+!X§,this.§!E§,param2,param3,param4,param5,param8,param9);
                                                                           break;
                                                                        case 2:
                                                                           _loc10_ = new §9J§(this,param1,this.§+!X§.mLevelEngine.mWorld,this.§+!X§,this.§!E§,param2,param3,param4,param5,param8,param9);
                                                                           break;
                                                                        case 3:
                                                                           _loc10_ = new §]!O§(this,param1,this.§+!X§.mLevelEngine.mWorld,this.§+!X§,this.§!E§,param2,param3,param4,param5,param8,param9);
                                                                           break;
                                                                        case 4:
                                                                           _loc10_ = new §3!v§(this,param1,this.§+!X§.mLevelEngine.mWorld,this.§+!X§,this.§!E§,param2,param3,param4,param5,param8,param9);
                                                                           break;
                                                                        case 5:
                                                                           _loc10_ = new §,7§(this,param1,this.§+!X§.mLevelEngine.mWorld,this.§+!X§,this.§!E§,param2,param3,param4,param5,param8,param9);
                                                                           break;
                                                                        case 6:
                                                                           _loc10_ = new §]!Z§(this,param1,this.§+!X§.mLevelEngine.mWorld,this.§+!X§,this.§!E§,param2,param3,param4,param5,param8,param9);
                                                                           break;
                                                                        default:
                                                                           _loc10_ = new §4J§(this,param1,this.§+!X§.mLevelEngine.mWorld,this.§+!X§,this.§!E§,param2,param3,param4,param5,param8,param9);
                                                                     }
                                                                     return _loc10_;
                                                                     §§push(7);
                                                                  }
                                                               }
                                                               §§goto(addr355);
                                                               §§goto(addr355);
                                                            }
                                                         }
                                                         §§goto(addr346);
                                                      }
                                                      §§goto(addr355);
                                                   }
                                                   §§goto(addr346);
                                                }
                                             }
                                             §§goto(addr355);
                                          }
                                          §§goto(addr309);
                                       }
                                    }
                                    §§goto(addr355);
                                 }
                                 §§goto(addr309);
                              }
                              §§goto(addr334);
                           }
                        }
                        §§goto(addr309);
                     }
                     §§goto(addr293);
                  }
                  §§goto(addr355);
               }
               §§goto(addr309);
            }
            §§goto(addr237);
         }
         §§goto(addr225);
      }
      
      public function hasBirds() : Boolean
      {
         return this.§;!o§ > 0;
      }
      
      public function addObject(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : §4!H§
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         var _loc10_:Sprite;
         (_loc10_ = new Sprite()).scaleX = param8;
         if(!_loc15_)
         {
            _loc10_.scaleY = param8;
         }
         var _loc11_:§4!H§;
         §§push((_loc11_ = this.createObject(_loc10_,param1,param2,param3,param4,param5,param6,param7,param8)).isTexture());
         if(_loc14_)
         {
            if(§§pop())
            {
               if(!_loc15_)
               {
                  §§push(_loc10_);
                  §§push(this.§?!e§);
                  if(!(_loc15_ && this))
                  {
                     §§push(!§§pop());
                  }
                  §§pop().visible = §§pop();
                  if(_loc14_)
                  {
                     this.§@!d§[this.§@!d§.length] = _loc11_;
                     while(true)
                     {
                     }
                     addr155:
                  }
                  else
                  {
                     addr147:
                  }
                  loop0:
                  while(true)
                  {
                     §§push(_loc11_ is §4J§);
                     if(!(_loc15_ && param2))
                     {
                        §§push(§§pop());
                        if(!_loc15_)
                        {
                           if(§§pop())
                           {
                              if(_loc14_)
                              {
                                 §§pop();
                                 if(_loc14_ || param1)
                                 {
                                    §§push(_loc11_.§3!i§());
                                    if(_loc14_ || param1)
                                    {
                                       §§push(!§§pop());
                                       if(!(_loc15_ && param2))
                                       {
                                          addr81:
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                if(_loc14_)
                                                {
                                                   this.§>e§.addChild(_loc10_);
                                                   if(!_loc15_)
                                                   {
                                                      if(!(_loc15_ && this))
                                                      {
                                                         if(false)
                                                         {
                                                            continue loop0;
                                                         }
                                                         addr238:
                                                         var _loc12_:*;
                                                         §§push((_loc12_ = this).§;!o§);
                                                         if(_loc14_ || this)
                                                         {
                                                            §§push(§§pop() + 1);
                                                         }
                                                         var _loc13_:* = §§pop();
                                                         if(_loc14_ || param3)
                                                         {
                                                            _loc12_.§;!o§ = _loc13_;
                                                         }
                                                         if(_loc14_ || param2)
                                                         {
                                                            addr233:
                                                            while(true)
                                                            {
                                                               §§push(param5);
                                                               break loop0;
                                                            }
                                                            addr233:
                                                         }
                                                         loop17:
                                                         while(true)
                                                         {
                                                            §§push(this.§+!X§);
                                                            loop9:
                                                            while(true)
                                                            {
                                                               §§pop().§75§(_loc11_);
                                                               loop10:
                                                               while(!(_loc15_ && param3))
                                                               {
                                                                  loop11:
                                                                  while(true)
                                                                  {
                                                                     §§push(param6);
                                                                     if(!_loc15_)
                                                                     {
                                                                        if(_loc14_)
                                                                        {
                                                                           if(!_loc15_)
                                                                           {
                                                                              while(§§pop())
                                                                              {
                                                                                 if(!(_loc15_ && param1))
                                                                                 {
                                                                                    addr298:
                                                                                    if(!_loc15_)
                                                                                    {
                                                                                       §§push(this.§+!X§);
                                                                                       if(!_loc14_)
                                                                                       {
                                                                                          continue loop9;
                                                                                       }
                                                                                       §§pop().activeObject = _loc11_;
                                                                                       addr218:
                                                                                       if(_loc15_ && this)
                                                                                       {
                                                                                          continue loop10;
                                                                                       }
                                                                                       addr225:
                                                                                       if(_loc14_ || param2)
                                                                                       {
                                                                                          addr232:
                                                                                          break loop11;
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§goto(addr233);
                                                                                          §§goto(addr225);
                                                                                       }
                                                                                       addr257:
                                                                                    }
                                                                                    while(!_loc15_)
                                                                                    {
                                                                                       continue loop17;
                                                                                    }
                                                                                    while(!(_loc15_ && param2))
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          §§goto(addr233);
                                                                                       }
                                                                                    }
                                                                                    loop3:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(param9);
                                                                                       if(!_loc15_)
                                                                                       {
                                                                                          if(_loc14_)
                                                                                          {
                                                                                             if(_loc14_)
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(Boolean(§§pop()));
                                                                                                   addr277:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      addr278:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            break loop10;
                                                                                                         }
                                                                                                         this.§16§.addChild(_loc10_);
                                                                                                         §§goto(addr257);
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                addr276:
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(Boolean(§§pop()));
                                                                                                   break loop3;
                                                                                                }
                                                                                                addr294:
                                                                                             }
                                                                                          }
                                                                                          break;
                                                                                       }
                                                                                       §§goto(addr278);
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop());
                                                                                       addr296:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!§§pop())
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                §§pop();
                                                                                                §§goto(addr298);
                                                                                             }
                                                                                             addr297:
                                                                                          }
                                                                                          §§goto(addr277);
                                                                                       }
                                                                                    }
                                                                                    addr298:
                                                                                    addr283:
                                                                                    addr295:
                                                                                    addr236:
                                                                                 }
                                                                                 §§goto(addr218);
                                                                              }
                                                                              break;
                                                                              addr202:
                                                                           }
                                                                           §§goto(addr297);
                                                                        }
                                                                        §§goto(addr278);
                                                                     }
                                                                     break loop0;
                                                                  }
                                                                  return _loc11_;
                                                               }
                                                               while(true)
                                                               {
                                                                  this.§%L§.addChild(_loc10_);
                                                                  §§goto(addr283);
                                                               }
                                                            }
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr155);
                                                      }
                                                   }
                                                   §§goto(addr298);
                                                }
                                                §§goto(addr232);
                                             }
                                             else
                                             {
                                                §§push(_loc11_.front);
                                             }
                                             §§goto(addr294);
                                          }
                                          addr82:
                                       }
                                       §§goto(addr295);
                                    }
                                    §§goto(addr202);
                                 }
                                 §§goto(addr238);
                              }
                              §§goto(addr276);
                           }
                           §§goto(addr81);
                        }
                        §§goto(addr296);
                     }
                     break;
                  }
                  while(true)
                  {
                     if(§§pop())
                     {
                        §§goto(addr236);
                     }
                     §§goto(addr194);
                  }
               }
               §§goto(addr147);
            }
            else
            {
               this.§@!d§[this.§@!d§.length] = _loc11_;
               if(_loc14_)
               {
                  §§goto(addr147);
               }
            }
            §§goto(addr290);
         }
         §§goto(addr82);
      }
      
      public function §+1§(param1:int, param2:§4!H§, param3:§4!H§) : §@!;§
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc6_:§@!;§ = null;
         var _loc4_:int = this.§@!d§.indexOf(param2) - this.§@W§;
         var _loc5_:int = this.§@!d§.indexOf(param3) - this.§@W§;
         if(!(_loc7_ && param2))
         {
            §§push(_loc4_);
            if(_loc8_)
            {
               §§push(0);
               if(_loc8_ || param3)
               {
                  §§push(§§pop() >= §§pop());
                  if(_loc8_ || this)
                  {
                     if(§§pop())
                     {
                        if(_loc8_ || param2)
                        {
                           §§pop();
                           if(_loc8_ || this)
                           {
                              addr94:
                              if(_loc5_ >= 0)
                              {
                                 (_loc6_ = new §@!;§(§-!`§.§,!w§,_loc4_,_loc5_,new Point(0,0),new Point(0,0))).§ E§ = this.§+!X§.mLevelEngine.mWorld.§6!8§(_loc6_.§+!@§(param2,param3));
                                 §§goto(addr95);
                              }
                              §§goto(addr152);
                           }
                           addr95:
                           if(_loc8_ || param1)
                           {
                              this.§<?§.push(_loc6_);
                              if(!(_loc8_ || param2))
                              {
                                 addr152:
                                 return null;
                              }
                           }
                           return _loc6_;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr94);
      }
      
      public function §^!L§(param1:§@!;§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            if(!(param1.§ E§ is b2WeldJoint))
            {
               if(!_loc4_)
               {
                  return;
               }
            }
         }
         var _loc2_:§4!H§ = this.§^k§(param1.index1 + this.§@W§);
         var _loc3_:§4!H§ = this.§^k§(param1.index2 + this.§@W§);
         if(!_loc4_)
         {
            this.§+!X§.mLevelEngine.mWorld.§+!O§(param1.§ E§);
            do
            {
               param1.§ E§ = this.§+!X§.mLevelEngine.mWorld.§6!8§(param1.§+!@§(_loc2_,_loc3_));
            }
            while(_loc4_ && _loc3_);
            
         }
      }
      
      public function §7!#§(param1:§4!H§) : Vector.<§@!;§>
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:§@!;§ = null;
         var _loc2_:Vector.<§@!;§> = new Vector.<§@!;§>();
         var _loc3_:int = this.§@!d§.indexOf(param1) - this.§@W§;
         if(!_loc7_)
         {
            §§push(_loc3_);
            if(!(_loc7_ && param1))
            {
               if(§§pop() >= 0)
               {
                  addr48:
                  addr47:
                  for each(_loc4_ in this.§<?§)
                  {
                     §§push(_loc4_.index1 == _loc3_);
                     if(_loc8_ || _loc3_)
                     {
                        if(!§§pop())
                        {
                           if(!(_loc7_ && param1))
                           {
                              addr100:
                              §§pop();
                              if(_loc7_ && _loc3_)
                              {
                                 continue;
                              }
                              §§push(_loc4_.index2 == _loc3_);
                           }
                        }
                        if(§§pop())
                        {
                           if(!(_loc7_ && this))
                           {
                              _loc2_.push(_loc4_);
                           }
                        }
                        continue;
                     }
                     §§goto(addr100);
                  }
               }
               return _loc2_;
            }
            §§goto(addr48);
         }
         §§goto(addr47);
      }
      
      public function §<!r§() : Vector.<§@!;§>
      {
         return this.§<?§;
      }
      
      public function §0!C§(param1:§4!H§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:int = this.§@!d§.indexOf(param1) - this.§@W§;
         var _loc3_:* = int(this.§<?§.length - 1);
         while(true)
         {
            §§push(_loc3_);
            if(!(_loc4_ && param1))
            {
               if(§§pop() < 0)
               {
                  if(_loc4_)
                  {
                     continue;
                  }
                  if(!_loc4_)
                  {
                     break;
                  }
                  loop1:
                  while(!_loc5_)
                  {
                     loop2:
                     while(true)
                     {
                        §§push(this.§<?§[_loc3_].index2 == _loc2_);
                        if(_loc5_)
                        {
                           if(!(_loc4_ && this))
                           {
                              break;
                           }
                           addr126:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 break loop2;
                              }
                           }
                        }
                        while(true)
                        {
                           §§pop();
                           continue loop2;
                        }
                     }
                     while(true)
                     {
                        if(!§§pop())
                        {
                           break loop1;
                        }
                        if(!(_loc4_ && this))
                        {
                           this.§<?§.splice(_loc3_,1);
                        }
                        continue loop1;
                     }
                  }
                  §§push(_loc3_);
                  if(_loc5_ || this)
                  {
                     addr71:
                     _loc3_ = §§pop() - 1;
                     continue;
                  }
                  §§goto(addr71);
               }
               else
               {
                  §§push(this.§<?§[_loc3_].index1 == _loc2_);
               }
               §§goto(addr126);
            }
            §§goto(addr71);
         }
      }
      
      public function §3!d§(param1:§4!H§, param2:§4!H§) : Boolean
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:int = this.§@!d§.indexOf(param1) - this.§@W§;
         var _loc4_:int = this.§@!d§.indexOf(param2) - this.§@W§;
         var _loc5_:* = int(this.§<?§.length - 1);
         loop0:
         while(true)
         {
            §§push(_loc5_);
            if(_loc6_)
            {
               if(!_loc7_)
               {
                  if(§§pop() < 0)
                  {
                     if(_loc6_)
                     {
                        if(_loc6_ || param2)
                        {
                           if(_loc6_ || _loc3_)
                           {
                              §§push(false);
                              if(!(_loc7_ && param1))
                              {
                                 if(_loc6_ || _loc3_)
                                 {
                                    return §§pop();
                                 }
                                 loop2:
                                 while(true)
                                 {
                                    if(!_loc7_)
                                    {
                                       if(_loc6_ || _loc3_)
                                       {
                                          if(_loc6_)
                                          {
                                             if(_loc7_)
                                             {
                                                while(true)
                                                {
                                                   §§push(§§pop());
                                                   loop14:
                                                   while(true)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         loop8:
                                                         while(true)
                                                         {
                                                            §§pop();
                                                            addr200:
                                                            loop9:
                                                            while(true)
                                                            {
                                                               §§push(this.§<?§[_loc5_].index2 == _loc4_);
                                                               addr181:
                                                               while(true)
                                                               {
                                                                  if(!_loc6_)
                                                                  {
                                                                     continue loop8;
                                                                  }
                                                                  continue loop9;
                                                               }
                                                            }
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(§§pop());
                                                         loop5:
                                                         while(!§§pop())
                                                         {
                                                            loop6:
                                                            while(true)
                                                            {
                                                               §§pop();
                                                               addr187:
                                                               while(true)
                                                               {
                                                                  §§push(this.§<?§[_loc5_].index1 == _loc4_);
                                                                  addr143:
                                                                  while(true)
                                                                  {
                                                                     if(!(_loc7_ && param2))
                                                                     {
                                                                        §§push(§§pop());
                                                                        if(!(_loc7_ && param2))
                                                                        {
                                                                           if(_loc6_)
                                                                           {
                                                                              if(!§§pop())
                                                                              {
                                                                                 addr171:
                                                                                 break loop5;
                                                                              }
                                                                              §§pop();
                                                                              continue loop2;
                                                                           }
                                                                           continue loop14;
                                                                        }
                                                                        continue loop5;
                                                                     }
                                                                     continue loop6;
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                                addr197:
                                             }
                                             if(!§§pop())
                                             {
                                                while(true)
                                                {
                                                   §§push(_loc5_);
                                                   addr95:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() - 1);
                                                      addr96:
                                                      while(true)
                                                      {
                                                         _loc5_ = §§pop();
                                                         addr97:
                                                         while(true)
                                                         {
                                                            if(!_loc6_)
                                                            {
                                                               break loop2;
                                                            }
                                                            if(!_loc7_)
                                                            {
                                                               break;
                                                            }
                                                            continue loop2;
                                                         }
                                                         continue loop0;
                                                      }
                                                   }
                                                }
                                                addr93:
                                             }
                                             break;
                                          }
                                          §§goto(addr181);
                                       }
                                       §§goto(addr143);
                                    }
                                    §§goto(addr171);
                                 }
                                 §§push(true);
                                 break;
                              }
                              break;
                           }
                           §§goto(addr200);
                        }
                        else if(_loc6_ || _loc3_)
                        {
                           §§goto(addr93);
                        }
                        §§goto(addr187);
                     }
                     §§goto(addr97);
                  }
                  else
                  {
                     §§push(this.§<?§[_loc5_].index1 == _loc3_);
                  }
                  §§goto(addr197);
               }
               §§goto(addr95);
            }
            §§goto(addr96);
         }
         return §§pop();
      }
      
      protected function createObject(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §4!H§
      {
         var _loc15_:Boolean = false;
         var _loc16_:Boolean = true;
         var _loc10_:§4!H§ = null;
         var _loc11_:§8!4§ = null;
         var _loc12_:§8!4§ = null;
         if(!(_loc15_ && param2))
         {
            §§push(param2);
            if(!_loc15_)
            {
               §§push("BIRD");
               if(!_loc15_)
               {
                  if(§§pop().indexOf(§§pop()) == 0)
                  {
                     if(!_loc15_)
                     {
                        _loc10_ = this.§78§(param1,param2,param3,param4,param5,param6,param7,param8,param9);
                        if(_loc16_)
                        {
                           var _loc13_:*;
                           §§push((_loc13_ = this).§2i§);
                           if(!(_loc15_ && param1))
                           {
                              §§push(§§pop() + 1);
                           }
                           var _loc14_:* = §§pop();
                           if(_loc16_)
                           {
                              _loc13_.§2i§ = _loc14_;
                           }
                        }
                     }
                     else
                     {
                        addr85:
                        §§push(§+!4§.§ !`§(param2));
                        if(_loc16_)
                        {
                           _loc11_ = §§pop();
                           _loc10_ = new §-!0§(this,param1,this.§+!X§.mLevelEngine.mWorld,this.§+!X§,this.§!E§,param2,param3,param4,param5,param9,_loc11_.particleJSONId,_loc11_.particleVariationCount);
                        }
                        else
                        {
                           addr119:
                           §§push((_loc12_ = §§pop()) == null);
                           if(_loc16_)
                           {
                              §§push(§§pop());
                              if(_loc16_ || param3)
                              {
                                 if(§§pop())
                                 {
                                    if(_loc16_ || param1)
                                    {
                                       §§pop();
                                       if(_loc16_ || param1)
                                       {
                                          §§push(param2);
                                          if(_loc16_ || param2)
                                          {
                                             §§push(§§pop().indexOf("MISC_") == 0);
                                             if(_loc16_ || param2)
                                             {
                                                addr179:
                                                if(§§pop())
                                                {
                                                   if(!(_loc15_ && this))
                                                   {
                                                      addr200:
                                                      §§push("MISC_FOOD_");
                                                      if(!(_loc15_ && param1))
                                                      {
                                                         §§push(§§pop() + param2.substring(5));
                                                      }
                                                      param2 = §§pop();
                                                      if(_loc16_ || param3)
                                                      {
                                                         addr208:
                                                         _loc12_ = §+!4§.§ !`§(param2);
                                                         addr213:
                                                         §§push(_loc12_.§ W§);
                                                         if(!_loc15_)
                                                         {
                                                            §§push(§8!4§.§97§);
                                                            if(_loc16_ || param1)
                                                            {
                                                               §§push(§§pop() == §§pop());
                                                               if(!(_loc15_ && this))
                                                               {
                                                                  addr235:
                                                                  if(!§§pop())
                                                                  {
                                                                     if(!_loc16_)
                                                                     {
                                                                     }
                                                                     addr251:
                                                                     if(§§pop())
                                                                     {
                                                                        _loc10_ = new §&u§(this,param1,this.§+!X§.mLevelEngine.mWorld,this.§+!X§,this.§!E§,param2,param3,param4,param5,param9,_loc12_.front,_loc12_.particleJSONId,_loc12_.particleVariationCount);
                                                                        addr309:
                                                                        return _loc10_;
                                                                        addr252:
                                                                     }
                                                                     else
                                                                     {
                                                                        _loc10_ = new §4!H§(this,param1,this.§+!X§.mLevelEngine.mWorld,this.§+!X§,this.§!E§,param2,param3,param4,param5,param9,_loc12_.front);
                                                                        §§goto(addr309);
                                                                     }
                                                                     §§goto(addr309);
                                                                  }
                                                                  §§goto(addr251);
                                                               }
                                                               §§pop();
                                                               if(_loc16_ || this)
                                                               {
                                                                  addr250:
                                                                  §§goto(addr251);
                                                                  §§push(_loc12_.§ W§ == §8!4§.§+!#§);
                                                               }
                                                               §§goto(addr252);
                                                            }
                                                         }
                                                         §§goto(addr250);
                                                      }
                                                   }
                                                   §§goto(addr250);
                                                }
                                                §§goto(addr213);
                                             }
                                             §§goto(addr251);
                                          }
                                          §§goto(addr200);
                                       }
                                       §§goto(addr208);
                                    }
                                 }
                                 §§goto(addr179);
                              }
                              §§goto(addr235);
                           }
                           §§goto(addr251);
                        }
                     }
                     §§goto(addr309);
                  }
                  else
                  {
                     addr81:
                     §§push(param2);
                     §§push("PIG");
                  }
                  §§goto(addr85);
               }
               if(§§pop().indexOf(§§pop()) == 0)
               {
                  §§goto(addr85);
               }
               else
               {
                  §§push(§+!4§.§ !`§(param2));
               }
               §§goto(addr119);
            }
            §§goto(addr81);
         }
         §§goto(addr85);
      }
      
      public function §@c§(param1:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§4!H§ = null;
         var _loc2_:* = int(this.§@!d§.length - 1);
         loop0:
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§@!d§[_loc2_] as §4!H§;
            if(!_loc4_)
            {
               if(_loc3_)
               {
                  loop1:
                  while(true)
                  {
                     if(_loc3_.§%,§ <= 0)
                     {
                        if(!(_loc4_ && this))
                        {
                           this.§+!W§(_loc2_,true,true,true);
                        }
                        loop2:
                        while(true)
                        {
                           addr39:
                           loop6:
                           while(true)
                           {
                              §§push(_loc2_);
                              if(!(_loc4_ && this))
                              {
                                 §§push(§§pop() - 1);
                              }
                              _loc2_ = §§pop();
                              if(!_loc4_)
                              {
                                 addr62:
                                 if(!(_loc4_ && this))
                                 {
                                    if(_loc5_)
                                    {
                                       while(false)
                                       {
                                       }
                                       continue loop0;
                                       addr71:
                                    }
                                    continue loop2;
                                 }
                                 addr84:
                                 while(true)
                                 {
                                    §§goto(addr62);
                                 }
                                 while(true)
                                 {
                                    _loc3_.override();
                                 }
                              }
                              while(_loc5_)
                              {
                                 continue loop6;
                              }
                              continue loop1;
                           }
                        }
                     }
                     else
                     {
                        _loc3_.§"!7§();
                     }
                     §§goto(addr84);
                  }
               }
               §§goto(addr39);
            }
            §§goto(addr71);
         }
         if(_loc5_ || this)
         {
            this.§<!E§(param1);
         }
      }
      
      protected function §<!E§(param1:Number) : void
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc3_:§@!;§ = null;
         var _loc4_:§6! § = null;
         var _loc5_:* = 0;
         var _loc6_:§4!H§ = null;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc2_:* = int(this.§#t§.length - 1);
         while(true)
         {
            §§push(_loc2_);
            if(_loc11_ || _loc3_)
            {
               if(§§pop() < 0)
               {
                  §§goto(addr442);
               }
               if((_loc4_ = this.§#t§[_loc2_]).§2;§)
               {
                  if(_loc11_)
                  {
                     §§push(_loc4_.update(param1));
                     if(_loc11_)
                     {
                        §§push(int(§§pop()));
                        if(_loc11_)
                        {
                           addr58:
                           §§push(§§pop());
                           if(!_loc12_)
                           {
                              _loc5_ = §§pop();
                              addr113:
                              if(_loc11_)
                              {
                                 §§push(-1);
                              }
                              _loc2_ = §§pop();
                              continue;
                           }
                           if(§§pop() != §§pop())
                           {
                              if(_loc12_ && param1)
                              {
                                 continue;
                              }
                              addr73:
                              §§push(this);
                              §§push("block_");
                              if(!(_loc12_ && _loc3_))
                              {
                                 §§push(§§pop() + _loc5_);
                              }
                              if(_loc6_ = §§pop().§8[§(§§pop()))
                              {
                                 if(_loc11_ || this)
                                 {
                                    this.§[Z§(_loc6_,true,true,true);
                                    if(!_loc11_)
                                    {
                                    }
                                    addr109:
                                    §§push(_loc2_);
                                    if(!_loc12_)
                                    {
                                       §§goto(addr113);
                                       §§push(§§pop() - 1);
                                    }
                                    §§goto(addr113);
                                 }
                              }
                              this.§#t§.splice(_loc2_,1);
                           }
                           §§goto(addr109);
                        }
                        §§goto(addr113);
                     }
                     §§goto(addr58);
                  }
                  §§goto(addr73);
               }
               §§goto(addr109);
            }
            break;
         }
         var _loc9_:* = §§pop();
         if(!_loc12_)
         {
            loop1:
            for each(_loc3_ in this.§<?§)
            {
               if(_loc11_ || _loc3_)
               {
                  §§push(_loc3_.type == §-!`§.§+!]§);
                  while(true)
                  {
                     §§push(§§pop());
                     addr435:
                     while(true)
                     {
                        if(§§pop())
                        {
                           addr436:
                           while(true)
                           {
                              §§pop();
                              addr437:
                              while(true)
                              {
                                 §§push(Boolean(_loc3_.§8!A§));
                              }
                           }
                           addr436:
                        }
                        addr419:
                        while(true)
                        {
                           addr420:
                           while(§§pop())
                           {
                           }
                           continue loop1;
                        }
                     }
                     addr301:
                     if(!(_loc11_ || this))
                     {
                        continue;
                     }
                     §§pop();
                     loop34:
                     while(true)
                     {
                        if(_loc11_ || _loc3_)
                        {
                           while(true)
                           {
                              §§push(_loc8_);
                              loop36:
                              while(!(_loc12_ && _loc2_))
                              {
                                 §§push(0);
                                 if(!_loc12_)
                                 {
                                    §§push(§§pop() < §§pop());
                                    while(true)
                                    {
                                       if(_loc11_ || _loc2_)
                                       {
                                          §§push(§§pop());
                                          if(!_loc12_)
                                          {
                                             if(!(_loc12_ && param1))
                                             {
                                                if(§§pop())
                                                {
                                                   loop38:
                                                   while(true)
                                                   {
                                                      if(!_loc12_)
                                                      {
                                                         if(_loc11_)
                                                         {
                                                            §§pop();
                                                            loop39:
                                                            while(true)
                                                            {
                                                               §§push(_loc7_);
                                                               if(!_loc11_)
                                                               {
                                                                  continue loop36;
                                                               }
                                                               addr158:
                                                               if(!(_loc12_ && param1))
                                                               {
                                                                  addr165:
                                                                  if(!(_loc12_ && this))
                                                                  {
                                                                     if(_loc11_)
                                                                     {
                                                                        if(!_loc11_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        continue loop38;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        _loc8_ = §§pop();
                                                                        addr414:
                                                                        while(true)
                                                                        {
                                                                           §§push(Boolean(_loc3_.§]!L§));
                                                                           addr381:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop());
                                                                              loop18:
                                                                              while(true)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    loop19:
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop();
                                                                                       loop20:
                                                                                       while(!_loc12_)
                                                                                       {
                                                                                          §§push(Boolean(_loc3_.§0w§));
                                                                                          if(_loc11_ || this)
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop());
                                                                                                loop42:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!(_loc11_ || _loc3_))
                                                                                                   {
                                                                                                      continue loop18;
                                                                                                   }
                                                                                                   if(!§§pop())
                                                                                                   {
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!§§pop())
                                                                                                      {
                                                                                                         continue loop1;
                                                                                                      }
                                                                                                      if(_loc12_)
                                                                                                      {
                                                                                                         continue loop39;
                                                                                                      }
                                                                                                      if(!_loc12_)
                                                                                                      {
                                                                                                         addr199:
                                                                                                         §§push(_loc3_.§ E§);
                                                                                                         if(_loc12_ && _loc3_)
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         §§push(§§pop() as b2PrismaticJoint);
                                                                                                         §§push(_loc8_);
                                                                                                         if(!_loc12_)
                                                                                                         {
                                                                                                            §§push(-§§pop());
                                                                                                         }
                                                                                                         §§pop().§<! §(§§pop());
                                                                                                         continue loop39;
                                                                                                      }
                                                                                                      while(_loc11_ || this)
                                                                                                      {
                                                                                                         if(_loc12_ && _loc3_)
                                                                                                         {
                                                                                                            continue loop20;
                                                                                                         }
                                                                                                         §§push(_loc7_);
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop() >= _loc3_.upperLimit);
                                                                                                            addr287:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               break loop38;
                                                                                                            }
                                                                                                            §§goto(addr158);
                                                                                                         }
                                                                                                      }
                                                                                                      loop22:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc8_);
                                                                                                         addr319:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(0);
                                                                                                            addr320:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop() > §§pop());
                                                                                                               addr321:
                                                                                                               while(!_loc12_)
                                                                                                               {
                                                                                                                  §§push(§§pop());
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc12_)
                                                                                                                     {
                                                                                                                        continue loop42;
                                                                                                                     }
                                                                                                                     if(§§pop())
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(!(_loc12_ && this))
                                                                                                                           {
                                                                                                                              if(!_loc11_)
                                                                                                                              {
                                                                                                                                 continue loop19;
                                                                                                                              }
                                                                                                                              if(_loc12_)
                                                                                                                              {
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                              §§pop();
                                                                                                                              §§goto(addr339);
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§pop();
                                                                                                                                 continue loop22;
                                                                                                                              }
                                                                                                                              addr375:
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr420);
                                                                                                                        addr327:
                                                                                                                     }
                                                                                                                     §§goto(addr287);
                                                                                                                  }
                                                                                                                  continue loop18;
                                                                                                               }
                                                                                                               §§goto(addr436);
                                                                                                            }
                                                                                                            §§goto(addr165);
                                                                                                         }
                                                                                                      }
                                                                                                      addr339:
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc11_ || this)
                                                                                                      {
                                                                                                         §§push((§§pop() as b2PrismaticJoint).§%!4§());
                                                                                                         break loop39;
                                                                                                      }
                                                                                                      break;
                                                                                                      §§goto(addr199);
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push((§§pop() as b2PrismaticJoint).§!!Y§());
                                                                                                      addr426:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(Number(§§pop()));
                                                                                                         break loop36;
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             addr365:
                                                                                          }
                                                                                          §§goto(addr375);
                                                                                       }
                                                                                       addr421:
                                                                                       while(true)
                                                                                       {
                                                                                          §§goto(addr423);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr365);
                                                                              }
                                                                              addr294:
                                                                              if(_loc12_ && this)
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              §§goto(addr301);
                                                                           }
                                                                        }
                                                                     }
                                                                     addr413:
                                                                  }
                                                                  §§goto(addr319);
                                                               }
                                                               §§goto(addr284);
                                                            }
                                                            while(!_loc12_)
                                                            {
                                                               §§goto(addr413);
                                                               §§push(Number(§§pop()));
                                                            }
                                                            §§goto(addr426);
                                                         }
                                                         break;
                                                      }
                                                      addr292:
                                                      while(true)
                                                      {
                                                         if(!_loc12_)
                                                         {
                                                            §§goto(addr294);
                                                         }
                                                         §§goto(addr327);
                                                      }
                                                      §§goto(addr381);
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(§§pop());
                                                      addr289:
                                                      while(!_loc12_)
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            §§goto(addr292);
                                                         }
                                                         §§goto(addr193);
                                                      }
                                                      §§goto(addr324);
                                                   }
                                                }
                                                §§goto(addr193);
                                             }
                                             else
                                             {
                                                §§goto(addr435);
                                             }
                                          }
                                          §§goto(addr289);
                                       }
                                       §§goto(addr321);
                                       if(_loc12_ && _loc2_)
                                       {
                                          continue;
                                       }
                                       §§goto(addr193);
                                    }
                                    §§goto(addr419);
                                 }
                                 §§goto(addr320);
                              }
                              while(true)
                              {
                                 _loc7_ = §§pop();
                                 break loop34;
                              }
                           }
                           addr245:
                        }
                        break;
                        if(!(_loc11_ || this))
                        {
                           continue;
                        }
                        if(!_loc12_)
                        {
                           if(_loc11_)
                           {
                              if(true)
                              {
                                 continue loop1;
                              }
                              §§goto(addr245);
                           }
                           §§goto(addr437);
                        }
                        §§goto(addr414);
                     }
                     while(true)
                     {
                        §§goto(addr390);
                     }
                  }
               }
               §§goto(addr421);
            }
         }
         addr442:
         if(_loc11_ || _loc3_)
         {
            break loop0;
         }
      }
      
      public function addExplosions(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            this.§5!%§.push(§1! §.createExplosion(param1,param2,param3));
         }
         do
         {
            §6!H§.playSound("TntExplosions","ChannelExplosions");
         }
         while(!_loc5_);
         
      }
      
      public function §&8§(param1:Number, param2:Number) : int
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:§4!H§ = null;
         var _loc3_:int = this.§@!d§.length - 1;
         while(true)
         {
            §§push(_loc3_);
            if(_loc5_)
            {
               if(§§pop() < 0)
               {
                  break;
               }
               if(_loc4_ = this.§@!d§[_loc3_])
               {
                  if(!(_loc6_ && param2))
                  {
                     if(_loc4_.isInCoordinates(param1,param2))
                     {
                        if(!_loc6_)
                        {
                           addr69:
                           §§push(_loc3_);
                           if(!_loc6_)
                           {
                              return §§pop();
                           }
                        }
                        else
                        {
                           addr80:
                           §§push(_loc3_);
                           if(!(_loc5_ || this))
                           {
                              continue;
                           }
                        }
                        §§push(§§pop() - 1);
                        continue;
                     }
                     §§goto(addr80);
                  }
                  §§goto(addr69);
               }
               §§goto(addr80);
            }
            break;
         }
         return §§pop();
      }
      
      public function §!!,§(param1:Number, param2:Number) : §4!H§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:§4!H§ = null;
         var _loc3_:* = int(this.§@!d§.length - 1);
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§@!d§[_loc3_])
            {
               if(_loc5_)
               {
                  if(_loc4_.isInCoordinates(param1,param2))
                  {
                     if(!_loc6_)
                     {
                        return _loc4_;
                     }
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
         return null;
      }
      
      public function §^k§(param1:int) : §4!H§
      {
         return this.§@!d§[param1];
      }
      
      public function §4W§(param1:Number, param2:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:§4!H§ = null;
         var _loc3_:* = int(this.§@!d§.length - 1);
         while(_loc3_ >= 0)
         {
            (_loc4_ = this.§@!d§[_loc3_] as §4!H§).§4W§(param2,param1);
            if(_loc5_)
            {
               §§push(_loc3_);
               if(!(_loc6_ && param2))
               {
                  §§push(§§pop() - 1);
               }
               _loc3_ = §§pop();
            }
         }
      }
      
      private function §6!<§(param1:§4!H§, param2:Number) : Boolean
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:§4!H§ = null;
         if(_loc8_)
         {
            §§push(this.mSardineCanAdded);
            if(!(_loc9_ && this))
            {
               if(!§§pop())
               {
                  if(!(_loc9_ && param2))
                  {
                     addr44:
                     §§push(true);
                     if(_loc8_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr67:
                     §§push(false);
                     if(!(_loc9_ && _loc3_))
                     {
                        return §§pop();
                     }
                  }
               }
               else
               {
                  §§push(this.mMightyEagleAdded);
                  if(!_loc9_)
                  {
                     addr59:
                     if(§§pop())
                     {
                        if(_loc8_ || this)
                        {
                           §§goto(addr67);
                        }
                        addr77:
                        var _loc3_:* = §§pop();
                        if(_loc8_)
                        {
                           §§push(param1.§%,§);
                           loop0:
                           while(true)
                           {
                              §§push(param1.§0K§);
                              addr540:
                              while(true)
                              {
                                 if(§§pop() != §§pop())
                                 {
                                    §§push(this.§<!#§);
                                    loop2:
                                    while(true)
                                    {
                                       §§push(0);
                                       addr506:
                                       while(true)
                                       {
                                          if(§§pop() == §§pop())
                                          {
                                             loop4:
                                             while(true)
                                             {
                                                this.§<!#§ = this.§+!X§.§0!F§;
                                                loop5:
                                                while(true)
                                                {
                                                   if(!_loc9_)
                                                   {
                                                      addr490:
                                                      loop11:
                                                      while(true)
                                                      {
                                                         §§push(param1.§;!3§());
                                                         loop12:
                                                         while(true)
                                                         {
                                                            §§push(Boolean(§§pop()));
                                                            loop13:
                                                            while(true)
                                                            {
                                                               §§push(§§pop());
                                                               loop14:
                                                               while(true)
                                                               {
                                                                  if(!§§pop())
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§pop();
                                                                        addr497:
                                                                        while(true)
                                                                        {
                                                                           if(_loc8_)
                                                                           {
                                                                              addr482:
                                                                              §§push(this.§8!=§(param1));
                                                                              while(!_loc9_)
                                                                              {
                                                                                 §§push(Boolean(§§pop()));
                                                                              }
                                                                              continue loop13;
                                                                              addr482:
                                                                           }
                                                                           continue loop4;
                                                                        }
                                                                        continue loop5;
                                                                     }
                                                                     addr496:
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     loop19:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop());
                                                                        loop20:
                                                                        while(true)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              loop28:
                                                                              while(true)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    loop29:
                                                                                    for(; !(_loc9_ && this); while(_loc8_ || _loc3_)
                                                                                    {
                                                                                       if(!_loc9_)
                                                                                       {
                                                                                          §6!H§.playSound("Mighty_Eagle_Selected_1","ChannelBird");
                                                                                          §§goto(addr366);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr497);
                                                                                       }
                                                                                    })
                                                                                    {
                                                                                       §§push(this.mMightyEagleTimer);
                                                                                       loop30:
                                                                                       while(true)
                                                                                       {
                                                                                          if(§§pop() < this.§3D§.MIGHTY_EAGLE_WAIT_TIME)
                                                                                          {
                                                                                             if(!(_loc9_ && this))
                                                                                             {
                                                                                                if(!_loc8_)
                                                                                                {
                                                                                                   continue loop5;
                                                                                                }
                                                                                                §§push(this.mMightyEagleTimer);
                                                                                                loop31:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(param2);
                                                                                                   addr449:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                      loop33:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(Number(§§pop()));
                                                                                                         loop34:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            _loc4_ = §§pop();
                                                                                                            loop35:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(this.mMightyEagleTimer);
                                                                                                               loop36:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop() < this.§3D§.MIGHTY_EAGLE_SOUND_DELAY);
                                                                                                                  loop37:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc8_ || param2)
                                                                                                                     {
                                                                                                                        addr383:
                                                                                                                        §§push(§§pop());
                                                                                                                        if(_loc8_ || param2)
                                                                                                                        {
                                                                                                                           if(!(_loc8_ || param2))
                                                                                                                           {
                                                                                                                              continue loop20;
                                                                                                                           }
                                                                                                                           if(_loc9_)
                                                                                                                           {
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           if(!§§pop())
                                                                                                                           {
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(§§pop())
                                                                                                                                 {
                                                                                                                                    continue loop29;
                                                                                                                                 }
                                                                                                                                 loop46:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(_loc4_);
                                                                                                                                    if(_loc8_)
                                                                                                                                    {
                                                                                                                                       if(!_loc9_)
                                                                                                                                       {
                                                                                                                                          if(_loc8_ || param1)
                                                                                                                                          {
                                                                                                                                             if(§§pop() >= this.§3D§.MIGHTY_EAGLE_WAIT_TIME)
                                                                                                                                             {
                                                                                                                                                if(_loc8_ || param1)
                                                                                                                                                {
                                                                                                                                                   if(_loc8_)
                                                                                                                                                   {
                                                                                                                                                      if(!(_loc9_ && _loc3_))
                                                                                                                                                      {
                                                                                                                                                         §§push(param1.§+$§());
                                                                                                                                                         loop47:
                                                                                                                                                         while(!_loc9_)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop().GetPosition());
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop().x);
                                                                                                                                                               if(!(_loc9_ && param2))
                                                                                                                                                               {
                                                                                                                                                                  if(_loc9_ && _loc3_)
                                                                                                                                                                  {
                                                                                                                                                                     break;
                                                                                                                                                                  }
                                                                                                                                                                  continue loop31;
                                                                                                                                                               }
                                                                                                                                                               addr297:
                                                                                                                                                               addr297:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                                  addr298:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     _loc5_ = §§pop();
                                                                                                                                                                     addr299:
                                                                                                                                                                     addr541:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc9_)
                                                                                                                                                                        {
                                                                                                                                                                           loop51:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(param1.§+$§());
                                                                                                                                                                              if(!(_loc8_ || param1))
                                                                                                                                                                              {
                                                                                                                                                                                 continue loop47;
                                                                                                                                                                              }
                                                                                                                                                                              §§push(§§pop().GetPosition());
                                                                                                                                                                              if(_loc9_)
                                                                                                                                                                              {
                                                                                                                                                                                 break;
                                                                                                                                                                              }
                                                                                                                                                                              §§push(§§pop().y);
                                                                                                                                                                              if(_loc8_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!_loc9_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!_loc9_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc8_)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop0;
                                                                                                                                                                                       }
                                                                                                                                                                                       continue loop36;
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr297);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr298);
                                                                                                                                                                              }
                                                                                                                                                                              else
                                                                                                                                                                              {
                                                                                                                                                                                 addr210:
                                                                                                                                                                                 _loc6_ = §§pop();
                                                                                                                                                                                 if(!(_loc9_ && param2))
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc8_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc8_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(this.§8!=§(param1));
                                                                                                                                                                                          if(!_loc9_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc8_)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr89:
                                                                                                                                                                                                if(!(_loc9_ && param1))
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(§§pop())
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc8_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr99:
                                                                                                                                                                                                         if(!(_loc9_ && param1))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(true);
                                                                                                                                                                                                               if(_loc8_ || this)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!_loc8_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        while(!(_loc9_ && this))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(_loc8_ || param1)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              continue loop12;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           addr476:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§pop();
                                                                                                                                                                                                                              addr477:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(this.§+!X§.§0!F§);
                                                                                                                                                                                                                                 break loop46;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        continue loop37;
                                                                                                                                                                                                                        addr330:
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     _loc3_ = §§pop();
                                                                                                                                                                                                                     if(_loc8_ || this)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc9_ && param2)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           continue loop2;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        if(false)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           continue loop51;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr567:
                                                                                                                                                                                                                        _loc7_ = this.addObject("BIRD_MIGHTY_EAGLE",_loc5_,_loc6_,this.§3D§.MIGHTY_EAGLE_FLYING_ANGLE * 1.2);
                                                                                                                                                                                                                        if(!_loc9_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           this.mMightyEagleAdded = true;
                                                                                                                                                                                                                           addr601:
                                                                                                                                                                                                                           this.§<!#§ = 0;
                                                                                                                                                                                                                           if(!_loc9_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              _loc7_.§[!"§.§&O§(1.82);
                                                                                                                                                                                                                              if(!_loc9_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(false)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§goto(addr601);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 addr612:
                                                                                                                                                                                                                                 this.mMightyEagleTimer = _loc4_;
                                                                                                                                                                                                                                 addr616:
                                                                                                                                                                                                                                 return _loc3_;
                                                                                                                                                                                                                                 addr615:
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr601);
                                                                                                                                                                                                                              addr607:
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           addr611:
                                                                                                                                                                                                                           §§goto(addr611);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr607);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr615);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr114:
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr616);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr106:
                                                                                                                                                                                                         }
                                                                                                                                                                                                         else
                                                                                                                                                                                                         {
                                                                                                                                                                                                            while(!_loc9_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(_loc4_);
                                                                                                                                                                                                               while(!_loc9_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§pop() > this.§3D§.MIGHTY_EAGLE_SOUND_DELAY);
                                                                                                                                                                                                                  if(!(_loc8_ || param2))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  if(!(_loc8_ || _loc3_))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue loop34;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr210);
                                                                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                                                                               }
                                                                                                                                                                                                               continue loop30;
                                                                                                                                                                                                               §§goto(addr99);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            continue loop35;
                                                                                                                                                                                                            addr404:
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr330);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr616);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr567);
                                                                                                                                                                                                }
                                                                                                                                                                                                else
                                                                                                                                                                                                {
                                                                                                                                                                                                   while(_loc8_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop());
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!§§pop())
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue loop28;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr383);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr89);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr482);
                                                                                                                                                                                                   addr472:
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr476);
                                                                                                                                                                                             }
                                                                                                                                                                                             else
                                                                                                                                                                                             {
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!_loc9_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§pop();
                                                                                                                                                                                                      §§goto(addr404);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   else
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§goto(addr496);
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr497);
                                                                                                                                                                                                addr401:
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr482);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr114);
                                                                                                                                                                                       }
                                                                                                                                                                                       else
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr541);
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    else
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr299);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr541);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr616);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr261);
                                                                                                                                                                           continue loop47;
                                                                                                                                                                        }
                                                                                                                                                                        addr307:
                                                                                                                                                                        addr307:
                                                                                                                                                                        while(_loc8_ || param1)
                                                                                                                                                                        {
                                                                                                                                                                           addr314:
                                                                                                                                                                           if(!(_loc9_ && param1))
                                                                                                                                                                           {
                                                                                                                                                                              continue loop46;
                                                                                                                                                                           }
                                                                                                                                                                           addr519:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              continue loop11;
                                                                                                                                                                              §§goto(addr314);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        continue loop29;
                                                                                                                                                                     }
                                                                                                                                                                     addr541:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(this.§3!5§);
                                                                                                                                                                        addr543:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(§§pop() < this.§3D§.SARDINE_CAN_MAX_ROTATION_SPEED)
                                                                                                                                                                           {
                                                                                                                                                                              break loop29;
                                                                                                                                                                           }
                                                                                                                                                                           addr520:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(param1.§+$§());
                                                                                                                                                                              break loop47;
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            continue loop33;
                                                                                                                                                         }
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(param2);
                                                                                                                                                            if(_loc8_ || param1)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() * this.§3!5§);
                                                                                                                                                            }
                                                                                                                                                            §§pop().§09§(§§pop());
                                                                                                                                                            addr535:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               this.§<!#§ = 0;
                                                                                                                                                               §§goto(addr519);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr477);
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      while(_loc8_)
                                                                                                                                                      {
                                                                                                                                                         §6!H§.playSound("Mighty_Eagle_Flying_1","ChannelBird");
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr535);
                                                                                                                                                      addr366:
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr307);
                                                                                                                                                }
                                                                                                                                                §§goto(addr299);
                                                                                                                                             }
                                                                                                                                             §§goto(addr612);
                                                                                                                                          }
                                                                                                                                          §§goto(addr543);
                                                                                                                                       }
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    §§goto(addr298);
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() > this.§<!#§ + this.§3D§.SARDINE_CAN_DELAY_AFTER_HIT);
                                                                                                                                    if(_loc9_)
                                                                                                                                    {
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    if(!_loc9_)
                                                                                                                                    {
                                                                                                                                       continue loop28;
                                                                                                                                    }
                                                                                                                                    continue loop19;
                                                                                                                                 }
                                                                                                                                 §§goto(addr612);
                                                                                                                              }
                                                                                                                              addr351:
                                                                                                                           }
                                                                                                                           §§goto(addr401);
                                                                                                                        }
                                                                                                                        §§goto(addr475);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§pop();
                                                                                                                           continue loop2;
                                                                                                                        }
                                                                                                                        addr488:
                                                                                                                     }
                                                                                                                  }
                                                                                                                  continue loop14;
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
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this);
                                                                                       §§push(this.§3!5§);
                                                                                       if(_loc8_)
                                                                                       {
                                                                                          §§push(param2);
                                                                                          if(_loc8_ || param1)
                                                                                          {
                                                                                             §§push(§§pop() * this.§3D§.SARDINE_CAN_ROTATION_ACCELERATION);
                                                                                          }
                                                                                          §§push(§§pop() + §§pop());
                                                                                       }
                                                                                       §§pop().§3!5§ = §§pop();
                                                                                       addr566:
                                                                                       while(true)
                                                                                       {
                                                                                          §§goto(addr520);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr612);
                                                                              }
                                                                           }
                                                                           §§goto(addr488);
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                      addr490:
                                                   }
                                                   §§goto(addr566);
                                                }
                                             }
                                          }
                                          §§goto(addr490);
                                       }
                                    }
                                 }
                                 §§goto(addr541);
                              }
                           }
                        }
                        §§goto(addr106);
                     }
                     §§push(false);
                  }
               }
               §§goto(addr77);
            }
            §§goto(addr59);
         }
         §§goto(addr44);
      }
      
      private function §5f§(param1:§4!H§, param2:Number) : Boolean
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc5_:§4!H§ = null;
         if(_loc8_ || _loc3_)
         {
            §§push(Boolean(this.§3D§.MIGHTY_EAGLE_USE_SHADE));
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
                           §§push(this.§=!J§);
                           if(!(_loc9_ && this))
                           {
                              §§push(!§§pop());
                              if(_loc8_ || param1)
                              {
                                 §§push(Boolean(§§pop()));
                                 loop4:
                                 while(!_loc9_)
                                 {
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       if(!_loc8_)
                                       {
                                          break;
                                       }
                                       if(!§§pop())
                                       {
                                          loop8:
                                          while(§§pop())
                                          {
                                             addr62:
                                             if(!_loc9_)
                                             {
                                                this.§=!J§ = true;
                                             }
                                             do
                                             {
                                                this.§+!X§.§!m§();
                                             }
                                             while(!_loc8_);
                                             
                                             if(!(_loc9_ && param1))
                                             {
                                                if(true)
                                                {
                                                   break;
                                                }
                                                while(true)
                                                {
                                                   §§push(this.mMightyEagleTimer);
                                                   if(_loc9_)
                                                   {
                                                      break;
                                                   }
                                                   §§push(§§pop() > this.§3D§.MIGHTY_EAGLE_SHADING_DELAY);
                                                   if(_loc8_)
                                                   {
                                                      continue loop4;
                                                      if(_loc9_ && param2)
                                                      {
                                                         continue loop4;
                                                      }
                                                      §§goto(addr60);
                                                      continue loop8;
                                                   }
                                                   addr95:
                                                   while(_loc8_)
                                                   {
                                                      §§pop();
                                                   }
                                                   continue loop0;
                                                }
                                                var _loc3_:* = §§pop();
                                                if(!(_loc9_ && param1))
                                                {
                                                   §§push(this);
                                                   §§push(this.mMightyEagleTimer);
                                                   if(_loc8_ || param2)
                                                   {
                                                      §§push(§§pop() + param2);
                                                   }
                                                   §§pop().mMightyEagleTimer = §§pop();
                                                   if(!(_loc9_ && param2))
                                                   {
                                                      addr145:
                                                      §§push(this.§+!X§.particles);
                                                      §§push(§6Q§.§&4§);
                                                      §§push(§,n§.§9!&§);
                                                      §§push(§6Q§.§?G§);
                                                      §§push(param1.§+$§().GetPosition().x);
                                                      if(_loc8_)
                                                      {
                                                         §§push(_loc3_);
                                                         if(!(_loc9_ && param2))
                                                         {
                                                            §§push(§§pop() - §§pop());
                                                            if(!_loc9_)
                                                            {
                                                               addr171:
                                                               §§push(Math.random() * (_loc3_ * 2));
                                                               if(_loc8_ || _loc3_)
                                                               {
                                                                  addr185:
                                                                  §§push(§§pop() + §§pop());
                                                                  §§push(param1.§+$§().GetPosition().y);
                                                                  if(_loc8_ || param2)
                                                                  {
                                                                     addr196:
                                                                     §§push(_loc3_);
                                                                     if(_loc8_ || param2)
                                                                     {
                                                                        addr214:
                                                                        §§push(§§pop() - §§pop());
                                                                        if(!_loc9_)
                                                                        {
                                                                           §§push(Math.random() * (_loc3_ * 2));
                                                                        }
                                                                        §§pop().§=!K§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),3500,"",§6Q§.§5r§(param1.§@!p§),0,0,1,0,4);
                                                                        var _loc4_:* = 1;
                                                                        if(!_loc9_)
                                                                        {
                                                                           addr345:
                                                                           if(this.mMightyEagleHasTouchedGround)
                                                                           {
                                                                              if(!(_loc9_ && this))
                                                                              {
                                                                                 param1.§>p§(this.§3D§.MIGHTY_EAGLE_ROTATION_SPEED * param2);
                                                                              }
                                                                              addr360:
                                                                              §§push(-1);
                                                                              if(!(_loc9_ && param1))
                                                                              {
                                                                                 _loc4_ = §§pop();
                                                                                 addr342:
                                                                                 §§push(this.§1!&§);
                                                                                 if(!(_loc9_ && this))
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       addr326:
                                                                                       this.§1!&§ = false;
                                                                                       if(!_loc9_)
                                                                                       {
                                                                                          this.§+!X§.§!![§();
                                                                                          param1.§;k§(§'y§.§9V§);
                                                                                          this.mSardineCanAdded = false;
                                                                                          addr314:
                                                                                          if(!(_loc9_ && param2))
                                                                                          {
                                                                                             if(!(_loc9_ && param1))
                                                                                             {
                                                                                                addr265:
                                                                                                param1.§[!"§.§?!]§ = true;
                                                                                                addr262:
                                                                                                if(_loc8_ || param2)
                                                                                                {
                                                                                                   §§push(param1.§[!"§);
                                                                                                   if(_loc8_ || _loc3_)
                                                                                                   {
                                                                                                      §§pop().§@F§();
                                                                                                      if(_loc8_)
                                                                                                      {
                                                                                                         if(!(_loc9_ && this))
                                                                                                         {
                                                                                                            if(_loc8_)
                                                                                                            {
                                                                                                               if(!(_loc9_ && param1))
                                                                                                               {
                                                                                                                  if(false)
                                                                                                                  {
                                                                                                                     §§goto(addr262);
                                                                                                                  }
                                                                                                                  addr362:
                                                                                                                  var _loc6_:int = 0;
                                                                                                                  var _loc7_:* = this.§@!d§;
                                                                                                                  addr418:
                                                                                                                  §§push(§§hasnext(_loc7_,_loc6_));
                                                                                                                  if(_loc8_)
                                                                                                                  {
                                                                                                                     if(§§pop())
                                                                                                                     {
                                                                                                                        _loc5_ = §§nextvalue(_loc6_,_loc7_);
                                                                                                                        §§push(Boolean(_loc5_));
                                                                                                                        if(_loc8_)
                                                                                                                        {
                                                                                                                           if(§§pop())
                                                                                                                           {
                                                                                                                              if(_loc8_)
                                                                                                                              {
                                                                                                                                 §§pop();
                                                                                                                                 if(!(_loc9_ && _loc3_))
                                                                                                                                 {
                                                                                                                                    §§push(_loc5_.§'!e§());
                                                                                                                                    if(_loc8_)
                                                                                                                                    {
                                                                                                                                       addr395:
                                                                                                                                       if(§§pop())
                                                                                                                                       {
                                                                                                                                          if(_loc8_)
                                                                                                                                          {
                                                                                                                                             addr398:
                                                                                                                                             §§push(_loc5_.§+$§());
                                                                                                                                             if(_loc8_ || param1)
                                                                                                                                             {
                                                                                                                                                §§pop().SetAwake(true);
                                                                                                                                                if(_loc8_)
                                                                                                                                                {
                                                                                                                                                   addr411:
                                                                                                                                                   §§push(_loc5_.§+$§());
                                                                                                                                                }
                                                                                                                                                §§goto(addr418);
                                                                                                                                             }
                                                                                                                                             §§pop().SetLinearVelocity(new b2Vec2(0,-18));
                                                                                                                                             §§goto(addr418);
                                                                                                                                          }
                                                                                                                                          §§goto(addr411);
                                                                                                                                       }
                                                                                                                                       §§goto(addr418);
                                                                                                                                    }
                                                                                                                                    §§goto(addr395);
                                                                                                                                 }
                                                                                                                                 §§goto(addr398);
                                                                                                                              }
                                                                                                                              §§goto(addr395);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr395);
                                                                                                                     }
                                                                                                                     if(!(_loc9_ && param2))
                                                                                                                     {
                                                                                                                        if(_loc8_)
                                                                                                                        {
                                                                                                                           if(_loc8_ || param1)
                                                                                                                           {
                                                                                                                              this.§,A§();
                                                                                                                              if(!(_loc9_ && param2))
                                                                                                                              {
                                                                                                                                 addr449:
                                                                                                                                 §§push(this.mMightyEagleTimer > 6000);
                                                                                                                                 if(_loc8_)
                                                                                                                                 {
                                                                                                                                    if(§§pop())
                                                                                                                                    {
                                                                                                                                       if(!_loc9_)
                                                                                                                                       {
                                                                                                                                          addr459:
                                                                                                                                          §§pop();
                                                                                                                                          if(!(_loc9_ && param2))
                                                                                                                                          {
                                                                                                                                             §§push(this.isPigsAlive());
                                                                                                                                             if(!(_loc9_ && param1))
                                                                                                                                             {
                                                                                                                                                §§push(Boolean(§§pop()));
                                                                                                                                                if(_loc8_)
                                                                                                                                                {
                                                                                                                                                   addr479:
                                                                                                                                                   if(§§pop())
                                                                                                                                                   {
                                                                                                                                                      if(_loc8_ || param1)
                                                                                                                                                      {
                                                                                                                                                         _loc6_ = 0;
                                                                                                                                                         if(_loc8_ || _loc3_)
                                                                                                                                                         {
                                                                                                                                                            _loc7_ = this.§@!d§;
                                                                                                                                                            addr557:
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
                                                                                                                                                                        if(!(_loc9_ && param1))
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc5_.§'!e§());
                                                                                                                                                                           if(_loc8_ || this)
                                                                                                                                                                           {
                                                                                                                                                                              addr538:
                                                                                                                                                                              if(§§pop())
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc8_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc5_);
                                                                                                                                                                                    §§push(_loc5_.§0K§);
                                                                                                                                                                                    if(!(_loc9_ && param1))
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() * 2);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§pop().applyDamage(§§pop(),true,true,true);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr538);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr557);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr538);
                                                                                                                                                            }
                                                                                                                                                            addr560:
                                                                                                                                                            if(_loc8_ || _loc3_)
                                                                                                                                                            {
                                                                                                                                                               addr568:
                                                                                                                                                            }
                                                                                                                                                            return false;
                                                                                                                                                            addr603:
                                                                                                                                                            addr559:
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr560);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr568);
                                                                                                                                                   }
                                                                                                                                                   param1.§,!T§(param2,new Point(this.§3D§.MIGHTY_EAGLE_X_DIRECTION,_loc4_ * this.§3D§.MIGHTY_EAGLE_Y_CHANGE),this.§3D§.MIGHTY_EAGLE_FLYING_SPEED);
                                                                                                                                                   addr574:
                                                                                                                                                   if(_loc9_)
                                                                                                                                                   {
                                                                                                                                                      addr609:
                                                                                                                                                      if(_loc8_)
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr574);
                                                                                                                                                      }
                                                                                                                                                      this.§1!&§ = this.mMightyEagleHasTouchedGround;
                                                                                                                                                      §§goto(addr609);
                                                                                                                                                      addr621:
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr603);
                                                                                                                                                }
                                                                                                                                                §§goto(addr560);
                                                                                                                                             }
                                                                                                                                             §§goto(addr479);
                                                                                                                                          }
                                                                                                                                          §§goto(addr568);
                                                                                                                                       }
                                                                                                                                       §§goto(addr560);
                                                                                                                                    }
                                                                                                                                    §§goto(addr479);
                                                                                                                                 }
                                                                                                                                 §§goto(addr459);
                                                                                                                              }
                                                                                                                              §§goto(addr621);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr560);
                                                                                                                     }
                                                                                                                     §§goto(addr559);
                                                                                                                  }
                                                                                                                  §§goto(addr557);
                                                                                                               }
                                                                                                               §§goto(addr326);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr314);
                                                                                                      }
                                                                                                      §§goto(addr262);
                                                                                                   }
                                                                                                   §§goto(addr265);
                                                                                                }
                                                                                                §§goto(addr326);
                                                                                             }
                                                                                             §§goto(addr342);
                                                                                          }
                                                                                          addr309:
                                                                                          §§goto(addr309);
                                                                                       }
                                                                                       §§goto(addr360);
                                                                                    }
                                                                                    §§goto(addr449);
                                                                                 }
                                                                                 §§goto(addr345);
                                                                              }
                                                                              §§goto(addr362);
                                                                           }
                                                                           this.mMightyEagleHasTouchedGround = param1.§+$§().GetPosition().y >= -5.5;
                                                                           §§goto(addr609);
                                                                        }
                                                                        §§goto(addr314);
                                                                     }
                                                                     §§push(§§pop() + §§pop());
                                                                  }
                                                                  §§goto(addr214);
                                                               }
                                                               §§goto(addr196);
                                                            }
                                                         }
                                                         §§goto(addr185);
                                                      }
                                                      §§goto(addr171);
                                                   }
                                                   §§goto(addr214);
                                                }
                                                §§goto(addr145);
                                                addr42:
                                             }
                                             while(_loc8_ || param1)
                                             {
                                                while(true)
                                                {
                                                   §§goto(addr42);
                                                }
                                                §§goto(addr62);
                                             }
                                             continue loop3;
                                          }
                                          §§goto(addr117);
                                          §§push(Number(3));
                                          addr60:
                                       }
                                    }
                                    continue loop1;
                                 }
                                 continue loop2;
                              }
                           }
                           §§goto(addr95);
                        }
                     }
                  }
                  §§goto(addr90);
               }
            }
         }
         §§goto(addr105);
      }
      
      private function §0"§() : void
      {
         var _loc20_:Boolean = true;
         var _loc21_:Boolean = false;
         var _loc1_:§1! § = null;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:§4!H§ = null;
         var _loc7_:* = 0;
         var _loc8_:Number = NaN;
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
         while(this.§5!%§.length > 0)
         {
            _loc1_ = this.§5!%§.shift();
            if(!_loc21_)
            {
               §§push(_loc1_.§]!E§);
               loop1:
               while(true)
               {
                  §§push(Number(§§pop()));
                  if(_loc20_)
                  {
                     _loc2_ = §§pop();
                     if(_loc20_)
                     {
                        §§push(_loc1_.x);
                        if(!_loc21_)
                        {
                           §§push(Number(§§pop()));
                           if(_loc20_ || _loc3_)
                           {
                              _loc3_ = §§pop();
                              if(_loc20_ || _loc3_)
                              {
                                 while(true)
                                 {
                                    §§push(_loc1_.y);
                                    continue loop1;
                                 }
                                 addr87:
                              }
                              else
                              {
                                 addr731:
                                 §§push(_loc7_);
                                 while(true)
                                 {
                                    §§push(180);
                                    addr732:
                                    while(true)
                                    {
                                       §§push(§§pop() / Math.PI);
                                       if(!(_loc21_ && _loc1_))
                                       {
                                          addr742:
                                          §§push(§§pop() / §§pop());
                                          loop8:
                                          while(true)
                                          {
                                             if(!(_loc21_ && _loc3_))
                                             {
                                                if(!_loc21_)
                                                {
                                                   break;
                                                }
                                                loop9:
                                                while(true)
                                                {
                                                   §§push(_loc2_);
                                                   if(!_loc21_)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      while(true)
                                                      {
                                                         §§push(Math.random() * _loc2_);
                                                      }
                                                      addr796:
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      addr801:
                                                      while(true)
                                                      {
                                                         §§push(Number(§§pop()));
                                                         addr802:
                                                         addr847:
                                                         loop10:
                                                         while(true)
                                                         {
                                                            _loc15_ = §§pop();
                                                            addr803:
                                                            while(true)
                                                            {
                                                               §§push(1250);
                                                               if(_loc20_ || _loc1_)
                                                               {
                                                                  §§push(Math.random() * 750);
                                                                  loop11:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() + §§pop());
                                                                     addr776:
                                                                     while(true)
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                        addr777:
                                                                        while(true)
                                                                        {
                                                                           if(_loc21_)
                                                                           {
                                                                              continue loop10;
                                                                           }
                                                                           _loc16_ = §§pop();
                                                                           while(true)
                                                                           {
                                                                              if(!(_loc21_ && _loc1_))
                                                                              {
                                                                                 §§goto(addr787);
                                                                              }
                                                                              else
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(30);
                                                                                    if(!_loc21_)
                                                                                    {
                                                                                       _loc7_ = §§pop();
                                                                                       addr809:
                                                                                       while(true)
                                                                                       {
                                                                                          addr846:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc7_);
                                                                                             break loop10;
                                                                                          }
                                                                                       }
                                                                                       addr809:
                                                                                    }
                                                                                    break loop10;
                                                                                 }
                                                                                 addr845:
                                                                              }
                                                                           }
                                                                        }
                                                                        continue loop11;
                                                                     }
                                                                     continue loop8;
                                                                  }
                                                                  addr775:
                                                               }
                                                               break loop10;
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(150);
                                                            addr848:
                                                            while(true)
                                                            {
                                                               if(§§pop() >= §§pop())
                                                               {
                                                                  continue loop0;
                                                               }
                                                               continue loop9;
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                                addr792:
                                             }
                                             §§goto(addr776);
                                          }
                                          §§push(Number(§§pop()));
                                          break loop1;
                                          addr743:
                                       }
                                       §§goto(addr775);
                                    }
                                 }
                                 addr787:
                                 addr731:
                              }
                           }
                           §§goto(addr792);
                        }
                        §§goto(addr802);
                     }
                     addr625:
                     if(false)
                     {
                        loop6:
                        while(true)
                        {
                           §§push(this.§+!X§);
                           if(!_loc21_)
                           {
                              §§push(§§pop().particles);
                              if(!(_loc20_ || _loc1_))
                              {
                                 break;
                              }
                              §§push(§6Q§.§ t§);
                              if(!(_loc21_ && _loc1_))
                              {
                                 §§push(§,n§.§9!&§);
                                 if(_loc20_ || _loc2_)
                                 {
                                    §§push(§6Q§.§?G§);
                                    if(!_loc21_)
                                    {
                                       §§push(_loc3_);
                                       if(_loc20_)
                                       {
                                          §§push(_loc4_);
                                          if(!(_loc21_ && _loc1_))
                                          {
                                             §§push(_loc16_);
                                             §§push("");
                                             §§push(§6Q§.§&!$§);
                                             §§push(_loc15_);
                                             if(!_loc21_)
                                             {
                                                §§push(§§pop() * Math.cos(_loc17_));
                                             }
                                             §§push(_loc15_);
                                             if(_loc20_ || this)
                                             {
                                                §§push(-§§pop());
                                                if(!(_loc21_ && _loc3_))
                                                {
                                                   addr700:
                                                   §§push(§§pop() * Math.sin(_loc17_));
                                                }
                                                §§pop().§=!K§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),20,0);
                                                while(true)
                                                {
                                                   if(_loc20_ || _loc3_)
                                                   {
                                                      if(!(_loc21_ && _loc1_))
                                                      {
                                                         if(!(_loc21_ && _loc3_))
                                                         {
                                                            §§push(_loc7_);
                                                            if(!_loc21_)
                                                            {
                                                               if(_loc20_ || this)
                                                               {
                                                                  §§push(5);
                                                                  if(_loc20_)
                                                                  {
                                                                     if(!(_loc21_ && _loc1_))
                                                                     {
                                                                        §§push(§§pop() + §§pop());
                                                                        if(!(_loc21_ && _loc1_))
                                                                        {
                                                                           if(!(_loc21_ && _loc3_))
                                                                           {
                                                                              if(!(_loc21_ && _loc2_))
                                                                              {
                                                                                 if(!(_loc21_ && _loc3_))
                                                                                 {
                                                                                    if(!_loc21_)
                                                                                    {
                                                                                       §§push(int(§§pop()));
                                                                                       if(_loc20_ || this)
                                                                                       {
                                                                                          addr610:
                                                                                          _loc7_ = §§pop();
                                                                                          if(_loc20_ || _loc1_)
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                          continue loop0;
                                                                                       }
                                                                                       §§goto(addr847);
                                                                                    }
                                                                                    §§goto(addr796);
                                                                                 }
                                                                                 §§goto(addr801);
                                                                              }
                                                                              §§goto(addr777);
                                                                           }
                                                                           §§goto(addr743);
                                                                        }
                                                                        break loop1;
                                                                     }
                                                                     §§goto(addr732);
                                                                  }
                                                                  §§goto(addr848);
                                                               }
                                                               §§goto(addr731);
                                                            }
                                                            §§goto(addr610);
                                                         }
                                                         §§goto(addr803);
                                                      }
                                                      break;
                                                   }
                                                   addr754:
                                                   while(true)
                                                   {
                                                      if(!(_loc21_ && _loc2_))
                                                      {
                                                         continue loop6;
                                                      }
                                                      §§goto(addr809);
                                                   }
                                                }
                                                §§goto(addr780);
                                             }
                                             §§goto(addr700);
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                §§pop().§=!K§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),600,"",§6Q§.§&!$§,0,0,0,0,1,20,true);
                                             }
                                             addr833:
                                          }
                                          §§goto(addr845);
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                          }
                                          addr832:
                                       }
                                       §§goto(addr833);
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                       }
                                       addr831:
                                    }
                                    §§goto(addr832);
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                    }
                                    addr829:
                                 }
                                 §§goto(addr831);
                              }
                              else
                              {
                                 while(true)
                                 {
                                 }
                                 addr827:
                              }
                              §§goto(addr829);
                           }
                           else
                           {
                              while(true)
                              {
                                 §§push(§§pop().particles);
                                 break loop6;
                              }
                              addr812:
                           }
                        }
                        while(true)
                        {
                           §§goto(addr827);
                        }
                     }
                     §§goto(addr846);
                  }
                  break;
               }
               while(true)
               {
                  _loc17_ = §§pop();
                  §§goto(addr754);
               }
            }
            §§goto(addr85);
         }
      }
      
      protected function §!S§(param1:int) : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(param1);
         if(_loc4_)
         {
         }
         switch(§§pop())
         {
         }
         return §6Q§.§,!p§;
      }
      
      public function §2O§(param1:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:§4!H§ = null;
         var _loc3_:* = int(this.§@!d§.length - 1);
         loop0:
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§@!d§[_loc3_];
            if(_loc4_ || param1)
            {
               §§push(_loc2_.§=!P§());
               if(!_loc5_)
               {
                  if(§§pop())
                  {
                     if(!_loc5_)
                     {
                        addr208:
                        if(this.§6!<§(_loc2_,param1))
                        {
                           addr209:
                           while(true)
                           {
                              this.§+!W§(_loc3_,false,false,false);
                              addr215:
                              while(true)
                              {
                              }
                           }
                           addr209:
                        }
                        while(true)
                        {
                           addr41:
                           loop6:
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
                                 if(_loc4_)
                                 {
                                    if(!(_loc5_ && this))
                                    {
                                       if(!_loc5_)
                                       {
                                          if(true)
                                          {
                                             break;
                                          }
                                          while(true)
                                          {
                                             continue loop6;
                                          }
                                          addr67:
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             _loc2_.§;k§(§'y§.§+i§);
                                          }
                                          addr155:
                                       }
                                    }
                                    else
                                    {
                                       addr123:
                                       while(true)
                                       {
                                          if(_loc4_)
                                          {
                                             if(_loc4_ || _loc2_)
                                             {
                                                if(_loc4_ || _loc3_)
                                                {
                                                   this.§+!W§(_loc3_,false,true,true);
                                                   while(true)
                                                   {
                                                      §§goto(addr67);
                                                   }
                                                   addr111:
                                                }
                                                else
                                                {
                                                   §§goto(addr209);
                                                }
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   if(_loc4_)
                                                   {
                                                      while(true)
                                                      {
                                                         continue loop6;
                                                      }
                                                      addr196:
                                                   }
                                                }
                                                addr184:
                                             }
                                             §§goto(addr215);
                                          }
                                       }
                                       addr123:
                                    }
                                    while(true)
                                    {
                                       this.§+!W§(_loc3_,false,false,false);
                                       addr147:
                                       while(true)
                                       {
                                          continue loop6;
                                       }
                                    }
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       if(_loc4_)
                                       {
                                          if(!_loc5_)
                                          {
                                             _loc2_.update(param1);
                                             while(true)
                                             {
                                                if(!_loc5_)
                                                {
                                                   continue loop6;
                                                }
                                                §§goto(addr111);
                                             }
                                             addr91:
                                          }
                                       }
                                       else
                                       {
                                          addr119:
                                          while(true)
                                          {
                                             _loc2_.§;k§(§'y§.§+i§);
                                             §§goto(addr123);
                                          }
                                          addr119:
                                       }
                                       §§goto(addr147);
                                    }
                                    addr84:
                                 }
                                 §§goto(addr123);
                              }
                              §§goto(addr91);
                           }
                           continue loop0;
                        }
                        addr160:
                     }
                     §§goto(addr209);
                  }
                  else
                  {
                     §§push(_loc2_.§3!i§());
                     loop1:
                     while(true)
                     {
                        if(_loc4_ || this)
                        {
                           if(§§pop())
                           {
                              if(!(_loc5_ && this))
                              {
                                 this.§5f§(_loc2_,param1);
                              }
                              §§goto(addr184);
                           }
                           else
                           {
                              §§push(this.§8!=§(_loc2_));
                              loop2:
                              while(!§§pop())
                              {
                                 §§push(_loc2_.isReadyToBeRemoved(param1));
                                 while(!§§pop())
                                 {
                                    §§push(_loc2_.§<=§());
                                    if(!_loc5_)
                                    {
                                       if(_loc4_)
                                       {
                                          continue loop1;
                                       }
                                       continue loop2;
                                    }
                                 }
                                 §§goto(addr119);
                              }
                              §§goto(addr155);
                           }
                        }
                        else
                        {
                           §§goto(addr208);
                        }
                        §§goto(addr209);
                     }
                     §§goto(addr160);
                  }
               }
               §§goto(addr208);
            }
            §§goto(addr196);
         }
         if(!_loc5_)
         {
            this.§0"§();
         }
      }
      
      private function §,A§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§@!;§ = null;
         var _loc2_:int = 0;
         for each(_loc1_ in this.§<?§)
         {
            if(!(_loc5_ && _loc2_))
            {
               this.§+!X§.mLevelEngine.mWorld.§+!O§(_loc1_.§ E§);
            }
         }
      }
      
      public function §%!F§() : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§4!H§ = null;
         var _loc1_:int = 0;
         while(true)
         {
            if(_loc1_ >= this.§@!d§.length)
            {
               return false;
            }
            _loc2_ = this.§@!d§[_loc1_];
            if(_loc3_)
            {
               addr65:
               break;
            }
            §§push(_loc2_.explode());
            if(_loc3_ && _loc3_)
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
            _loc1_++;
         }
         §§goto(addr65);
         §§push(true);
      }
      
      public function §8!=§(param1:§4!H§) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
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
                           §§push(param1.§&!'§.§"5§() == §"!e§.§[v§);
                           if(!(_loc2_ && _loc2_))
                           {
                              §§push(!§§pop());
                              if(_loc3_)
                              {
                                 §§push(Boolean(§§pop()));
                                 while(true)
                                 {
                                 }
                                 addr133:
                              }
                              while(true)
                              {
                                 §§push(§§pop());
                                 if(_loc2_)
                                 {
                                    break;
                                 }
                                 if(!§§pop())
                                 {
                                    loop5:
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          if(!(_loc2_ && _loc2_))
                                          {
                                             if(!_loc2_)
                                             {
                                                if(_loc2_)
                                                {
                                                   continue loop3;
                                                }
                                                while(true)
                                                {
                                                   §§push(true);
                                                   §§goto(addr93);
                                                }
                                             }
                                             while(true)
                                             {
                                                §§push(this.§+!X§.§<!x§.§+n§(param1.§+$§().GetPosition().x,param1.§+$§().GetPosition().y));
                                                addr71:
                                                while(true)
                                                {
                                                   §§push(Boolean(§§pop()));
                                                   continue loop5;
                                                }
                                             }
                                          }
                                          else
                                          {
                                             addr25:
                                             §§push(false);
                                             if(_loc3_)
                                             {
                                                if(!(_loc3_ || param1))
                                                {
                                                   continue;
                                                }
                                                if(_loc3_)
                                                {
                                                   if(_loc3_ || this)
                                                   {
                                                      return §§pop();
                                                   }
                                                   continue loop2;
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr93);
                                             }
                                             §§goto(addr71);
                                          }
                                          addr93:
                                          while(true)
                                          {
                                             if(!(_loc2_ && param1))
                                             {
                                                if(_loc3_)
                                                {
                                                   break;
                                                }
                                                continue loop0;
                                             }
                                             addr138:
                                             while(true)
                                             {
                                                §§pop();
                                             }
                                          }
                                          return §§pop();
                                       }
                                       §§goto(addr25);
                                    }
                                    continue;
                                    addr79:
                                 }
                              }
                              continue loop1;
                           }
                           §§goto(addr138);
                        }
                     }
                  }
                  §§goto(addr133);
               }
            }
         }
         §§goto(addr92);
      }
      
      public function §+!W§(param1:int, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc6_:§@!;§ = null;
         var _loc7_:§6! § = null;
         if(_loc13_ || param1)
         {
            if(param1 < 0)
            {
               if(_loc13_ || param3)
               {
                  §§goto(addr40);
               }
            }
            var _loc5_:§4!H§;
            §§push((_loc5_ = this.§@!d§[param1]).§'!e§());
            if(_loc13_ || param3)
            {
               if(§§pop())
               {
                  if(_loc13_)
                  {
                     var _loc8_:*;
                     §§push((_loc8_ = this).§;!0§);
                     if(_loc13_ || param2)
                     {
                        §§push(§§pop() + 1);
                     }
                     var _loc9_:* = §§pop();
                     if(!_loc12_)
                     {
                        _loc8_.§;!0§ = _loc9_;
                     }
                     if(!_loc12_)
                     {
                        addr233:
                        if(_loc5_ == this.§+!X§.activeObject)
                        {
                           while(true)
                           {
                              §§push(this.§+!X§);
                              addr240:
                              while(true)
                              {
                                 §§pop().activeObject = null;
                                 addr242:
                                 while(true)
                                 {
                                 }
                              }
                           }
                           addr238:
                        }
                        while(true)
                        {
                           §§push(param2);
                           addr183:
                           loop3:
                           while(§§pop())
                           {
                              while(true)
                              {
                                 §§push(this.§+!X§);
                                 if(_loc13_)
                                 {
                                    §§push(_loc5_.§&!'§.score);
                                    §§push(§;!8§.§-"§);
                                    §§push(true);
                                    §§push(_loc5_.§+$§().GetPosition().x);
                                    §§push(_loc5_.§+$§().GetPosition().y);
                                    if(!(_loc12_ && this))
                                    {
                                       §§push(3);
                                       if(!_loc12_)
                                       {
                                          addr223:
                                          §§push(§§pop() - §§pop());
                                          §§push(§6Q§.§>k§(_loc5_.§@!p§));
                                       }
                                       §§pop().addScore(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
                                       while(true)
                                       {
                                          if(_loc13_)
                                          {
                                             if(_loc13_)
                                             {
                                                break loop3;
                                             }
                                             §§goto(addr238);
                                          }
                                          §§goto(addr242);
                                       }
                                       addr228:
                                    }
                                    §§goto(addr223);
                                 }
                                 §§goto(addr240);
                              }
                           }
                           while(true)
                           {
                              §§push(param3);
                              addr173:
                              loop21:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    while(true)
                                    {
                                       this.addDestructionParticles(_loc5_,this.§+!X§.particles);
                                       addr180:
                                       while(true)
                                       {
                                       }
                                    }
                                    addr174:
                                 }
                                 while(true)
                                 {
                                    §§push(param4);
                                    addr155:
                                    loop5:
                                    while(true)
                                    {
                                       if(!(_loc12_ && param3))
                                       {
                                          if(§§pop())
                                          {
                                             addr168:
                                             if(!_loc12_)
                                             {
                                                this.§-!V§(_loc5_);
                                             }
                                             while(true)
                                             {
                                                if(!_loc12_)
                                                {
                                                   break loop5;
                                                }
                                                §§goto(addr180);
                                             }
                                             addr168:
                                          }
                                          break;
                                       }
                                       continue loop21;
                                    }
                                    loop2:
                                    while(true)
                                    {
                                       §§push(_loc5_.isTexture());
                                       if(!_loc12_)
                                       {
                                          if(_loc13_)
                                          {
                                             if(§§pop())
                                             {
                                                if(!_loc12_)
                                                {
                                                   if(!(_loc12_ && param1))
                                                   {
                                                      break;
                                                   }
                                                   §§goto(addr174);
                                                }
                                                loop1:
                                                while(true)
                                                {
                                                   if(!_loc12_)
                                                   {
                                                      this.§0!C§(_loc5_);
                                                      if(!_loc13_)
                                                      {
                                                         continue;
                                                      }
                                                      if(!(_loc12_ && this))
                                                      {
                                                         if(_loc13_)
                                                         {
                                                            while(true)
                                                            {
                                                               if(true)
                                                               {
                                                                  break loop1;
                                                               }
                                                               continue loop2;
                                                            }
                                                            loop17:
                                                            while(true)
                                                            {
                                                               §§push(§§hasnext(_loc9_,_loc8_));
                                                               if(_loc13_)
                                                               {
                                                                  if(!§§pop())
                                                                  {
                                                                     if(!_loc12_)
                                                                     {
                                                                        if(_loc13_ || param2)
                                                                        {
                                                                           if(!(_loc12_ && this))
                                                                           {
                                                                              _loc8_ = 0;
                                                                              if(_loc13_ || param2)
                                                                              {
                                                                                 addr327:
                                                                                 _loc9_ = this.§#t§;
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§hasnext(_loc9_,_loc8_));
                                                                                    break loop17;
                                                                                 }
                                                                                 addr399:
                                                                              }
                                                                              if(!(_loc12_ && param2))
                                                                              {
                                                                                 addr420:
                                                                                 _loc5_.dispose();
                                                                              }
                                                                              _loc5_ = null;
                                                                              if(!_loc12_)
                                                                              {
                                                                                 this.§@!d§[param1] = null;
                                                                              }
                                                                              do
                                                                              {
                                                                                 this.§@!d§.splice(param1,1);
                                                                              }
                                                                              while(!_loc13_);
                                                                              
                                                                              return;
                                                                           }
                                                                           §§goto(addr420);
                                                                        }
                                                                     }
                                                                     §§goto(addr327);
                                                                  }
                                                                  else
                                                                  {
                                                                     _loc6_ = §§nextvalue(_loc8_,_loc9_);
                                                                     if(_loc6_.index1 >= param1)
                                                                     {
                                                                        if(!_loc12_)
                                                                        {
                                                                           var _loc10_:*;
                                                                           var _loc11_:* = (_loc10_ = _loc6_).index1 - 1;
                                                                           if(_loc13_)
                                                                           {
                                                                              _loc10_.index1 = _loc11_;
                                                                           }
                                                                           if(_loc13_)
                                                                           {
                                                                              addr277:
                                                                              if(_loc6_.index2 < param1)
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              if(!_loc13_)
                                                                              {
                                                                                 continue;
                                                                              }
                                                                           }
                                                                        }
                                                                        _loc11_ = (_loc10_ = _loc6_).index2 - 1;
                                                                        if(!_loc12_)
                                                                        {
                                                                           _loc10_.index2 = _loc11_;
                                                                        }
                                                                        continue;
                                                                     }
                                                                     §§goto(addr277);
                                                                  }
                                                               }
                                                               break;
                                                            }
                                                            while(true)
                                                            {
                                                               if(!§§pop())
                                                               {
                                                                  §§goto(addr327);
                                                               }
                                                               else
                                                               {
                                                                  _loc7_ = §§nextvalue(_loc8_,_loc9_);
                                                                  §§push(_loc7_.id1);
                                                                  if(!(_loc12_ && this))
                                                                  {
                                                                     §§push(param1);
                                                                     if(!(_loc12_ && param1))
                                                                     {
                                                                        if(§§pop() == §§pop())
                                                                        {
                                                                           if(!_loc12_)
                                                                           {
                                                                              _loc7_.§2;§ = true;
                                                                              if(_loc13_)
                                                                              {
                                                                                 addr363:
                                                                                 if(_loc7_.id1 < param1)
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 if(!(_loc13_ || this))
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                              }
                                                                              §§push((_loc10_ = _loc7_).id1);
                                                                              if(!(_loc12_ && param3))
                                                                              {
                                                                                 §§push(§§pop() - 1);
                                                                              }
                                                                              _loc11_ = §§pop();
                                                                              if(_loc13_ || param3)
                                                                              {
                                                                                 _loc10_.id1 = _loc11_;
                                                                              }
                                                                              continue;
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr363);
                                                               }
                                                            }
                                                            addr296:
                                                            addr127:
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr228);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr168);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr184);
                                                   }
                                                   §§goto(addr240);
                                                }
                                                _loc8_ = 0;
                                                _loc9_ = this.§<?§;
                                                §§goto(addr296);
                                                addr150:
                                             }
                                             break;
                                          }
                                          §§goto(addr183);
                                          §§goto(addr184);
                                       }
                                       else
                                       {
                                          §§goto(addr155);
                                       }
                                    }
                                    addr146:
                                    while(true)
                                    {
                                       this.§>L§(_loc5_.sprite);
                                       §§goto(addr150);
                                    }
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr127);
                  }
                  §§goto(addr180);
               }
               else
               {
                  §§push(_loc5_.§<=§());
                  if(_loc13_ || this)
                  {
                     if(§§pop())
                     {
                        if(_loc13_)
                        {
                           §§push((_loc8_ = this).§;!o§);
                           if(!_loc12_)
                           {
                              §§push(§§pop() - 1);
                           }
                           _loc9_ = §§pop();
                           if(!_loc12_)
                           {
                              _loc8_.§;!o§ = _loc9_;
                           }
                           if(!_loc12_)
                           {
                              §§goto(addr233);
                           }
                           §§goto(addr146);
                        }
                        §§goto(addr180);
                     }
                     §§goto(addr233);
                  }
               }
            }
            §§goto(addr173);
         }
         addr40:
      }
      
      protected function addDestructionParticles(param1:§4!H§, param2:§,n§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            param1.addDestructionParticles(param2);
         }
      }
      
      private function §>L§(param1:Sprite) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            §§push(this.§16§);
            if(!(_loc3_ && _loc2_))
            {
               if(!§§pop().contains(param1))
               {
                  loop0:
                  do
                  {
                     §§push(this.§>e§);
                     if(_loc2_)
                     {
                        if(!§§pop().contains(param1))
                        {
                           loop1:
                           while(true)
                           {
                              §§push(this.§1_§);
                              if(_loc2_ || _loc3_)
                              {
                                 if(!§§pop().contains(param1))
                                 {
                                    do
                                    {
                                       §§push(this.§%L§);
                                       if(!_loc3_)
                                       {
                                          if(!§§pop().contains(param1))
                                          {
                                             return;
                                          }
                                          if(_loc2_)
                                          {
                                             if(!_loc2_)
                                             {
                                                if(!(_loc2_ || _loc3_))
                                                {
                                                   return;
                                                }
                                                addr113:
                                                continue;
                                             }
                                             if(_loc3_ && param1)
                                             {
                                                addr144:
                                                this.§>e§.removeChild(param1);
                                                addr142:
                                                break;
                                             }
                                             addr52:
                                             this.§%L§.removeChild(param1);
                                          }
                                          if(!(_loc3_ && this))
                                          {
                                             break loop1;
                                          }
                                          if(_loc3_ && _loc3_)
                                          {
                                             return;
                                          }
                                          addr170:
                                          continue loop1;
                                       }
                                       §§goto(addr52);
                                    }
                                    while(!(_loc3_ && this));
                                    
                                    continue loop0;
                                 }
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    addr111:
                                    this.§1_§.removeChild(param1);
                                 }
                                 §§goto(addr113);
                              }
                              §§goto(addr111);
                           }
                           return;
                        }
                        §§goto(addr142);
                     }
                     §§goto(addr144);
                  }
                  while(_loc3_);
                  
                  return;
               }
               if(_loc2_)
               {
                  addr168:
                  this.§16§.removeChild(param1);
               }
               §§goto(addr170);
            }
            §§goto(addr168);
         }
         §§goto(addr123);
      }
      
      protected function §-!V§(param1:§4!H§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(param1.§^!S§());
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
                           §§push(param1.§=f§());
                           if(!(_loc3_ && param1))
                           {
                              if(!(_loc2_ || _loc3_))
                              {
                                 continue loop2;
                              }
                              if(_loc3_ && param1)
                              {
                                 continue loop1;
                              }
                              §§push(Boolean(§§pop()));
                              while(true)
                              {
                              }
                           }
                           while(§§pop())
                           {
                              if(_loc2_ || this)
                              {
                                 §§push(param1.§@!p§);
                                 if(_loc3_)
                                 {
                                    continue loop0;
                                 }
                                 if(§§pop().toUpperCase() == §]!O§.§3!S§)
                                 {
                                    addr115:
                                    while(true)
                                    {
                                       this.addExplosions(§1! §.§8!8§,param1.§+$§().GetPosition().x,param1.§+$§().GetPosition().y);
                                    }
                                    addr115:
                                 }
                                 else
                                 {
                                    this.addExplosions(§1! §.§3!$§,param1.§+$§().GetPosition().x,param1.§+$§().GetPosition().y);
                                    if(!(_loc3_ && _loc3_))
                                    {
                                       if(!(_loc3_ && param1))
                                       {
                                          break loop3;
                                       }
                                       §§goto(addr115);
                                    }
                                 }
                              }
                              while(true)
                              {
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    break loop3;
                                 }
                                 continue loop3;
                              }
                           }
                           break;
                        }
                        return;
                     }
                  }
                  §§goto(addr88);
               }
            }
         }
         §§goto(addr115);
      }
      
      public function §[Z§(param1:Object, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || param3)
         {
            this.§+!W§(this.§@!d§.indexOf(param1),param2,param3,param4);
         }
      }
      
      public function §@o§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
         {
            §§push(this.§==§);
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
            addr93:
         }
         while(true)
         {
            §§push(this.§==§);
            if(_loc4_ || param1)
            {
               §§push(param2);
               if(_loc4_ || param2)
               {
                  if(_loc4_ || param2)
                  {
                     addr75:
                     §§push(-§§pop());
                     if(_loc4_ || param1)
                     {
                        §§pop().y = §§pop();
                        if(_loc4_ || _loc3_)
                        {
                           break;
                        }
                        continue;
                     }
                  }
                  else
                  {
                     §§goto(addr94);
                  }
                  §§goto(addr95);
               }
               §§goto(addr75);
            }
            else
            {
               §§goto(addr93);
            }
         }
      }
      
      public function isPigsAlive(param1:Boolean = false) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§4!H§ = null;
         var _loc2_:int = 0;
         loop0:
         while(_loc2_ < this.§@!d§.length)
         {
            _loc3_ = this.§@!d§[_loc2_] as §4!H§;
            if(!(_loc4_ && this))
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
                              §§push(_loc3_.§'!e§());
                              if(!_loc4_)
                              {
                                 §§push(Boolean(§§pop()));
                                 while(true)
                                 {
                                 }
                                 addr210:
                              }
                              while(true)
                              {
                                 §§push(§§pop());
                                 loop6:
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       while(true)
                                       {
                                          §§pop();
                                          addr214:
                                          while(!(_loc4_ && param1))
                                          {
                                             while(true)
                                             {
                                                §§push(_loc3_.§%,§);
                                                addr165:
                                                while(true)
                                                {
                                                   §§push(0);
                                                   addr166:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() > §§pop());
                                                   }
                                                }
                                             }
                                          }
                                          continue loop4;
                                       }
                                       addr213:
                                    }
                                    while(true)
                                    {
                                       loop10:
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             if(_loc5_ || this)
                                             {
                                                §§push(param1);
                                                loop11:
                                                while(true)
                                                {
                                                   §§push(!§§pop());
                                                   loop12:
                                                   while(!(_loc4_ && _loc2_))
                                                   {
                                                      §§push(§§pop());
                                                      loop13:
                                                      while(true)
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            loop14:
                                                            while(true)
                                                            {
                                                               if(!_loc4_)
                                                               {
                                                                  if(!_loc5_)
                                                                  {
                                                                     continue loop1;
                                                                  }
                                                                  §§pop();
                                                                  loop24:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc3_.§[!"§);
                                                                     loop23:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop().mTryToBlink);
                                                                        loop22:
                                                                        while(true)
                                                                        {
                                                                           §§push(0);
                                                                           loop21:
                                                                           while(!_loc4_)
                                                                           {
                                                                              §§push(§§pop() <= §§pop());
                                                                              loop18:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop());
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 if(_loc4_ && this)
                                                                                 {
                                                                                    continue loop6;
                                                                                 }
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    continue loop2;
                                                                                 }
                                                                                 if(!§§pop())
                                                                                 {
                                                                                    addr112:
                                                                                    while(true)
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          if(!_loc4_)
                                                                                          {
                                                                                             if(_loc5_)
                                                                                             {
                                                                                                §§push(true);
                                                                                                while(_loc4_)
                                                                                                {
                                                                                                   continue loop18;
                                                                                                   §§goto(addr76);
                                                                                                }
                                                                                             }
                                                                                             loop20:
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc4_)
                                                                                                {
                                                                                                   break loop14;
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc3_.§[!"§);
                                                                                                   if(_loc4_)
                                                                                                   {
                                                                                                      continue loop23;
                                                                                                   }
                                                                                                   §§push(§§pop().mTryToScream);
                                                                                                   if(!(_loc5_ || this))
                                                                                                   {
                                                                                                      continue loop22;
                                                                                                   }
                                                                                                   if(!_loc4_)
                                                                                                   {
                                                                                                      §§push(0);
                                                                                                      if(!(_loc5_ || _loc3_))
                                                                                                      {
                                                                                                         continue loop21;
                                                                                                      }
                                                                                                      §§push(§§pop() <= §§pop());
                                                                                                      if(_loc5_ || param1)
                                                                                                      {
                                                                                                         addr84:
                                                                                                         if(_loc5_ || this)
                                                                                                         {
                                                                                                            break loop20;
                                                                                                         }
                                                                                                         addr144:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc5_ || _loc2_)
                                                                                                            {
                                                                                                               if(_loc4_ && this)
                                                                                                               {
                                                                                                                  break;
                                                                                                               }
                                                                                                               §§pop();
                                                                                                               continue loop20;
                                                                                                            }
                                                                                                            continue loop14;
                                                                                                            §§goto(addr84);
                                                                                                         }
                                                                                                         continue loop12;
                                                                                                      }
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§goto(addr165);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             continue loop11;
                                                                                             return §§pop();
                                                                                          }
                                                                                          loop16:
                                                                                          while(true)
                                                                                          {
                                                                                             addr40:
                                                                                             while(true)
                                                                                             {
                                                                                                _loc2_++;
                                                                                                if(_loc4_ && param1)
                                                                                                {
                                                                                                   continue loop16;
                                                                                                }
                                                                                                if(!_loc5_)
                                                                                                {
                                                                                                   continue loop24;
                                                                                                }
                                                                                                if(true)
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                §§goto(addr53);
                                                                                             }
                                                                                             continue loop0;
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr40);
                                                                                    }
                                                                                    continue loop10;
                                                                                    addr112:
                                                                                 }
                                                                                 §§goto(addr144);
                                                                              }
                                                                              continue loop13;
                                                                           }
                                                                           §§goto(addr166);
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr213);
                                                               }
                                                            }
                                                            §§goto(addr214);
                                                         }
                                                         §§goto(addr112);
                                                      }
                                                   }
                                                   continue loop3;
                                                }
                                             }
                                             §§goto(addr192);
                                          }
                                          §§goto(addr40);
                                       }
                                    }
                                 }
                                 if(_loc4_)
                                 {
                                    continue;
                                 }
                                 §§goto(addr112);
                              }
                           }
                        }
                     }
                     §§goto(addr210);
                  }
               }
            }
            §§goto(addr221);
         }
         return false;
      }
      
      public function §const§(param1:Boolean = false) : int
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:§4!H§ = null;
         var _loc2_:int = 0;
         var _loc3_:* = int(this.§@!d§.length - 1);
         loop0:
         while(true)
         {
            §§push(_loc3_);
            if(_loc5_)
            {
               if(§§pop() < 0)
               {
                  §§push(_loc2_);
                  break;
               }
               §§push(Boolean(_loc4_ = this.§@!d§[_loc3_] as §4!H§));
               if(!_loc6_)
               {
                  §§push(§§pop());
                  if(!(_loc6_ && param1))
                  {
                     if(§§pop())
                     {
                        if(!(_loc6_ && _loc3_))
                        {
                           §§pop();
                           if(_loc5_ || _loc2_)
                           {
                              §§push(_loc4_.§'!e§());
                              if(!(_loc6_ && _loc3_))
                              {
                                 §§push(Boolean(§§pop()));
                                 loop21:
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    loop22:
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
                                                §§push(_loc4_.§%,§);
                                                loop3:
                                                while(true)
                                                {
                                                   §§push(0);
                                                   loop4:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() > §§pop());
                                                      if(!(_loc6_ && param1))
                                                      {
                                                         while(true)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               loop6:
                                                               while(true)
                                                               {
                                                                  §§push(param1);
                                                                  loop7:
                                                                  while(true)
                                                                  {
                                                                     §§push(!§§pop());
                                                                     addr204:
                                                                     loop18:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop());
                                                                        addr205:
                                                                        loop23:
                                                                        while(true)
                                                                        {
                                                                           if(!§§pop())
                                                                           {
                                                                              loop24:
                                                                              while(true)
                                                                              {
                                                                                 if(_loc6_ && _loc3_)
                                                                                 {
                                                                                    continue loop21;
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop();
                                                                                    loop13:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc4_.§[!"§);
                                                                                       loop16:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop().mTryToBlink);
                                                                                          loop15:
                                                                                          while(_loc5_)
                                                                                          {
                                                                                             §§push(0);
                                                                                             loop14:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop() <= §§pop());
                                                                                                if(!_loc6_)
                                                                                                {
                                                                                                   if(_loc5_ || this)
                                                                                                   {
                                                                                                      §§push(§§pop());
                                                                                                      if(_loc5_)
                                                                                                      {
                                                                                                         if(!(_loc6_ && _loc2_))
                                                                                                         {
                                                                                                            if(!§§pop())
                                                                                                            {
                                                                                                            }
                                                                                                            loop10:
                                                                                                            while(§§pop())
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!_loc6_)
                                                                                                                  {
                                                                                                                     if(_loc5_ || param1)
                                                                                                                     {
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     continue loop6;
                                                                                                                  }
                                                                                                                  addr180:
                                                                                                                  while(_loc6_ && _loc3_)
                                                                                                                  {
                                                                                                                     continue loop13;
                                                                                                                  }
                                                                                                                  addr187:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc4_.§[!"§);
                                                                                                                     if(!_loc5_)
                                                                                                                     {
                                                                                                                        continue loop16;
                                                                                                                     }
                                                                                                                     §§push(§§pop().mTryToScream);
                                                                                                                     if(_loc6_)
                                                                                                                     {
                                                                                                                        continue loop15;
                                                                                                                     }
                                                                                                                     §§push(0);
                                                                                                                     if(!_loc5_)
                                                                                                                     {
                                                                                                                        continue loop14;
                                                                                                                     }
                                                                                                                     if(_loc6_)
                                                                                                                     {
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     §§push(§§pop() <= §§pop());
                                                                                                                     if(_loc5_)
                                                                                                                     {
                                                                                                                        if(!(_loc6_ && param1))
                                                                                                                        {
                                                                                                                           continue loop10;
                                                                                                                        }
                                                                                                                        continue loop18;
                                                                                                                     }
                                                                                                                     §§goto(addr187);
                                                                                                                  }
                                                                                                                  continue loop4;
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  _loc2_++;
                                                                                                                  addr134:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc5_)
                                                                                                                     {
                                                                                                                        break loop10;
                                                                                                                     }
                                                                                                                     continue loop2;
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc3_);
                                                                                                               if(!(_loc6_ && param1))
                                                                                                               {
                                                                                                                  §§push(§§pop() - 1);
                                                                                                               }
                                                                                                               _loc3_ = §§pop();
                                                                                                               if(!(_loc6_ && this))
                                                                                                               {
                                                                                                                  if(_loc5_)
                                                                                                                  {
                                                                                                                     if(true)
                                                                                                                     {
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     §§goto(addr187);
                                                                                                                  }
                                                                                                                  §§goto(addr124);
                                                                                                               }
                                                                                                               §§goto(addr134);
                                                                                                            }
                                                                                                            continue loop0;
                                                                                                            addr122:
                                                                                                            addr67:
                                                                                                         }
                                                                                                         continue loop22;
                                                                                                      }
                                                                                                      continue loop23;
                                                                                                   }
                                                                                                   continue loop24;
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!(_loc5_ || _loc3_))
                                                                                                   {
                                                                                                      continue loop7;
                                                                                                   }
                                                                                                   if(!(_loc5_ || this))
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   §§pop();
                                                                                                   §§goto(addr180);
                                                                                                }
                                                                                                continue loop1;
                                                                                             }
                                                                                             continue loop21;
                                                                                          }
                                                                                          continue loop3;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr122);
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr67);
                                                         }
                                                         addr200:
                                                      }
                                                      §§goto(addr204);
                                                   }
                                                }
                                             }
                                          }
                                          addr238:
                                       }
                                       §§goto(addr200);
                                    }
                                 }
                                 addr236:
                              }
                              §§goto(addr238);
                           }
                           §§goto(addr133);
                        }
                     }
                     §§goto(addr236);
                  }
                  §§goto(addr205);
               }
               §§goto(addr223);
            }
            break;
         }
         return §§pop();
      }
      
      public function §!!M§() : int
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§4!H§ = null;
         var _loc1_:int = 0;
         var _loc3_:int = 0;
         loop0:
         for each(_loc2_ in this.§@!d§)
         {
            if(!(_loc5_ && _loc3_))
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
                                 §§push(_loc2_.§'!#§());
                                 loop6:
                                 while(true)
                                 {
                                    §§push(Boolean(§§pop()));
                                    if(!_loc5_)
                                    {
                                       §§push(§§pop());
                                       if(!(_loc6_ || _loc3_))
                                       {
                                          break;
                                          addr75:
                                       }
                                       if(§§pop())
                                       {
                                       }
                                       loop9:
                                       while(§§pop())
                                       {
                                          if(!(_loc5_ && _loc3_))
                                          {
                                             addr84:
                                             if(!(_loc6_ || _loc1_))
                                             {
                                                loop8:
                                                while(true)
                                                {
                                                   §§push(_loc2_.§[!<§());
                                                   if(_loc6_ || this)
                                                   {
                                                      if(!(_loc6_ || this))
                                                      {
                                                         while(!(_loc5_ && _loc3_))
                                                         {
                                                            §§pop();
                                                            continue loop8;
                                                         }
                                                         continue loop3;
                                                         addr126:
                                                      }
                                                      if(_loc5_)
                                                      {
                                                         continue loop1;
                                                      }
                                                      §§push(Boolean(§§pop()));
                                                   }
                                                   if(_loc5_)
                                                   {
                                                      break;
                                                   }
                                                   continue loop9;
                                                }
                                                continue loop6;
                                             }
                                             if(!(_loc6_ || _loc3_))
                                             {
                                                continue loop4;
                                             }
                                             while(true)
                                             {
                                                _loc1_++;
                                             }
                                          }
                                          while(true)
                                          {
                                             if(true)
                                             {
                                                break loop9;
                                             }
                                             continue loop5;
                                          }
                                       }
                                       continue loop0;
                                    }
                                    §§goto(addr126);
                                 }
                                 continue loop2;
                              }
                           }
                        }
                     }
                     §§goto(addr75);
                  }
               }
            }
            §§goto(addr98);
         }
         return _loc1_;
      }
      
      public function §%!o§() : int
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§4!H§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§@!d§)
         {
            if(!_loc6_)
            {
               §§push(Boolean(_loc2_));
               if(_loc5_)
               {
                  if(§§pop())
                  {
                     if(_loc5_)
                     {
                        §§pop();
                        addr80:
                        if(!_loc6_)
                        {
                           §§push(_loc2_.isTexture());
                           if(!_loc6_)
                           {
                              addr71:
                              §§push(Boolean(§§pop()));
                           }
                        }
                        _loc1_++;
                        continue;
                     }
                  }
                  if(!§§pop())
                  {
                     continue;
                  }
                  if(_loc6_ && this)
                  {
                     continue;
                  }
                  §§goto(addr80);
               }
               §§goto(addr71);
            }
            §§goto(addr80);
         }
         return _loc1_;
      }
      
      public function makePigsSmile(param1:Number = 1) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§4!H§ = null;
         var _loc2_:* = int(this.§@!d§.length - 1);
         loop0:
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§@!d§[_loc2_];
            if(!_loc5_)
            {
               §§push(Boolean(_loc3_));
               loop1:
               while(true)
               {
                  §§push(§§pop());
                  while(true)
                  {
                     if(§§pop())
                     {
                        loop3:
                        while(true)
                        {
                           §§pop();
                           addr147:
                           while(true)
                           {
                              §§push(_loc3_.§'!e§());
                              if(_loc4_ || _loc3_)
                              {
                                 §§push(Boolean(§§pop()));
                              }
                              addr125:
                              while(!_loc5_)
                              {
                              }
                              continue loop3;
                           }
                        }
                     }
                     while(true)
                     {
                        §§push(§§pop());
                        if(!_loc4_)
                        {
                           break;
                        }
                        if(§§pop())
                        {
                           continue loop1;
                        }
                        loop8:
                        while(true)
                        {
                           if(§§pop())
                           {
                              loop9:
                              while(_loc4_)
                              {
                                 §§push(_loc3_.§[!"§);
                                 §§push(§+s§.§'!m§);
                                 if(_loc4_)
                                 {
                                    §§push(§§pop() * param1);
                                 }
                                 §§pop().mTryToScream = §§pop();
                                 loop10:
                                 while(true)
                                 {
                                    addr36:
                                    while(true)
                                    {
                                       §§push(_loc2_);
                                       if(_loc4_)
                                       {
                                          §§push(§§pop() - 1);
                                       }
                                       _loc2_ = §§pop();
                                       if(_loc5_ && this)
                                       {
                                          continue loop10;
                                       }
                                       if(_loc5_ && param1)
                                       {
                                          continue loop9;
                                       }
                                       if(!(_loc5_ && param1))
                                       {
                                          if(true)
                                          {
                                             break loop8;
                                          }
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                          }
                                          addr140:
                                       }
                                       while(true)
                                       {
                                          §§push(_loc3_.§%,§ > 0);
                                          if(_loc4_ || _loc2_)
                                          {
                                             break;
                                          }
                                          continue loop1;
                                       }
                                       if(_loc4_)
                                       {
                                          continue loop8;
                                       }
                                       §§goto(addr125);
                                    }
                                 }
                              }
                              §§goto(addr147);
                           }
                           §§goto(addr36);
                        }
                        continue loop0;
                     }
                  }
               }
            }
            §§goto(addr140);
         }
      }
      
      public function §<S§() : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§4!H§ = null;
         var _loc1_:* = int(this.§@!d§.length - 1);
         loop0:
         for(; _loc1_ >= 0; while(false)
         {
            §§goto(addr70);
         })
         {
            _loc2_ = this.§@!d§[_loc1_] as §4!H§;
            if(_loc3_)
            {
               continue;
            }
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
                        loop4:
                        while(true)
                        {
                           §§push(_loc2_.§<=§());
                           if(_loc4_ || _loc1_)
                           {
                              §§push(Boolean(§§pop()));
                              if(_loc4_ || _loc2_)
                              {
                                 if(!_loc4_)
                                 {
                                    break;
                                    addr127:
                                 }
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    if(!(_loc4_ || _loc2_))
                                    {
                                       break;
                                    }
                                    if(§§pop())
                                    {
                                       loop5:
                                       while(true)
                                       {
                                          §§pop();
                                          addr138:
                                          while(true)
                                          {
                                             addr70:
                                             while(true)
                                             {
                                                §§push(_loc2_.§%,§ > 0);
                                                if(!_loc4_)
                                                {
                                                   break;
                                                }
                                                continue loop5;
                                             }
                                             continue loop1;
                                          }
                                       }
                                       addr137:
                                    }
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
                                          while(_loc3_ && _loc3_);
                                          
                                          if(!_loc3_)
                                          {
                                             if(_loc4_)
                                             {
                                                if(!_loc3_)
                                                {
                                                   continue loop0;
                                                }
                                                continue loop4;
                                             }
                                             §§goto(addr138);
                                          }
                                       }
                                       continue loop1;
                                    }
                                 }
                                 continue loop2;
                              }
                           }
                           §§goto(addr137);
                        }
                     }
                  }
                  §§goto(addr127);
               }
            }
         }
         return false;
      }
      
      public function isWorldAtSleep() : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§4!H§ = null;
         var _loc1_:* = int(this.§@!d§.length - 1);
         loop0:
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§@!d§[_loc1_] as §4!H§;
            if(_loc3_ || this)
            {
               §§push(Boolean(_loc2_));
               if(_loc3_ || _loc1_)
               {
                  §§push(§§pop());
                  loop1:
                  while(true)
                  {
                     if(§§pop())
                     {
                        loop26:
                        while(true)
                        {
                           §§pop();
                           addr286:
                           while(true)
                           {
                              §§push(_loc2_.§%,§);
                              addr247:
                              while(true)
                              {
                                 §§push(0);
                                 addr248:
                                 while(true)
                                 {
                                    §§push(§§pop() > §§pop());
                                    continue loop26;
                                 }
                              }
                              continue loop26;
                           }
                        }
                        addr285:
                     }
                     while(true)
                     {
                        loop3:
                        while(true)
                        {
                           §§push(§§pop());
                           loop4:
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
                                       §§push(_loc2_.§ W§);
                                       loop7:
                                       while(true)
                                       {
                                          §§push(§§pop() == §8!4§.§`!N§);
                                          addr230:
                                          addr47:
                                          while(true)
                                          {
                                             §§push(!§§pop());
                                          }
                                          if(!(_loc3_ || _loc2_))
                                          {
                                             continue;
                                          }
                                          addr55:
                                          _loc1_ = §§pop() - 1;
                                          if(!_loc4_)
                                          {
                                             if(false)
                                             {
                                                loop18:
                                                while(true)
                                                {
                                                   §§push(_loc2_.§%,§);
                                                   if(!(_loc4_ && _loc1_))
                                                   {
                                                      §§push(0);
                                                      if(_loc3_ || this)
                                                      {
                                                         §§push(§§pop() > §§pop());
                                                         if(_loc3_)
                                                         {
                                                            if(!(_loc4_ && this))
                                                            {
                                                               if(_loc3_)
                                                               {
                                                                  if(_loc4_ && _loc3_)
                                                                  {
                                                                     continue loop5;
                                                                  }
                                                                  if(_loc4_ && _loc2_)
                                                                  {
                                                                     continue loop3;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        if(!_loc4_)
                                                                        {
                                                                           if(!_loc4_)
                                                                           {
                                                                              if(_loc3_ || this)
                                                                              {
                                                                                 §§push(false);
                                                                                 loop21:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!(_loc4_ && this))
                                                                                    {
                                                                                       addr125:
                                                                                       if(!_loc3_)
                                                                                       {
                                                                                          addr206:
                                                                                          if(_loc4_ && this)
                                                                                          {
                                                                                             loop22:
                                                                                             while(true)
                                                                                             {
                                                                                                §§pop();
                                                                                                addr243:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc2_.§;!3§());
                                                                                                   if(!_loc4_)
                                                                                                   {
                                                                                                      addr199:
                                                                                                      §§push(!§§pop());
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!_loc3_)
                                                                                                         {
                                                                                                            §§goto(addr230);
                                                                                                         }
                                                                                                         loop14:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!§§pop())
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(_loc2_.§<=§());
                                                                                                                  if(_loc3_ || this)
                                                                                                                  {
                                                                                                                     addr163:
                                                                                                                     if(_loc3_ || _loc3_)
                                                                                                                     {
                                                                                                                        §§push(Boolean(§§pop()));
                                                                                                                        if(!(_loc4_ && _loc3_))
                                                                                                                        {
                                                                                                                           addr178:
                                                                                                                           §§push(§§pop());
                                                                                                                           if(_loc3_)
                                                                                                                           {
                                                                                                                              if(_loc4_)
                                                                                                                              {
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                              continue loop1;
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(§§pop())
                                                                                                                              {
                                                                                                                                 continue loop22;
                                                                                                                              }
                                                                                                                              continue loop14;
                                                                                                                           }
                                                                                                                           addr241:
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           addr191:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§pop();
                                                                                                                              addr192:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 continue loop18;
                                                                                                                              }
                                                                                                                              continue loop21;
                                                                                                                           }
                                                                                                                           §§goto(addr125);
                                                                                                                           addr191:
                                                                                                                        }
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(!§§pop())
                                                                                                                           {
                                                                                                                              addr43:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc1_);
                                                                                                                                 if(_loc3_)
                                                                                                                                 {
                                                                                                                                    §§goto(addr47);
                                                                                                                                 }
                                                                                                                                 §§goto(addr55);
                                                                                                                              }
                                                                                                                              continue loop0;
                                                                                                                              addr43:
                                                                                                                           }
                                                                                                                           addr233:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc2_.§8s§());
                                                                                                                              addr235:
                                                                                                                              while(!_loc4_)
                                                                                                                              {
                                                                                                                                 §§push(Boolean(§§pop()));
                                                                                                                                 if(!_loc3_)
                                                                                                                                 {
                                                                                                                                    continue loop22;
                                                                                                                                 }
                                                                                                                                 §§goto(addr241);
                                                                                                                                 §§push(§§pop());
                                                                                                                              }
                                                                                                                              §§goto(addr249);
                                                                                                                           }
                                                                                                                           §§goto(addr163);
                                                                                                                        }
                                                                                                                        addr232:
                                                                                                                     }
                                                                                                                     §§goto(addr206);
                                                                                                                  }
                                                                                                                  §§goto(addr178);
                                                                                                               }
                                                                                                               continue loop4;
                                                                                                               addr153:
                                                                                                            }
                                                                                                            addr203:
                                                                                                            if(_loc4_)
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            §§goto(addr206);
                                                                                                            §§push(false);
                                                                                                         }
                                                                                                         §§goto(addr286);
                                                                                                      }
                                                                                                      addr199:
                                                                                                   }
                                                                                                   §§goto(addr199);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          return §§pop();
                                                                                       }
                                                                                       return §§pop();
                                                                                    }
                                                                                    §§goto(addr191);
                                                                                 }
                                                                                 addr118:
                                                                              }
                                                                              §§goto(addr243);
                                                                           }
                                                                           §§goto(addr192);
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           if(!(_loc4_ && _loc2_))
                                                                           {
                                                                              if(_loc3_ || _loc3_)
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§goto(addr43);
                                                                                 }
                                                                                 addr152:
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr203);
                                                                              }
                                                                              §§goto(addr43);
                                                                           }
                                                                           else if(_loc3_ || _loc1_)
                                                                           {
                                                                              if(!_loc3_)
                                                                              {
                                                                                 break loop18;
                                                                              }
                                                                              §§goto(addr153);
                                                                           }
                                                                           §§goto(addr233);
                                                                        }
                                                                        continue loop7;
                                                                        addr128:
                                                                     }
                                                                     §§goto(addr43);
                                                                  }
                                                               }
                                                               §§goto(addr235);
                                                            }
                                                            §§goto(addr199);
                                                         }
                                                         §§goto(addr118);
                                                      }
                                                      §§goto(addr248);
                                                   }
                                                   §§goto(addr247);
                                                }
                                                continue loop6;
                                             }
                                             continue loop0;
                                          }
                                          §§goto(addr128);
                                       }
                                    }
                                 }
                              }
                              while(true)
                              {
                                 §§goto(addr232);
                              }
                           }
                        }
                     }
                  }
               }
               §§goto(addr285);
            }
            §§goto(addr152);
         }
         return true;
      }
      
      public function §<W§(param1:Boolean = false) : §4!H§
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc5_:* = 0;
         var _loc6_:§4!H§ = null;
         if(_loc7_ || this)
         {
            if(!this.isPigsAlive())
            {
               if(!_loc8_)
               {
                  return null;
               }
            }
         }
         var _loc2_:int = this.§@!d§.length;
         §§push(1);
         if(!_loc8_)
         {
            §§push(int(§§pop() + Math.random() * this.§const§(param1)));
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
               while(§§pop() < §§pop())
               {
                  §§push(0);
                  if(_loc7_)
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
                        if(!(_loc7_ || _loc3_))
                        {
                           break;
                        }
                        if(§§pop() >= §§pop())
                        {
                           continue loop0;
                        }
                        §§push(Boolean(_loc6_ = this.§@!d§[_loc5_]));
                        if(_loc7_ || param1)
                        {
                           §§push(§§pop());
                           if(!(_loc8_ && param1))
                           {
                              if(§§pop())
                              {
                                 if(_loc7_ || _loc3_)
                                 {
                                    addr96:
                                    §§pop();
                                    if(_loc7_)
                                    {
                                       §§push(_loc6_.§'!e§());
                                       loop4:
                                       while(true)
                                       {
                                          §§push(Boolean(§§pop()));
                                          if(!_loc8_)
                                          {
                                             while(true)
                                             {
                                                §§push(§§pop());
                                                loop28:
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
                                                            §§push(_loc6_.§%,§);
                                                            loop7:
                                                            while(true)
                                                            {
                                                               §§push(0);
                                                               loop8:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() > §§pop());
                                                                  if(_loc7_)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        if(!§§pop())
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              _loc5_++;
                                                                              if(_loc7_ || this)
                                                                              {
                                                                                 if(!(_loc8_ && param1))
                                                                                 {
                                                                                    if(_loc7_)
                                                                                    {
                                                                                       if(true)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       loop13:
                                                                                       while(_loc4_ >= _loc3_)
                                                                                       {
                                                                                          if(_loc7_ || _loc2_)
                                                                                          {
                                                                                             return _loc6_;
                                                                                          }
                                                                                          addr133:
                                                                                          while(_loc8_ && param1)
                                                                                          {
                                                                                             while(!_loc8_)
                                                                                             {
                                                                                                if(_loc7_)
                                                                                                {
                                                                                                   continue loop13;
                                                                                                }
                                                                                                continue loop6;
                                                                                             }
                                                                                             loop16:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc6_.§[!"§);
                                                                                                loop17:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop().mTryToBlink);
                                                                                                   addr201:
                                                                                                   while(!_loc8_)
                                                                                                   {
                                                                                                      §§push(0);
                                                                                                      loop19:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc8_ && param1)
                                                                                                         {
                                                                                                            continue loop8;
                                                                                                         }
                                                                                                         §§push(§§pop() <= §§pop());
                                                                                                         if(!(_loc8_ && this))
                                                                                                         {
                                                                                                            if(!_loc7_)
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            if(_loc7_ || param1)
                                                                                                            {
                                                                                                               §§push(§§pop());
                                                                                                               if(!_loc8_)
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(§§pop())
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§pop();
                                                                                                                           §§push(§§pop() <= §§pop());
                                                                                                                           addr172:
                                                                                                                           continue loop17;
                                                                                                                           if(!(_loc7_ || _loc2_))
                                                                                                                           {
                                                                                                                              continue;
                                                                                                                           }
                                                                                                                           if(_loc8_ && this)
                                                                                                                           {
                                                                                                                              while(!_loc8_)
                                                                                                                              {
                                                                                                                                 continue loop4;
                                                                                                                              }
                                                                                                                              continue loop5;
                                                                                                                              addr244:
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(!§§pop())
                                                                                                                              {
                                                                                                                                 break loop13;
                                                                                                                              }
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(!_loc7_)
                                                                                                                                 {
                                                                                                                                    continue loop17;
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    _loc4_++;
                                                                                                                                    §§goto(addr192);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        addr232:
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr231:
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(!(_loc7_ || _loc2_))
                                                                                                                     {
                                                                                                                        continue loop28;
                                                                                                                     }
                                                                                                                     if(!§§pop())
                                                                                                                     {
                                                                                                                        break loop19;
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr255:
                                                                                                               }
                                                                                                               §§goto(addr187);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               addr254:
                                                                                                               while(true)
                                                                                                               {
                                                                                                               }
                                                                                                               addr254:
                                                                                                            }
                                                                                                            §§goto(addr255);
                                                                                                         }
                                                                                                         §§goto(addr232);
                                                                                                         addr164:
                                                                                                         §§push(0);
                                                                                                         if(_loc8_ && _loc3_)
                                                                                                         {
                                                                                                            continue;
                                                                                                         }
                                                                                                         §§goto(addr172);
                                                                                                      }
                                                                                                      continue loop16;
                                                                                                   }
                                                                                                   continue loop7;
                                                                                                }
                                                                                             }
                                                                                             addr192:
                                                                                          }
                                                                                          break;
                                                                                       }
                                                                                       continue;
                                                                                    }
                                                                                    addr243:
                                                                                    while(true)
                                                                                    {
                                                                                    }
                                                                                    §§goto(addr244);
                                                                                 }
                                                                                 §§goto(addr189);
                                                                              }
                                                                              §§goto(addr133);
                                                                           }
                                                                           continue loop3;
                                                                        }
                                                                        §§goto(addr243);
                                                                     }
                                                                     addr241:
                                                                  }
                                                                  §§goto(addr254);
                                                               }
                                                            }
                                                         }
                                                      }
                                                      addr283:
                                                   }
                                                   §§goto(addr241);
                                                }
                                             }
                                             addr281:
                                          }
                                          §§goto(addr283);
                                       }
                                       addr267:
                                    }
                                    §§goto(addr191);
                                 }
                                 §§goto(addr267);
                              }
                              §§goto(addr281);
                           }
                           §§goto(addr231);
                        }
                        §§goto(addr96);
                     }
                     continue;
                  }
                  continue loop1;
               }
               addr307:
               return null;
            }
         }
      }
      
      public function §6!§() : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:* = 0;
         var _loc2_:* = int(this.§@!d§.length - 1);
         loop0:
         while(true)
         {
            §§push(_loc2_);
            if(!(_loc3_ && _loc3_))
            {
               if(_loc4_)
               {
                  if(!(_loc3_ && this))
                  {
                     §§push(0);
                     if(!(_loc3_ && _loc1_))
                     {
                        if(_loc4_ || _loc3_)
                        {
                           if(§§pop() < §§pop())
                           {
                              if(_loc4_ || this)
                              {
                                 if(!_loc4_)
                                 {
                                    continue;
                                 }
                                 if(!(_loc3_ && this))
                                 {
                                    §§push(_loc1_);
                                    loop1:
                                    for(; !(_loc3_ && this); if(_loc4_ || this)
                                    {
                                       return §§pop();
                                    })
                                    {
                                       §§push(this.§+!X§.slingshot.§6!§());
                                       while(true)
                                       {
                                          §§push(§§pop() + §§pop());
                                          if(!(_loc3_ && _loc3_))
                                          {
                                             §§push(int(§§pop()));
                                             loop16:
                                             while(!(_loc3_ && this))
                                             {
                                                addr128:
                                                _loc1_ = §§pop();
                                                while(!_loc3_)
                                                {
                                                   §§push(_loc1_);
                                                   if(!_loc3_)
                                                   {
                                                      continue loop1;
                                                   }
                                                   continue loop16;
                                                   §§goto(addr128);
                                                }
                                                loop4:
                                                while(true)
                                                {
                                                   addr132:
                                                   while(true)
                                                   {
                                                      §§push(_loc2_);
                                                      break loop16;
                                                   }
                                                   addr187:
                                                   while(true)
                                                   {
                                                      _loc1_ = §§pop();
                                                      continue loop4;
                                                   }
                                                }
                                             }
                                             while(true)
                                             {
                                                §§push(§§pop() - 1);
                                                addr135:
                                                while(true)
                                                {
                                                   if(_loc4_)
                                                   {
                                                      if(_loc4_ || this)
                                                      {
                                                         break;
                                                      }
                                                      addr192:
                                                      while(true)
                                                      {
                                                         §§push((this.§@!d§[_loc2_] as §4!H§).§&!'§.score);
                                                         addr200:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            addr201:
                                                            while(true)
                                                            {
                                                               §§push(int(§§pop()));
                                                               break loop1;
                                                            }
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr187);
                                                }
                                                _loc2_ = §§pop();
                                                continue loop0;
                                             }
                                             addr121:
                                          }
                                          break;
                                       }
                                       while(true)
                                       {
                                          if(!_loc3_)
                                          {
                                             §§goto(addr187);
                                             §§push(int(§§pop()));
                                          }
                                          §§goto(addr201);
                                       }
                                    }
                                    while(true)
                                    {
                                       _loc1_ = §§pop();
                                       §§goto(addr201);
                                    }
                                    addr202:
                                 }
                                 while(true)
                                 {
                                    if((this.§@!d§[_loc2_] as §4!H§).§8s§())
                                    {
                                       if(!_loc3_)
                                       {
                                          §§push(_loc1_);
                                          while(true)
                                          {
                                             §§push(§-!7§.§>!%§.getValue());
                                             addr161:
                                             while(true)
                                             {
                                                if(_loc4_)
                                                {
                                                   §§goto(addr184);
                                                   §§push(§§pop() + §§pop() * int((this.§@!d§[_loc2_] as §4!H§).§0K§));
                                                }
                                                §§goto(addr200);
                                             }
                                          }
                                          addr158:
                                       }
                                       §§goto(addr188);
                                    }
                                    §§goto(addr132);
                                    §§goto(addr202);
                                 }
                              }
                              §§goto(addr129);
                           }
                           else
                           {
                              §§push(_loc1_);
                           }
                           §§goto(addr192);
                        }
                        §§goto(addr161);
                     }
                     §§goto(addr112);
                  }
                  §§goto(addr158);
               }
               §§goto(addr135);
            }
            §§goto(addr121);
         }
      }
      
      public function §[!9§(param1:§4!H§, param2:§4!H§) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §§push(param1.§<=§());
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
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
                              §§push(param2.§<=§());
                              while(true)
                              {
                                 §§push(Boolean(§§pop()));
                                 addr45:
                                 if(_loc3_ || this)
                                 {
                                    §§push(!§§pop());
                                    loop14:
                                    while(true)
                                    {
                                       if(_loc3_)
                                       {
                                          continue loop0;
                                       }
                                       loop12:
                                       while(true)
                                       {
                                          if(!(_loc4_ && param2))
                                          {
                                             §§pop();
                                             loop13:
                                             while(true)
                                             {
                                                §§push(param2.§^!"§());
                                                if(!_loc3_)
                                                {
                                                   continue loop14;
                                                }
                                                if(_loc4_)
                                                {
                                                   break;
                                                }
                                                §§goto(addr45);
                                                addr92:
                                                if(_loc4_ && param1)
                                                {
                                                   continue;
                                                }
                                                if(_loc3_)
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      break loop12;
                                                   }
                                                   addr19:
                                                   §§push(false);
                                                   if(!(_loc4_ && param2))
                                                   {
                                                      continue loop14;
                                                   }
                                                   addr82:
                                                   if(_loc3_)
                                                   {
                                                      §§goto(addr84);
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(§§pop());
                                                      if(!(_loc4_ && param1))
                                                      {
                                                         if(§§pop())
                                                         {
                                                            continue loop12;
                                                         }
                                                         addr62:
                                                         while(true)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               if(_loc3_ || param1)
                                                               {
                                                                  §§push(true);
                                                                  break;
                                                               }
                                                               §§goto(addr92);
                                                            }
                                                            §§goto(addr19);
                                                         }
                                                         continue;
                                                      }
                                                      continue loop2;
                                                   }
                                                   addr84:
                                                   if(_loc4_ && this)
                                                   {
                                                      while(true)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(!(_loc4_ && _loc3_))
                                                            {
                                                               §§goto(addr154);
                                                            }
                                                            addr155:
                                                            while(true)
                                                            {
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(param1.§^!"§());
                                                            break loop13;
                                                         }
                                                         §§goto(addr84);
                                                      }
                                                      addr145:
                                                   }
                                                   return §§pop();
                                                   addr112:
                                                }
                                                §§goto(addr155);
                                             }
                                             while(true)
                                             {
                                                if(!_loc4_)
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      continue loop1;
                                                   }
                                                   §§goto(addr112);
                                                   §§push(!§§pop());
                                                }
                                                §§goto(addr154);
                                             }
                                          }
                                          continue loop3;
                                       }
                                       continue loop4;
                                    }
                                    continue loop0;
                                 }
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
         addr154:
         return true;
      }
      
      public function §>h§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.mSardineCanAdded = true;
            do
            {
               this.§;!o§ = 0;
            }
            while(!_loc1_);
            
         }
      }
      
      public function §!!u§(param1:§4!H§, param2:§4!H§) : Boolean
      {
         var _loc20_:Boolean = true;
         var _loc21_:Boolean = false;
         var _loc18_:Number = NaN;
         var _loc19_:* = NaN;
         if(_loc20_ || param2)
         {
            §§push(this.mMightyEagleAdded);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  §§push(this.mSardineCanAdded);
                  loop1:
                  while(true)
                  {
                     if(_loc20_)
                     {
                        §§push(Boolean(§§pop()));
                        loop2:
                        while(true)
                        {
                           §§push(§§pop());
                           loop3:
                           while(true)
                           {
                              if(!(_loc21_ && param1))
                              {
                                 if(_loc20_)
                                 {
                                    if(§§pop())
                                    {
                                       loop4:
                                       while(true)
                                       {
                                          §§pop();
                                          loop5:
                                          while(!(_loc21_ && param2))
                                          {
                                             §§push(this.mMightyEagleTimer);
                                             if(_loc20_ || this)
                                             {
                                                §§push(§§pop() == this.§3D§.MIGHTY_EAGLE_WAIT_TIME);
                                                loop6:
                                                while(true)
                                                {
                                                   if(!(_loc21_ && this))
                                                   {
                                                      while(true)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            loop22:
                                                            while(true)
                                                            {
                                                               if(!_loc21_)
                                                               {
                                                                  §§push(param1.§=!P§());
                                                                  loop23:
                                                                  while(true)
                                                                  {
                                                                     if(!_loc20_)
                                                                     {
                                                                        continue loop0;
                                                                     }
                                                                     §§push(Boolean(§§pop()));
                                                                     loop24:
                                                                     while(true)
                                                                     {
                                                                        if(_loc20_)
                                                                        {
                                                                           if(_loc20_)
                                                                           {
                                                                              §§push(§§pop());
                                                                              if(_loc21_ && _loc3_)
                                                                              {
                                                                                 continue loop3;
                                                                              }
                                                                              if(!§§pop())
                                                                              {
                                                                                 continue loop4;
                                                                              }
                                                                              loop25:
                                                                              while(true)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    loop26:
                                                                                    while(true)
                                                                                    {
                                                                                       if(!(_loc21_ && this))
                                                                                       {
                                                                                          this.mMightyEagleTimer = 0;
                                                                                          loop27:
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc21_)
                                                                                             {
                                                                                                continue loop5;
                                                                                             }
                                                                                             if(_loc20_ || param1)
                                                                                             {
                                                                                                if(_loc20_)
                                                                                                {
                                                                                                   addr28:
                                                                                                   loop11:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(this.§[!9§(param1,param2));
                                                                                                      if(_loc20_ || this)
                                                                                                      {
                                                                                                         if(_loc20_)
                                                                                                         {
                                                                                                            if(!_loc21_)
                                                                                                            {
                                                                                                               if(§§pop())
                                                                                                               {
                                                                                                                  if(_loc20_ || param1)
                                                                                                                  {
                                                                                                                     if(_loc20_)
                                                                                                                     {
                                                                                                                        if(_loc20_)
                                                                                                                        {
                                                                                                                           addr57:
                                                                                                                           §§push(false);
                                                                                                                           if(_loc21_ && this)
                                                                                                                           {
                                                                                                                              continue loop24;
                                                                                                                           }
                                                                                                                           if(!(_loc20_ || _loc3_))
                                                                                                                           {
                                                                                                                              continue loop23;
                                                                                                                           }
                                                                                                                           if(!_loc20_)
                                                                                                                           {
                                                                                                                              continue loop6;
                                                                                                                           }
                                                                                                                           if(!_loc21_)
                                                                                                                           {
                                                                                                                              if(!_loc21_)
                                                                                                                              {
                                                                                                                                 return §§pop();
                                                                                                                              }
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop());
                                                                                                                                 addr319:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(!§§pop())
                                                                                                                                    {
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§pop();
                                                                                                                                          addr321:
                                                                                                                                          loop31:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(param2.§'!e§());
                                                                                                                                             addr296:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(Boolean(§§pop()));
                                                                                                                                                continue loop31;
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       addr320:
                                                                                                                                    }
                                                                                                                                    loop16:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       addr298:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(§§pop())
                                                                                                                                          {
                                                                                                                                             addr299:
                                                                                                                                             §§push(param2);
                                                                                                                                             §§push(param2.§0K§);
                                                                                                                                             if(_loc20_)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() * 2);
                                                                                                                                             }
                                                                                                                                             §§pop().applyDamage(§§pop(),true,true,true,false);
                                                                                                                                             break loop5;
                                                                                                                                          }
                                                                                                                                          addr265:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(param2.§3!i§());
                                                                                                                                             continue loop0;
                                                                                                                                          }
                                                                                                                                          continue loop16;
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              addr318:
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(_loc20_ || this)
                                                                                                                                 {
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(§§pop())
                                                                                                                                       {
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(param1);
                                                                                                                                             §§push(param1.§0K§);
                                                                                                                                             if(!(_loc21_ && param1))
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() * 2);
                                                                                                                                             }
                                                                                                                                             §§pop().applyDamage(§§pop(),true,true,true,false);
                                                                                                                                             addr264:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(true);
                                                                                                                                                §§goto(addr223);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          addr247:
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             continue loop11;
                                                                                                                                          }
                                                                                                                                          addr193:
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr296);
                                                                                                                        }
                                                                                                                        §§goto(addr299);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(_loc21_)
                                                                                                                           {
                                                                                                                              if(_loc21_)
                                                                                                                              {
                                                                                                                                 §§goto(addr264);
                                                                                                                              }
                                                                                                                              §§goto(addr193);
                                                                                                                           }
                                                                                                                           §§goto(addr264);
                                                                                                                        }
                                                                                                                        addr190:
                                                                                                                     }
                                                                                                                     §§goto(addr264);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     if(_loc21_ && param2)
                                                                                                                     {
                                                                                                                        continue loop27;
                                                                                                                     }
                                                                                                                     if(!(_loc20_ || this))
                                                                                                                     {
                                                                                                                        continue loop26;
                                                                                                                     }
                                                                                                                     if(_loc21_)
                                                                                                                     {
                                                                                                                        continue loop22;
                                                                                                                     }
                                                                                                                     if(true)
                                                                                                                     {
                                                                                                                        addr324:
                                                                                                                        var _loc3_:Number = 10;
                                                                                                                        addr322:
                                                                                                                        §§push(param1.§,!H§(param2.§^!S§()));
                                                                                                                        if(_loc20_)
                                                                                                                        {
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                        }
                                                                                                                        var _loc4_:* = §§pop();
                                                                                                                        §§push(param1.§-![§(param2.§^!S§()));
                                                                                                                        if(!_loc21_)
                                                                                                                        {
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                        }
                                                                                                                        var _loc5_:* = §§pop();
                                                                                                                        §§push(param2.§,!H§(param1.§^!S§()));
                                                                                                                        if(!(_loc21_ && param2))
                                                                                                                        {
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                        }
                                                                                                                        var _loc6_:* = §§pop();
                                                                                                                        §§push(param2.§-![§(param1.§^!S§()));
                                                                                                                        if(_loc20_ || this)
                                                                                                                        {
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                        }
                                                                                                                        var _loc7_:* = §§pop();
                                                                                                                        §§push(param1.§+$§().GetMass());
                                                                                                                        if(!_loc21_)
                                                                                                                        {
                                                                                                                           §§push(param1.§+$§());
                                                                                                                           if(!_loc21_)
                                                                                                                           {
                                                                                                                              §§push(§§pop().GetLinearVelocity().x);
                                                                                                                              if(_loc20_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                 if(_loc20_)
                                                                                                                                 {
                                                                                                                                    addr385:
                                                                                                                                    §§push(param2.§+$§().GetMass());
                                                                                                                                    if(_loc20_ || param2)
                                                                                                                                    {
                                                                                                                                       addr393:
                                                                                                                                       §§push(§§pop() * param2.§+$§().GetLinearVelocity().x);
                                                                                                                                    }
                                                                                                                                    §§push(§§pop() - §§pop());
                                                                                                                                    if(_loc20_ || _loc3_)
                                                                                                                                    {
                                                                                                                                    }
                                                                                                                                    addr407:
                                                                                                                                    var _loc8_:* = §§pop();
                                                                                                                                    §§push(param1.§+$§().GetMass());
                                                                                                                                    if(_loc20_ || _loc3_)
                                                                                                                                    {
                                                                                                                                       §§push(param1.§+$§());
                                                                                                                                       if(!(_loc21_ && _loc3_))
                                                                                                                                       {
                                                                                                                                          §§push(§§pop().GetLinearVelocity().y);
                                                                                                                                          if(!(_loc21_ && param2))
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                             if(!(_loc21_ && this))
                                                                                                                                             {
                                                                                                                                                addr446:
                                                                                                                                                §§push(param2.§+$§().GetMass());
                                                                                                                                                if(!_loc21_)
                                                                                                                                                {
                                                                                                                                                   addr454:
                                                                                                                                                   §§push(§§pop() - §§pop() * param2.§+$§().GetLinearVelocity().y);
                                                                                                                                                   if(_loc21_ && param1)
                                                                                                                                                   {
                                                                                                                                                   }
                                                                                                                                                   var _loc9_:* = §§pop();
                                                                                                                                                   §§push(Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_) / _loc3_);
                                                                                                                                                   if(!(_loc21_ && this))
                                                                                                                                                   {
                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                   }
                                                                                                                                                   var _loc10_:* = §§pop();
                                                                                                                                                   §§push(_loc4_);
                                                                                                                                                   if(_loc20_)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() * _loc10_);
                                                                                                                                                      if(_loc20_ || this)
                                                                                                                                                      {
                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   var _loc11_:* = §§pop();
                                                                                                                                                   §§push(_loc6_);
                                                                                                                                                   if(!(_loc21_ && param2))
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() * _loc10_);
                                                                                                                                                      if(!(_loc21_ && param1))
                                                                                                                                                      {
                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   var _loc12_:* = §§pop();
                                                                                                                                                   var _loc13_:Number = Math.max(0,param1.§%,§);
                                                                                                                                                   var _loc14_:Number = Math.max(0,param2.§%,§);
                                                                                                                                                   §§push(param1.applyDamage(_loc12_,true,param2.§<=§(),_loc14_ == param2.§0K§));
                                                                                                                                                   if(_loc20_ || this)
                                                                                                                                                   {
                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                   }
                                                                                                                                                   var _loc15_:* = §§pop();
                                                                                                                                                   §§push(param2.applyDamage(_loc11_,true,param1.§<=§(),_loc13_ == param1.§0K§));
                                                                                                                                                   if(_loc20_)
                                                                                                                                                   {
                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                   }
                                                                                                                                                   var _loc16_:* = §§pop();
                                                                                                                                                   var _loc17_:Boolean;
                                                                                                                                                   §§push(_loc17_ = false);
                                                                                                                                                   if(!_loc21_)
                                                                                                                                                   {
                                                                                                                                                      if(§§pop())
                                                                                                                                                      {
                                                                                                                                                         if(!_loc21_)
                                                                                                                                                         {
                                                                                                                                                            §[g§.log("--- NEW COLLISION ---");
                                                                                                                                                            if(_loc20_)
                                                                                                                                                            {
                                                                                                                                                               §§push(§[g§);
                                                                                                                                                               §§push("Mat Dam Factor1 = ");
                                                                                                                                                               if(_loc20_ || _loc3_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc4_);
                                                                                                                                                                  if(!_loc21_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                     if(_loc20_ || param2)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(" Mat Dam Factor2 = ");
                                                                                                                                                                        if(!_loc21_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                                                                           if(!_loc21_)
                                                                                                                                                                           {
                                                                                                                                                                              addr1243:
                                                                                                                                                                              §§push(_loc6_);
                                                                                                                                                                              if(!_loc21_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                                                                 if(!(_loc21_ && this))
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(" Mat Vel Factor1 = ");
                                                                                                                                                                                    if(_loc20_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                                                                       if(_loc21_ && param2)
                                                                                                                                                                                       {
                                                                                                                                                                                       }
                                                                                                                                                                                       addr1297:
                                                                                                                                                                                       §§pop().log(§§pop() + _loc7_);
                                                                                                                                                                                       addr1298:
                                                                                                                                                                                       §§push(§[g§);
                                                                                                                                                                                       §§push("Object1: ");
                                                                                                                                                                                       if(_loc20_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() + param1.§@!p§);
                                                                                                                                                                                          if(_loc20_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr1170:
                                                                                                                                                                                             §§push(" force1 = ");
                                                                                                                                                                                             if(_loc20_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                                                                if(_loc20_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc11_);
                                                                                                                                                                                                   if(_loc20_ || param2)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                                                                      if(!_loc21_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(" obj health1 = ");
                                                                                                                                                                                                         if(_loc20_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr1190:
                                                                                                                                                                                                            §§push(§§pop() + §§pop());
                                                                                                                                                                                                            if(!_loc21_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr1193:
                                                                                                                                                                                                               §§push(_loc13_);
                                                                                                                                                                                                               if(_loc20_ || param1)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr1201:
                                                                                                                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                                                                                                                  if(!(_loc21_ && _loc3_))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr1215:
                                                                                                                                                                                                                     addr1209:
                                                                                                                                                                                                                     addr1210:
                                                                                                                                                                                                                     §§push(§§pop() + " new health1 = ");
                                                                                                                                                                                                                     if(_loc20_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(_loc15_);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§pop().log(§§pop());
                                                                                                                                                                                                                     addr1216:
                                                                                                                                                                                                                     §§push(§[g§);
                                                                                                                                                                                                                     §§push("Object2: ");
                                                                                                                                                                                                                     if(!_loc21_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(§§pop() + param2.§@!p§);
                                                                                                                                                                                                                        if(!_loc21_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(" force2 = ");
                                                                                                                                                                                                                           if(!(_loc21_ && param2))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                                                                                                                              if(_loc20_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(_loc12_);
                                                                                                                                                                                                                                 if(_loc20_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                    if(_loc20_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr1120:
                                                                                                                                                                                                                                       §§push(" obj health2 = ");
                                                                                                                                                                                                                                       if(!(_loc21_ && param1))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr1153:
                                                                                                                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                          if(_loc20_ || _loc3_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             addr1136:
                                                                                                                                                                                                                                             §§push(_loc14_);
                                                                                                                                                                                                                                             if(!(_loc21_ && param1))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                if(_loc21_ && param1)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                addr1158:
                                                                                                                                                                                                                                                §§pop().log(§§pop());
                                                                                                                                                                                                                                                addr1089:
                                                                                                                                                                                                                                                addr1159:
                                                                                                                                                                                                                                                if(_loc15_ <= 0 && _loc12_ != 0)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(!_loc21_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(_loc20_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         addr1060:
                                                                                                                                                                                                                                                         §§push(_loc12_ - _loc13_);
                                                                                                                                                                                                                                                         §§push(_loc12_);
                                                                                                                                                                                                                                                         if(_loc20_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            addr1064:
                                                                                                                                                                                                                                                            §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                                            if(!(_loc21_ && _loc3_))
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               addr1079:
                                                                                                                                                                                                                                                               addr1076:
                                                                                                                                                                                                                                                               addr1080:
                                                                                                                                                                                                                                                               addr1078:
                                                                                                                                                                                                                                                               addr1072:
                                                                                                                                                                                                                                                               addr1074:
                                                                                                                                                                                                                                                               addr1077:
                                                                                                                                                                                                                                                               addr1073:
                                                                                                                                                                                                                                                               addr1075:
                                                                                                                                                                                                                                                               if((_loc18_ = (_loc18_ = §§pop()) * _loc7_) > 1)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  addr1083:
                                                                                                                                                                                                                                                                  _loc18_ = 1;
                                                                                                                                                                                                                                                                  addr1084:
                                                                                                                                                                                                                                                                  addr1081:
                                                                                                                                                                                                                                                                  addr1082:
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§push(_loc17_);
                                                                                                                                                                                                                                                               if(!_loc21_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(_loc20_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(§§pop())
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        addr1017:
                                                                                                                                                                                                                                                                        §§push(§[g§);
                                                                                                                                                                                                                                                                        §§push(param1.§@!p§ + " is killed. Speed Multiplier for ");
                                                                                                                                                                                                                                                                        if(_loc20_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(§§pop() + param2.§@!p§);
                                                                                                                                                                                                                                                                           if(_loc20_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(§§pop() + " is ");
                                                                                                                                                                                                                                                                              if(!(_loc21_ && _loc3_))
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(§§pop() + _loc18_);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§pop().log(§§pop());
                                                                                                                                                                                                                                                                        if(!_loc21_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(_loc20_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              addr979:
                                                                                                                                                                                                                                                                              §§push(param2);
                                                                                                                                                                                                                                                                              §§push(§§findproperty(b2Vec2));
                                                                                                                                                                                                                                                                              §§push(param2.§+$§().GetLinearVelocity().x);
                                                                                                                                                                                                                                                                              if(!_loc21_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(_loc18_);
                                                                                                                                                                                                                                                                                 if(_loc20_ || this)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    addr997:
                                                                                                                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                    §§push(param2.§+$§().GetLinearVelocity().y);
                                                                                                                                                                                                                                                                                    if(!_loc21_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       addr1003:
                                                                                                                                                                                                                                                                                       §§push(§§pop() * _loc18_);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§pop().§9§(new §§pop().b2Vec2(§§pop(),§§pop()));
                                                                                                                                                                                                                                                                                    addr1007:
                                                                                                                                                                                                                                                                                    if(_loc20_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       addr958:
                                                                                                                                                                                                                                                                                       §§push(_loc16_);
                                                                                                                                                                                                                                                                                       if(_loc20_ || _loc3_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(!_loc21_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             addr968:
                                                                                                                                                                                                                                                                                             §§push(§§pop() <= 0);
                                                                                                                                                                                                                                                                                             if(_loc20_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                addr972:
                                                                                                                                                                                                                                                                                                §§push(§§pop());
                                                                                                                                                                                                                                                                                                if(!_loc21_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(§§pop())
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      addr975:
                                                                                                                                                                                                                                                                                                      if(!_loc21_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§pop();
                                                                                                                                                                                                                                                                                                         addr978:
                                                                                                                                                                                                                                                                                                         §§push(_loc11_);
                                                                                                                                                                                                                                                                                                         if(_loc20_ || _loc3_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            if(_loc20_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               addr793:
                                                                                                                                                                                                                                                                                                               §§push(§§pop() != 0);
                                                                                                                                                                                                                                                                                                               if(_loc20_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  addr795:
                                                                                                                                                                                                                                                                                                                  if(§§pop())
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     addr797:
                                                                                                                                                                                                                                                                                                                     §§push(_loc11_);
                                                                                                                                                                                                                                                                                                                     if(_loc20_ || param1)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        §§push(_loc14_);
                                                                                                                                                                                                                                                                                                                        if(!(_loc21_ && _loc3_))
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           if(!_loc21_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                              if(!(_loc21_ && _loc3_))
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 if(_loc20_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    §§push(_loc11_);
                                                                                                                                                                                                                                                                                                                                    if(_loc20_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       addr838:
                                                                                                                                                                                                                                                                                                                                       if(_loc20_ || param2)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          if(_loc20_ || param2)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                                                                                                                             if(!_loc21_)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                addr855:
                                                                                                                                                                                                                                                                                                                                                if(_loc20_)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                                   if(_loc20_)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      addr860:
                                                                                                                                                                                                                                                                                                                                                      if(!_loc21_)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         if(!_loc21_)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            §§push(§§pop());
                                                                                                                                                                                                                                                                                                                                                            if(_loc20_ || param1)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               addr872:
                                                                                                                                                                                                                                                                                                                                                               if(_loc20_ || param2)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  _loc19_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                                  if(!(_loc21_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     if(!_loc21_)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        §§push(_loc5_);
                                                                                                                                                                                                                                                                                                                                                                        if(_loc20_ || param1)
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           addr909:
                                                                                                                                                                                                                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                                           if(!(_loc21_ && param1))
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              addr906:
                                                                                                                                                                                                                                                                                                                                                                              §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                              §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           §§push(1);
                                                                                                                                                                                                                                                                                                                                                                           if(_loc20_ || param1)
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              if(§§pop() > §§pop())
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 addr917:
                                                                                                                                                                                                                                                                                                                                                                                 if(_loc20_ || param1)
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    if(_loc20_ || param1)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       §§push(1);
                                                                                                                                                                                                                                                                                                                                                                                       if(!(_loc21_ && param1))
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          addr940:
                                                                                                                                                                                                                                                                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                                          if(_loc20_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             _loc19_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                             addr948:
                                                                                                                                                                                                                                                                                                                                                                                             if(_loc20_ || param1)
                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                addr740:
                                                                                                                                                                                                                                                                                                                                                                                                if(_loc17_)
                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                   addr741:
                                                                                                                                                                                                                                                                                                                                                                                                   if(_loc20_)
                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                      if(!_loc21_)
                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                         §§push(§[g§);
                                                                                                                                                                                                                                                                                                                                                                                                         §§push(param2.§@!p§ + " is killed. Speed Multiplier for ");
                                                                                                                                                                                                                                                                                                                                                                                                         if(_loc20_ || this)
                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                            §§push(§§pop() + param1.§@!p§);
                                                                                                                                                                                                                                                                                                                                                                                                            if(_loc20_ || param1)
                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                               addr767:
                                                                                                                                                                                                                                                                                                                                                                                                               §§push(§§pop() + " is ");
                                                                                                                                                                                                                                                                                                                                                                                                               if(!_loc21_)
                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                  addr771:
                                                                                                                                                                                                                                                                                                                                                                                                                  §§push(§§pop() + _loc19_);
                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                               §§pop().log(§§pop());
                                                                                                                                                                                                                                                                                                                                                                                                               addr774:
                                                                                                                                                                                                                                                                                                                                                                                                               if(_loc20_)
                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                  if(!_loc21_)
                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                     addr703:
                                                                                                                                                                                                                                                                                                                                                                                                                     §§push(param1);
                                                                                                                                                                                                                                                                                                                                                                                                                     §§push(§§findproperty(b2Vec2));
                                                                                                                                                                                                                                                                                                                                                                                                                     §§push(param1.§+$§().GetLinearVelocity().x);
                                                                                                                                                                                                                                                                                                                                                                                                                     if(_loc20_)
                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                        §§push(_loc19_);
                                                                                                                                                                                                                                                                                                                                                                                                                        if(_loc20_)
                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                           addr716:
                                                                                                                                                                                                                                                                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                           §§push(param1.§+$§().GetLinearVelocity().y);
                                                                                                                                                                                                                                                                                                                                                                                                                           if(!_loc21_)
                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                              §§push(§§pop() * _loc19_);
                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                        §§pop().§9§(new §§pop().b2Vec2(§§pop(),§§pop()));
                                                                                                                                                                                                                                                                                                                                                                                                                        addr726:
                                                                                                                                                                                                                                                                                                                                                                                                                        if(!_loc21_)
                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                           if(!(_loc21_ && this))
                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                              if(_loc20_)
                                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                                 addr626:
                                                                                                                                                                                                                                                                                                                                                                                                                                 §§push(_loc15_);
                                                                                                                                                                                                                                                                                                                                                                                                                                 if(!(_loc21_ && param2))
                                                                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                                                                    addr634:
                                                                                                                                                                                                                                                                                                                                                                                                                                    §§push(0);
                                                                                                                                                                                                                                                                                                                                                                                                                                    if(_loc20_ || this)
                                                                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                                                                       if(!(_loc21_ && param1))
                                                                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                                                                          if(_loc20_)
                                                                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                                                                             if(!(_loc21_ && param2))
                                                                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                                                                §§push(§§pop() <= §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                if(_loc20_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                                                                   if(_loc20_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                                                                      if(!_loc21_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                                                                         §§push(§§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                         if(!(_loc21_ && this))
                                                                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                                                                            if(§§pop())
                                                                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                                                                               addr683:
                                                                                                                                                                                                                                                                                                                                                                                                                                                               if(!(_loc21_ && param1))
                                                                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  if(!_loc21_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     if(!(_loc21_ && param2))
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        if(_loc20_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           §§push(_loc16_);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           if(!_loc21_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              if(_loc20_ || this)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 if(_loc20_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    if(!(_loc21_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       if(_loc20_ || param1)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          §§push(0);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          if(_loc20_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             if(!_loc21_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                §§push(§§pop() <= §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                if(!(_loc21_ && this))
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   if(!_loc20_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      §§goto(addr740);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   §§goto(addr620);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                §§goto(addr683);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr909);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr634);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr1079);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr906);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr909);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr940);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr626);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr774);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr726);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr975);
                                                                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                                                                               §§goto(addr793);
                                                                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                                                                            addr620:
                                                                                                                                                                                                                                                                                                                                                                                                                                                            return §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                                                                         §§goto(addr972);
                                                                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1089);
                                                                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                                                                   §§goto(addr793);
                                                                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                                                                §§goto(addr683);
                                                                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr1089);
                                                                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr1049);
                                                                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr968);
                                                                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr793);
                                                                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr1076);
                                                                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr1017);
                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr797);
                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr741);
                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr716);
                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr1017);
                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                               §§goto(addr948);
                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                            §§goto(addr771);
                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                         §§goto(addr767);
                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1084);
                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                   §§goto(addr917);
                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                §§goto(addr703);
                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr1081);
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr1060);
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr1082);
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr1007);
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr978);
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr740);
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr1080);
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                        _loc19_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr909);
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr1060);
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr940);
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               §§goto(addr1078);
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            §§goto(addr909);
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         §§goto(addr1072);
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1074);
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   §§goto(addr940);
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                §§goto(addr1077);
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             §§goto(addr860);
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          §§goto(addr1073);
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       §§goto(addr1075);
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    §§goto(addr872);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§goto(addr1083);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§goto(addr855);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§goto(addr1060);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§goto(addr838);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr906);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr626);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr1089);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr958);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr909);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr1079);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr795);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr1089);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr975);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr1049);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr1064);
                                                                                                                                                                                                                                                                                       addr1009:
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr1216);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr1003);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr997);
                                                                                                                                                                                                                                                                              addr1045:
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr1159);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr1092);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr979);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr1091);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr1089);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr1079);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr1298);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr1083);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr958);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             addr1157:
                                                                                                                                                                                                                                             §§goto(addr1158);
                                                                                                                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§push(§§pop() + " new health2 = ");
                                                                                                                                                                                                                                          if(_loc20_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             addr1156:
                                                                                                                                                                                                                                             §§goto(addr1157);
                                                                                                                                                                                                                                             §§push(_loc16_);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr1158);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1153);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1136);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr1156);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr1153);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1158);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1120);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1215);
                                                                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1209);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1210);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1215);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1201);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1193);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1190);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1215);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1170);
                                                                                                                                                                                       addr1295:
                                                                                                                                                                                       addr1296:
                                                                                                                                                                                    }
                                                                                                                                                                                    addr1287:
                                                                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                                                                    if(_loc20_ || param2)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr1295);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1297);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§push(_loc5_);
                                                                                                                                                                                 if(!(_loc21_ && param2))
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                                                                    if(_loc20_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr1287);
                                                                                                                                                                                       §§push(" Mat Vel Factor2 = ");
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1297);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1296);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1297);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1287);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1297);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1243);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1009);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1045);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1158);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr454);
                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                          }
                                                                                                                                          §§goto(addr454);
                                                                                                                                       }
                                                                                                                                       §§goto(addr446);
                                                                                                                                    }
                                                                                                                                    §§goto(addr454);
                                                                                                                                 }
                                                                                                                                 §§goto(addr407);
                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                              }
                                                                                                                              §§goto(addr393);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr385);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(param2.§=!P§());
                                                                                                                     if(!_loc20_)
                                                                                                                     {
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     if(!_loc21_)
                                                                                                                     {
                                                                                                                        continue loop2;
                                                                                                                     }
                                                                                                                     continue loop4;
                                                                                                                  }
                                                                                                                  §§goto(addr111);
                                                                                                               }
                                                                                                               §§goto(addr322);
                                                                                                            }
                                                                                                            §§goto(addr298);
                                                                                                         }
                                                                                                         addr111:
                                                                                                         if(_loc21_)
                                                                                                         {
                                                                                                            addr223:
                                                                                                            while(!(_loc20_ || param2))
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop());
                                                                                                                  addr277:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(§§pop())
                                                                                                                     {
                                                                                                                        continue loop9;
                                                                                                                     }
                                                                                                                     while(_loc20_ || _loc3_)
                                                                                                                     {
                                                                                                                        §§pop();
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(_loc20_)
                                                                                                                           {
                                                                                                                              §§push(param1.§'!e§());
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 continue loop8;
                                                                                                                                 §§goto(addr288);
                                                                                                                              }
                                                                                                                              addr288:
                                                                                                                              addr237:
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(param1.§3!i§());
                                                                                                                                 addr317:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§goto(addr318);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              addr315:
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr320);
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         continue loop25;
                                                                                                         return §§pop();
                                                                                                      }
                                                                                                      §§goto(addr57);
                                                                                                   }
                                                                                                   continue loop5;
                                                                                                   addr28:
                                                                                                }
                                                                                                §§goto(addr286);
                                                                                             }
                                                                                             §§goto(addr247);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr265);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr28);
                                                                              }
                                                                           }
                                                                           §§goto(addr291);
                                                                        }
                                                                        continue loop1;
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr321);
                                                            }
                                                         }
                                                         §§goto(addr28);
                                                      }
                                                      addr158:
                                                   }
                                                   §§goto(addr237);
                                                }
                                             }
                                             §§goto(addr324);
                                          }
                                          addr291:
                                          return §§pop();
                                       }
                                    }
                                    §§goto(addr158);
                                 }
                                 §§goto(addr319);
                              }
                              §§goto(addr277);
                           }
                        }
                     }
                     §§goto(addr317);
                  }
               }
               §§goto(addr315);
            }
         }
         §§goto(addr264);
      }
      
      public function §%Q§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§4!H§ = null;
         var _loc1_:* = int(this.§@!d§.length - 1);
         loop0:
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§@!d§[_loc1_] as §4!H§;
            if(!_loc4_)
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
                                 this.§+!W§(_loc1_,true,true,true);
                                 loop9:
                                 while(true)
                                 {
                                    if(_loc3_ || _loc2_)
                                    {
                                       loop7:
                                       while(true)
                                       {
                                          §§push(_loc1_);
                                          if(!_loc4_)
                                          {
                                             §§push(§§pop() - 1);
                                          }
                                          _loc1_ = §§pop();
                                          if(!(_loc3_ || _loc2_))
                                          {
                                             continue loop9;
                                          }
                                          if(!(_loc3_ || _loc1_))
                                          {
                                             continue loop8;
                                          }
                                          if(true)
                                          {
                                             break loop6;
                                          }
                                          while(true)
                                          {
                                             §§push(_loc2_.§'!e§());
                                             if(!_loc4_)
                                             {
                                                §§push(Boolean(§§pop()));
                                             }
                                             if(!_loc3_)
                                             {
                                                break;
                                             }
                                             if(_loc3_)
                                             {
                                                continue loop1;
                                             }
                                             continue loop2;
                                          }
                                          while(true)
                                          {
                                             §§pop();
                                             break loop7;
                                          }
                                          continue loop9;
                                       }
                                       addr38:
                                    }
                                    while(true)
                                    {
                                       §§goto(addr70);
                                    }
                                 }
                              }
                              addr99:
                           }
                           §§goto(addr38);
                        }
                        continue loop0;
                        addr97:
                     }
                     §§goto(addr119);
                  }
               }
            }
            §§goto(addr99);
         }
      }
      
      public function §5!"§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§4!H§ = null;
         var _loc1_:* = int(this.§@!d§.length - 1);
         loop0:
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§@!d§[_loc1_] as §4!H§;
            if(!_loc4_)
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
                        loop3:
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(!_loc4_)
                              {
                                 this.§+!W§(_loc1_,true,true,true);
                              }
                              loop4:
                              while(_loc3_ || _loc1_)
                              {
                                 while(true)
                                 {
                                    continue loop4;
                                 }
                              }
                              loop5:
                              while(true)
                              {
                                 addr63:
                                 while(true)
                                 {
                                    §§push(_loc2_.§=f§());
                                    if(_loc3_ || _loc3_)
                                    {
                                       if(!_loc3_)
                                       {
                                          break loop5;
                                       }
                                       continue loop1;
                                    }
                                    addr83:
                                    if(_loc3_)
                                    {
                                       continue loop3;
                                    }
                                    continue loop5;
                                 }
                              }
                              continue loop2;
                              addr105:
                              addr120:
                           }
                           while(true)
                           {
                              §§push(_loc1_);
                              if(!_loc4_)
                              {
                                 §§push(§§pop() - 1);
                              }
                              _loc1_ = §§pop();
                              if(!(_loc4_ && _loc1_))
                              {
                                 if(true)
                                 {
                                    break loop3;
                                 }
                                 §§goto(addr63);
                              }
                              else
                              {
                                 §§goto(addr105);
                              }
                           }
                        }
                        continue loop0;
                     }
                     §§goto(addr119);
                  }
               }
            }
            §§goto(addr112);
         }
      }
      
      public function §[w§() : int
      {
         return this.§@!d§.length;
      }
      
      public function §@m§(param1:§>4§) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc4_:§4!H§ = null;
         var _loc5_:§,F§ = null;
         var _loc6_:§-!`§ = null;
         var _loc7_:§@!;§ = null;
         var _loc2_:* = Number(0);
         while(true)
         {
            §§push(_loc2_);
            if(!(_loc8_ && this))
            {
               if(§§pop() >= this.§@!d§.length)
               {
                  §§push(Number(0));
                  break;
               }
               §§push((_loc4_ = this.§@!d§[_loc2_]).§#i§);
               if(_loc9_ || param1)
               {
                  if(!§§pop())
                  {
                     if(_loc8_ && _loc3_)
                     {
                        addr68:
                     }
                     addr146:
                     §§push(_loc2_);
                     if(_loc9_ || _loc3_)
                     {
                        §§push(§§pop() + 1);
                        if(_loc9_)
                        {
                           addr157:
                           §§push(Number(§§pop()));
                        }
                        _loc2_ = §§pop();
                        continue;
                     }
                     §§goto(addr157);
                  }
                  else
                  {
                     addr60:
                     if(_loc4_.isGround())
                     {
                        if(_loc8_ && param1)
                        {
                           continue;
                        }
                     }
                     else
                     {
                        (_loc5_ = new §,F§()).angle = _loc4_.§[!i§();
                        if(_loc9_)
                        {
                           _loc5_.id = _loc4_.§@!p§;
                           while(true)
                           {
                              _loc5_.x = _loc4_.§+$§().GetPosition().x;
                              loop2:
                              for(; _loc9_ || param1; if(_loc8_ && _loc3_)
                              {
                                 continue;
                              },if(false)
                              {
                                 §§goto(addr102);
                              },§§goto(addr146))
                              {
                                 _loc5_.y = _loc4_.§+$§().GetPosition().y;
                                 while(true)
                                 {
                                    addr102:
                                    while(true)
                                    {
                                       _loc5_.uniqueID = _loc4_.uniqueID;
                                       do
                                       {
                                          param1.addObject(_loc5_);
                                       }
                                       while(_loc8_);
                                       
                                       if(_loc8_ && _loc3_)
                                       {
                                          break;
                                       }
                                       continue loop2;
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr115);
                     }
                  }
                  §§goto(addr68);
               }
               §§goto(addr60);
            }
            break;
         }
         var _loc3_:* = §§pop();
         if(!(_loc8_ && this))
         {
            while(_loc3_ < this.§<?§.length)
            {
               _loc7_ = this.§<?§[_loc3_];
               _loc6_ = new §-!`§(_loc7_.type,_loc7_.index1,_loc7_.index2,_loc7_.point1,_loc7_.point2,_loc7_.§2!Q§,_loc7_.§]!L§,_loc7_.lowerLimit,_loc7_.upperLimit,_loc7_.§0w§,_loc7_.motorSpeed,_loc7_.§8!A§,_loc7_.maxTorque);
               if(!(_loc8_ && _loc2_))
               {
                  param1.§9!h§(_loc6_);
                  if(!(_loc9_ || _loc3_))
                  {
                     continue;
                  }
               }
               §§push(_loc3_);
               if(_loc9_)
               {
                  §§push(§§pop() + 1);
                  if(!(_loc8_ && this))
                  {
                     §§push(Number(§§pop()));
                  }
               }
               _loc3_ = §§pop();
            }
         }
      }
      
      public function §6W§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:int = 0;
         while(true)
         {
            if(this.§@!d§.length <= _loc1_)
            {
               if(_loc3_)
               {
                  if(!_loc2_)
                  {
                     break;
                  }
                  continue;
                  addr79:
               }
            }
            else if(this.§@!d§[_loc1_].isGround())
            {
               if(_loc3_ || _loc1_)
               {
                  _loc1_++;
               }
               §§goto(addr79);
            }
            else
            {
               this.§[Z§(this.§@!d§[_loc1_]);
            }
         }
      }
      
      public function §-!X§(param1:Point, param2:Point) : Array
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:Array = new Array();
         var _loc4_:* = Number(0);
         while(true)
         {
            §§push(_loc4_);
            if(_loc6_)
            {
               if(!(_loc5_ && _loc3_))
               {
                  if(§§pop() >= this.§@!d§.length)
                  {
                     if(_loc5_)
                     {
                        continue;
                     }
                     if(_loc6_ || this)
                     {
                        break;
                     }
                     addr110:
                  }
                  else if(this.§@!d§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
                  {
                     if(_loc6_)
                     {
                        _loc3_.push(this.§@!d§[_loc4_]);
                     }
                     §§goto(addr110);
                  }
                  §§push(_loc4_);
                  if(_loc6_ || this)
                  {
                     §§push(§§pop() + 1);
                  }
               }
               §§push(Number(§§pop()));
            }
            _loc4_ = §§pop();
         }
         return _loc3_;
      }
      
      public function setGroundTextureEnabled(param1:Boolean) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && this))
         {
            this.§?!e§ = param1;
            if(_loc4_ || param1)
            {
               addr34:
               this.§4!"§(param1);
            }
            var _loc2_:* = Number(0);
            while(true)
            {
               §§push(_loc2_);
               if(_loc4_)
               {
                  if(_loc4_)
                  {
                     if(_loc4_ || param1)
                     {
                        if(§§pop() >= this.§@!d§.length)
                        {
                           if(!(_loc4_ || _loc3_))
                           {
                              continue;
                           }
                           if(!(_loc3_ && param1))
                           {
                              if(!_loc3_)
                              {
                                 break;
                              }
                              addr111:
                              this.§@!d§[_loc2_].sprite.visible = !this.§?!e§;
                           }
                        }
                        else if(this.§@!d§[_loc2_].isTexture())
                        {
                           §§goto(addr111);
                        }
                        §§push(_loc2_);
                     }
                     §§push(§§pop() + 1);
                  }
                  §§push(Number(§§pop()));
               }
               _loc2_ = §§pop();
            }
            return;
         }
         §§goto(addr34);
      }
      
      public function setDamageEnabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§2!<§ = param1;
         }
      }
      
      public function §<!9§() : Boolean
      {
         return this.§2!<§;
      }
      
      public function § Q§() : int
      {
         return this.§2i§;
      }
      
      public function §+!Y§() : int
      {
         return this.§;!0§;
      }
      
      public function §8[§(param1:String) : §4!H§
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§4!H§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§@!d§.length)
         {
            _loc3_ = this.§@!d§[_loc2_] as §4!H§;
            if(!(_loc4_ && this))
            {
               if(_loc3_.uniqueID == param1)
               {
                  if(!(_loc4_ && _loc2_))
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
