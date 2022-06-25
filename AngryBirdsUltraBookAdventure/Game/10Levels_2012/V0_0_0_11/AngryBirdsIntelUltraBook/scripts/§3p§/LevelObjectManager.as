package §3p§
{
   import §"L§.LevelModel;
   import §%t§.b2PrismaticJoint;
   import §%t§.b2WeldJoint;
   import §&=§.§0'§;
   import §&=§.LevelParticleManager;
   import §&L§.b2Vec2;
   import §&V§.§+H§;
   import §&V§.§3V§;
   import §&V§.§>!G§;
   import §&V§.§`!1§;
   import §,!_§.§;K§;
   import §2!H§.§&!U§;
   import §2!H§.§1H§;
   import §2!H§.LevelMain;
   import §2!H§.ScoreCollector;
   import §6!7§.§-m§;
   import §6!7§.Sprite;
   import §6b§.Log;
   import §7i§.Texture;
   import §;T§.§5s§;
   import §;T§.LevelItemManager;
   import §;T§.LevelItemMaterial;
   import §;T§.LevelItemShape;
   import §;T§.LevelItemSoundResource;
   import §=?§.SoundEngine;
   import §[m§.LevelThemeBackgroundManager;
   import flash.display.BitmapData;
   import flash.display.BitmapDataChannel;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class LevelObjectManager
   {
       
      
      protected var §8c§:Vector.<LevelObject>;
      
      protected var §-!,§:int;
      
      public var §"!>§:LevelMain;
      
      public var §?h§:Vector.<§#!f§>;
      
      protected var §+E§:Sprite;
      
      protected var §!!@§:Sprite;
      
      private var §^x§:Sprite;
      
      private var §#J§:Sprite;
      
      private var §3!j§:Sprite;
      
      protected var §]!S§:Vector.<Texture>;
      
      protected var §=![§:Vector.<§>!G§>;
      
      protected var §6!@§:int = 1;
      
      public var mMightyEagleAdded:Boolean = false;
      
      public var mMightyEagleHasTouchedGround:Boolean = false;
      
      public var §?B§:Boolean = false;
      
      public var mSardineCanAdded:Boolean = false;
      
      public var mMightyEagleTimer:Number = 0;
      
      protected var §0m§:Boolean = false;
      
      protected var §?!C§:Number;
      
      protected var §=1§:int;
      
      protected var §1N§:Vector.<§`!1§>;
      
      protected var §6-§:int = 0;
      
      private var §+R§:int = 0;
      
      private var §<D§:int = 0;
      
      private var §7Y§:int;
      
      private var §-R§:Boolean = true;
      
      private var §"R§:Boolean = true;
      
      public function LevelObjectManager(param1:LevelMain, param2:LevelModel, param3:Sprite)
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         var _loc5_:§>!G§ = null;
         var _loc6_:§+H§ = null;
         var _loc7_:LevelObject = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:LevelObject = null;
         var _loc11_:LevelObject = null;
         if(!(_loc14_ && param3))
         {
            this.§8c§ = new Vector.<LevelObject>();
         }
         while(true)
         {
            this.§?h§ = new Vector.<§#!f§>();
            loop1:
            while(true)
            {
               this.§]!S§ = new Vector.<Texture>();
               addr326:
               while(true)
               {
                  this.§?!C§ = this.§&!U§.SARDINE_CAN_INITIAL_ROTATION_SPEED;
                  addr316:
                  while(true)
                  {
                     this.§1N§ = new Vector.<§`!1§>();
                     continue loop1;
                  }
               }
            }
         }
      }
      
      protected function get §&!U§() : Class
      {
         return §&!U§;
      }
      
      public function get §5!K§() : Sprite
      {
         return this.§3!j§;
      }
      
      public function get §3$§() : Sprite
      {
         return this.§!!@§;
      }
      
      public function dispose() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:Texture = null;
         loop0:
         while(true)
         {
            if(this.§8c§.length > 0)
            {
               this.§&U§(0);
               continue;
            }
            loop1:
            while(true)
            {
               this.§8c§ = null;
               if(!_loc3_)
               {
                  this.§1N§ = null;
                  loop2:
                  while(true)
                  {
                     if(!(_loc3_ && _loc3_))
                     {
                        §§push(this.§!!@§);
                        if(_loc2_ || this)
                        {
                           if(§§pop())
                           {
                              if(!_loc3_)
                              {
                                 if(_loc3_)
                                 {
                                    continue loop1;
                                 }
                                 §§push(this.§!!@§);
                              }
                              §§goto(addr172);
                           }
                           break;
                        }
                        §§pop().dispose();
                        while(true)
                        {
                           this.§!!@§ = null;
                           if(!(_loc3_ && _loc3_))
                           {
                              continue loop2;
                           }
                        }
                        continue;
                        addr105:
                     }
                     continue loop0;
                  }
                  addr167:
                  if(this.§]!S§.length > 0)
                  {
                     _loc1_ = this.§]!S§.pop();
                     if(!(_loc3_ && _loc1_))
                     {
                        this.§"!>§.textureManager.unregisterBitmapDataTexture(_loc1_);
                     }
                     §§goto(addr167);
                  }
               }
               addr172:
               return;
            }
         }
      }
      
      private function §[B§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§+E§.visible = param1;
         }
      }
      
      private function §75§() : void
      {
         var _loc16_:Boolean = true;
         var _loc17_:Boolean = false;
         var _loc3_:LevelObject = null;
         var _loc4_:Rectangle = null;
         var _loc5_:* = NaN;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:BitmapData = null;
         var _loc11_:BitmapData = null;
         var _loc12_:Texture = null;
         var _loc13_:§-m§ = null;
         var _loc1_:Rectangle = null;
         var _loc2_:Vector.<LevelObject> = new Vector.<LevelObject>();
         for each(_loc3_ in this.§8c§)
         {
            if(_loc16_)
            {
               if(_loc3_.isTexture())
               {
                  if(!_loc17_)
                  {
                     addr75:
                     _loc2_.push(_loc3_);
                  }
                  _loc4_ = _loc3_.sprite.getBounds(this.§!!@§);
                  if(!(_loc17_ && _loc2_))
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
            §§goto(addr75);
         }
         if(!_loc17_)
         {
            §§push(Boolean(_loc1_));
            loop1:
            for(; §§pop(); loop8:
            while(!(_loc17_ && _loc2_))
            {
               §§push(§§pop());
               if(!_loc17_)
               {
                  §§push(Boolean(§§pop()));
               }
               if(!§§pop())
               {
                  loop9:
                  while(true)
                  {
                     §§pop();
                     loop10:
                     while(true)
                     {
                        §§push(_loc1_.height > 2048);
                        if(_loc16_)
                        {
                           if(!_loc16_)
                           {
                              continue loop9;
                           }
                           §§push(Boolean(§§pop()));
                        }
                        if(_loc17_ && _loc3_)
                        {
                           break;
                        }
                        if(!_loc17_)
                        {
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 loop12:
                                 while(true)
                                 {
                                    if(!_loc17_)
                                    {
                                       if(_loc16_)
                                       {
                                          if(_loc16_)
                                          {
                                             §§push(int(_loc1_.width));
                                             loop13:
                                             while(true)
                                             {
                                                _loc6_ = §§pop();
                                                addr228:
                                                while(true)
                                                {
                                                   §§push(int(_loc1_.height));
                                                   addr178:
                                                   while(true)
                                                   {
                                                      _loc7_ = §§pop();
                                                      addr179:
                                                      while(_loc16_ || _loc1_)
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(int(_loc1_.left));
                                                            continue loop13;
                                                            addr146:
                                                            if(_loc17_)
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
                                                               this.§8!H§(_loc10_.rect,_loc10_,_loc5_);
                                                            }
                                                            _loc11_ = this.§47§(_loc2_,_loc6_,_loc7_,_loc8_,_loc9_,_loc5_);
                                                            if(!_loc17_)
                                                            {
                                                               _loc10_.copyChannel(_loc11_,_loc11_.rect,new Point(0,0),BitmapDataChannel.ALPHA,BitmapDataChannel.ALPHA);
                                                            }
                                                            _loc12_ = this.§"!>§.textureManager.getTextureFromBitmapData(_loc10_);
                                                            if(_loc16_ || _loc2_)
                                                            {
                                                               this.§]!S§.push(_loc12_);
                                                            }
                                                            _loc13_ = new §-m§(_loc12_);
                                                            if(_loc16_ || _loc2_)
                                                            {
                                                               _loc13_.x = _loc8_ / _loc5_;
                                                               _loc13_.y = _loc9_ / _loc5_;
                                                               addr445:
                                                               if(_loc16_)
                                                               {
                                                                  _loc13_.scaleX = 1 / _loc5_;
                                                                  _loc13_.scaleY = 1 / _loc5_;
                                                                  addr429:
                                                                  if(!_loc17_)
                                                                  {
                                                                     addr397:
                                                                     this.§+E§.addChild(_loc13_);
                                                                     if(_loc16_)
                                                                     {
                                                                        if(!(_loc17_ && _loc1_))
                                                                        {
                                                                           _loc11_.dispose();
                                                                           if(_loc16_)
                                                                           {
                                                                              if(false)
                                                                              {
                                                                                 §§goto(addr397);
                                                                              }
                                                                              break loop1;
                                                                           }
                                                                           §§goto(addr397);
                                                                        }
                                                                        §§goto(addr445);
                                                                     }
                                                                     §§goto(addr429);
                                                                  }
                                                                  addr438:
                                                                  §§goto(addr438);
                                                                  addr447:
                                                               }
                                                               addr453:
                                                               §§goto(addr453);
                                                            }
                                                            §§goto(addr447);
                                                         }
                                                         §§goto(addr311);
                                                      }
                                                      addr269:
                                                      if(!_loc16_)
                                                      {
                                                         _loc1_.bottom /= 2;
                                                         §§goto(addr269);
                                                         addr286:
                                                      }
                                                      if(_loc16_ || _loc1_)
                                                      {
                                                         §§push(_loc5_);
                                                         if(_loc16_)
                                                         {
                                                            if(_loc16_)
                                                            {
                                                               §§push(§§pop() / 2);
                                                               if(!_loc17_)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr310);
                                                            }
                                                         }
                                                         _loc5_ = §§pop();
                                                         break loop12;
                                                      }
                                                      §§goto(addr308);
                                                      §§goto(addr310);
                                                   }
                                                }
                                             }
                                          }
                                          else
                                          {
                                             _loc1_.right /= 2;
                                             addr294:
                                          }
                                          §§goto(addr286);
                                       }
                                       break;
                                    }
                                    continue loop10;
                                    if(_loc17_ && _loc3_)
                                    {
                                       continue;
                                    }
                                    if(!_loc17_)
                                    {
                                       §§push(int(_loc1_.top));
                                       if(!_loc17_)
                                       {
                                          if(_loc16_)
                                          {
                                             §§goto(addr129);
                                          }
                                          §§goto(addr178);
                                       }
                                       §§goto(addr154);
                                    }
                                    _loc1_.top /= 2;
                                    §§goto(addr294);
                                    addr304:
                                 }
                                 §§goto(addr261);
                              }
                              else
                              {
                                 _loc1_.left /= 2;
                              }
                              §§goto(addr304);
                           }
                           addr206:
                        }
                        §§goto(addr234);
                     }
                     continue loop8;
                  }
               }
               §§goto(addr206);
            })
            {
               while(true)
               {
                  §§push(1);
                  addr309:
                  while(true)
                  {
                     §§push(Number(§§pop()));
                     addr310:
                     while(true)
                     {
                        _loc5_ = §§pop();
                        addr311:
                        while(true)
                        {
                           loop6:
                           while(true)
                           {
                              §§push(_loc1_.width > 2048);
                              addr234:
                              addr261:
                              while(true)
                              {
                                 §§push(Boolean(§§pop()));
                                 continue loop1;
                              }
                              addr261:
                              while(true)
                              {
                                 continue loop6;
                              }
                           }
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr261);
      }
      
      private function §47§(param1:Vector.<LevelObject>, param2:int, param3:int, param4:int, param5:int, param6:Number) : BitmapData
      {
         var _loc16_:Boolean = true;
         var _loc17_:Boolean = false;
         var _loc7_:LevelObject = null;
         var _loc11_:LevelItemShape = null;
         var _loc12_:Array = null;
         var _loc13_:Rectangle = null;
         var _loc8_:BitmapData = new BitmapData(param2,param3,true,0);
         var _loc9_:BitmapData = new BitmapData(1,1,true,4294967295);
         var _loc10_:Matrix = new Matrix();
         loop0:
         for each(_loc7_ in param1)
         {
            _loc11_ = _loc7_.§8!&§.shape;
            _loc12_ = _loc11_.§%!S§();
            _loc13_ = new Rectangle(_loc12_[0].x / LevelMain.§8N§ * param6,_loc12_[0].y / LevelMain.§8N§ * param6,(_loc12_[1].x - _loc12_[0].x) / LevelMain.§8N§ * param6,(_loc12_[1].y - _loc12_[0].y) / LevelMain.§8N§ * param6);
            if(_loc16_)
            {
               _loc10_.identity();
               while(true)
               {
                  _loc10_.scale(_loc13_.width,_loc13_.height);
                  while(_loc16_ || param3)
                  {
                     _loc10_.translate(-_loc13_.width / 2,-_loc13_.height / 2);
                     loop3:
                     while(!_loc17_)
                     {
                        while(true)
                        {
                           _loc10_.rotate((360 - _loc7_.§=Y§()) / 180 * Math.PI);
                           loop5:
                           while(true)
                           {
                              loop6:
                              while(true)
                              {
                                 _loc10_.translate(_loc7_.sprite.x * param6 - param4,_loc7_.sprite.y * param6 - param5);
                                 while(!_loc17_)
                                 {
                                    _loc8_.draw(_loc9_,_loc10_);
                                    if(_loc16_)
                                    {
                                       if(_loc16_)
                                       {
                                          if(true)
                                          {
                                             break loop6;
                                          }
                                          continue loop6;
                                       }
                                       continue loop3;
                                    }
                                 }
                                 continue loop5;
                              }
                              continue loop0;
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr200);
         }
         if(!_loc17_)
         {
            _loc9_.dispose();
         }
         return _loc8_;
      }
      
      private function §8!H§(param1:Rectangle, param2:BitmapData, param3:Number) : void
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
         var _loc14_:int = 0;
         var _loc15_:int = 0;
         §§push(this.§"!>§.background.§ #§());
         if(!_loc16_)
         {
            §§push(§§pop());
         }
         var _loc4_:* = §§pop();
         var _loc5_:§;K§ = this.§"!>§.backgroundTextureManager.§]&§(_loc4_);
         if(_loc17_)
         {
            if(_loc5_)
            {
               addr59:
               _loc6_ = new BitmapData(_loc5_.bitmapData.width * param3,_loc5_.bitmapData.height * param3);
               _loc7_ = new Matrix();
               if(_loc17_)
               {
                  _loc7_.scale(param3,param3);
                  loop0:
                  while(true)
                  {
                     _loc6_.draw(_loc5_.bitmapData,_loc7_);
                     loop1:
                     while(true)
                     {
                        §§push(_loc6_.width - 2);
                        addr489:
                        while(true)
                        {
                           §§push(int(§§pop()));
                           addr490:
                           while(true)
                           {
                              _loc8_ = §§pop();
                              addr491:
                              while(true)
                              {
                                 §§push(_loc6_.height - 2);
                                 addr481:
                                 while(true)
                                 {
                                    §§push(int(§§pop()));
                                    addr482:
                                    while(true)
                                    {
                                       _loc9_ = §§pop();
                                    }
                                 }
                              }
                           }
                        }
                        loop25:
                        while(true)
                        {
                           if(!(_loc17_ || param1))
                           {
                              continue loop1;
                           }
                           §§push(_loc12_);
                           if(!_loc16_)
                           {
                              if(!_loc16_)
                              {
                                 if(_loc17_ || param1)
                                 {
                                    §§push(§§pop() - 1);
                                    loop26:
                                    while(true)
                                    {
                                       §§push(int(§§pop()));
                                       addr361:
                                       loop27:
                                       while(true)
                                       {
                                          if(!(_loc16_ && this))
                                          {
                                             addr368:
                                             if(_loc17_ || param2)
                                             {
                                                if(_loc17_)
                                                {
                                                   _loc12_ = §§pop();
                                                   loop28:
                                                   while(true)
                                                   {
                                                      loop29:
                                                      while(true)
                                                      {
                                                         §§push(param1.right / _loc8_);
                                                         if(!(_loc16_ && param3))
                                                         {
                                                            if(_loc16_)
                                                            {
                                                               break;
                                                            }
                                                            if(!_loc17_)
                                                            {
                                                               break loop25;
                                                            }
                                                            §§push(int(§§pop()));
                                                            loop30:
                                                            while(!_loc16_)
                                                            {
                                                               _loc13_ = §§pop();
                                                               while(true)
                                                               {
                                                                  §§push(_loc13_);
                                                                  loop32:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() + 1);
                                                                     loop33:
                                                                     while(_loc17_)
                                                                     {
                                                                        §§push(int(§§pop()));
                                                                        while(!(_loc16_ && param2))
                                                                        {
                                                                           _loc13_ = §§pop();
                                                                           continue loop25;
                                                                           if(_loc17_ || param3)
                                                                           {
                                                                              if(!(_loc16_ && param3))
                                                                              {
                                                                                 continue loop32;
                                                                              }
                                                                              continue loop33;
                                                                           }
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           _loc11_ = §§pop();
                                                                           loop17:
                                                                           while(true)
                                                                           {
                                                                              if(_loc17_ || param3)
                                                                              {
                                                                                 §§push(_loc11_);
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop() + 1);
                                                                                    loop19:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(int(§§pop()));
                                                                                       addr404:
                                                                                       while(true)
                                                                                       {
                                                                                          _loc11_ = §§pop();
                                                                                          addr405:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(param1.left / _loc8_);
                                                                                             addr384:
                                                                                             while(!_loc16_)
                                                                                             {
                                                                                                §§push(int(§§pop()));
                                                                                                while(!(_loc16_ && this))
                                                                                                {
                                                                                                   _loc12_ = §§pop();
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!_loc16_)
                                                                                                      {
                                                                                                         if(_loc16_)
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         if(param1.left < 0)
                                                                                                         {
                                                                                                            continue loop25;
                                                                                                         }
                                                                                                         continue loop29;
                                                                                                      }
                                                                                                      continue loop17;
                                                                                                   }
                                                                                                   §§goto(addr491);
                                                                                                   continue loop27;
                                                                                                }
                                                                                                continue loop19;
                                                                                             }
                                                                                             §§goto(addr481);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 addr402:
                                                                              }
                                                                              loop11:
                                                                              while(true)
                                                                              {
                                                                                 if(!_loc16_)
                                                                                 {
                                                                                    continue loop0;
                                                                                 }
                                                                                 addr475:
                                                                                 while(true)
                                                                                 {
                                                                                    if(param1.top < 0)
                                                                                    {
                                                                                       continue loop11;
                                                                                    }
                                                                                    addr406:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(param1.bottom / _loc9_);
                                                                                       break loop29;
                                                                                    }
                                                                                 }
                                                                              }
                                                                              continue loop1;
                                                                           }
                                                                           §§goto(addr287);
                                                                        }
                                                                        addr287:
                                                                     }
                                                                     continue loop30;
                                                                  }
                                                                  if(_loc17_ || param1)
                                                                  {
                                                                     continue loop28;
                                                                  }
                                                               }
                                                            }
                                                            continue loop26;
                                                         }
                                                         §§goto(addr384);
                                                      }
                                                      while(_loc17_)
                                                      {
                                                         §§goto(addr414);
                                                         §§push(int(§§pop()));
                                                      }
                                                      addr463:
                                                      while(true)
                                                      {
                                                         §§push(int(§§pop()));
                                                         addr464:
                                                         while(true)
                                                         {
                                                            _loc10_ = §§pop();
                                                            §§goto(addr475);
                                                         }
                                                      }
                                                   }
                                                }
                                                §§goto(addr482);
                                             }
                                             else
                                             {
                                                addr456:
                                                while(true)
                                                {
                                                   _loc10_ = §§pop();
                                                   break loop27;
                                                   §§goto(addr368);
                                                }
                                                addr456:
                                             }
                                          }
                                          §§goto(addr387);
                                       }
                                       while(true)
                                       {
                                          §§goto(addr406);
                                       }
                                    }
                                 }
                                 §§goto(addr490);
                              }
                              §§goto(addr402);
                           }
                           §§goto(addr361);
                        }
                        §§goto(addr489);
                     }
                  }
               }
               §§goto(addr483);
            }
            §§goto(addr506);
         }
         §§goto(addr59);
      }
      
      public function §@!&§(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : LevelObject
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc10_:LevelObject = null;
         var _loc11_:* = param2;
         if(_loc12_ || param3)
         {
            §§push("BIRD_BLACK");
            if(_loc12_)
            {
               §§push(_loc11_);
               if(_loc12_ || param2)
               {
                  if(§§pop() === §§pop())
                  {
                     if(_loc12_)
                     {
                        addr230:
                        §§push(0);
                        if(_loc13_ && param2)
                        {
                           addr284:
                        }
                     }
                     else
                     {
                        addr309:
                        §§push(3);
                        if(!(_loc12_ || this))
                        {
                           addr373:
                        }
                     }
                  }
                  else
                  {
                     §§push("BIRD_BLUE");
                     if(!_loc13_)
                     {
                        addr242:
                        §§push(_loc11_);
                        if(_loc12_ || this)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(!_loc13_)
                              {
                                 §§push(1);
                                 if(!(_loc13_ && param1))
                                 {
                                    §§goto(addr390);
                                 }
                                 else
                                 {
                                    §§goto(addr284);
                                 }
                              }
                              else
                              {
                                 addr379:
                                 §§push(6);
                                 if(!_loc13_)
                                 {
                                    addr382:
                                 }
                                 §§goto(addr390);
                              }
                              §§goto(addr390);
                           }
                           else
                           {
                              §§push("BIRD_GREEN");
                              if(!_loc13_)
                              {
                                 §§push(_loc11_);
                                 if(_loc12_)
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       if(_loc12_ || param1)
                                       {
                                          §§push(2);
                                          if(!(_loc13_ && param2))
                                          {
                                             §§goto(addr284);
                                          }
                                          else
                                          {
                                             addr340:
                                             §§goto(addr390);
                                          }
                                       }
                                       §§goto(addr390);
                                    }
                                    else
                                    {
                                       §§push("BIRD_WHITE");
                                       if(_loc12_ || param1)
                                       {
                                          §§push(_loc11_);
                                          if(_loc12_ || param1)
                                          {
                                             addr301:
                                             if(§§pop() === §§pop())
                                             {
                                                if(!(_loc13_ && param2))
                                                {
                                                   §§goto(addr309);
                                                }
                                                else
                                                {
                                                   §§goto(addr379);
                                                }
                                             }
                                             else
                                             {
                                                §§push("BIRD_YELLOW");
                                                if(!_loc13_)
                                                {
                                                   addr321:
                                                   §§push(_loc11_);
                                                   if(!(_loc13_ && param2))
                                                   {
                                                      addr329:
                                                      if(§§pop() === §§pop())
                                                      {
                                                         if(!_loc13_)
                                                         {
                                                            §§push(4);
                                                            if(!(_loc13_ && param3))
                                                            {
                                                               §§goto(addr340);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr373);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr379);
                                                         }
                                                         §§goto(addr390);
                                                      }
                                                      else
                                                      {
                                                         §§push("BIRD_RED");
                                                         if(_loc12_ || param1)
                                                         {
                                                            §§push(_loc11_);
                                                            if(_loc12_ || param3)
                                                            {
                                                               addr367:
                                                               if(§§pop() === §§pop())
                                                               {
                                                                  if(_loc12_)
                                                                  {
                                                                     §§push(5);
                                                                     if(!_loc13_)
                                                                     {
                                                                        §§goto(addr373);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr382);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     addr385:
                                                                     §§push(7);
                                                                     if(_loc13_)
                                                                     {
                                                                     }
                                                                     §§goto(addr390);
                                                                  }
                                                                  §§goto(addr390);
                                                               }
                                                               else
                                                               {
                                                                  addr375:
                                                                  §§push("BIRD_REDBIG");
                                                                  §§push(_loc11_);
                                                               }
                                                               §§goto(addr385);
                                                            }
                                                         }
                                                         §§goto(addr375);
                                                      }
                                                   }
                                                   if(§§pop() === §§pop())
                                                   {
                                                      if(!_loc13_)
                                                      {
                                                         §§goto(addr379);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr385);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      if(false)
                                                      {
                                                         §§goto(addr385);
                                                      }
                                                      else
                                                      {
                                                         addr390:
                                                         switch(§§pop())
                                                         {
                                                            case 0:
                                                               _loc10_ = new §3l§(this,param1,this.§"!>§.mLevelEngine.mWorld,this.§"!>§,this.§-!,§,param2,param3,param4,param5,param8,param9);
                                                               break;
                                                            case 1:
                                                               _loc10_ = new §9!Q§(this,param1,this.§"!>§.mLevelEngine.mWorld,this.§"!>§,this.§-!,§,param2,param3,param4,param5,param8,param9);
                                                               break;
                                                            case 2:
                                                               _loc10_ = new §>!5§(this,param1,this.§"!>§.mLevelEngine.mWorld,this.§"!>§,this.§-!,§,param2,param3,param4,param5,param8,param9);
                                                               break;
                                                            case 3:
                                                               _loc10_ = new §=&§(this,param1,this.§"!>§.mLevelEngine.mWorld,this.§"!>§,this.§-!,§,param2,param3,param4,param5,param8,param9);
                                                               break;
                                                            case 4:
                                                               _loc10_ = new §,O§(this,param1,this.§"!>§.mLevelEngine.mWorld,this.§"!>§,this.§-!,§,param2,param3,param4,param5,param8,param9);
                                                               break;
                                                            case 5:
                                                               _loc10_ = new §]!J§(this,param1,this.§"!>§.mLevelEngine.mWorld,this.§"!>§,this.§-!,§,param2,param3,param4,param5,param8,param9);
                                                               break;
                                                            case 6:
                                                               _loc10_ = new §6!Q§(this,param1,this.§"!>§.mLevelEngine.mWorld,this.§"!>§,this.§-!,§,param2,param3,param4,param5,param8,param9);
                                                               break;
                                                            default:
                                                               _loc10_ = new §4!G§(this,param1,this.§"!>§.mLevelEngine.mWorld,this.§"!>§,this.§-!,§,param2,param3,param4,param5,param8,param9);
                                                         }
                                                         return _loc10_;
                                                         §§push(7);
                                                      }
                                                      §§goto(addr390);
                                                   }
                                                   §§goto(addr385);
                                                }
                                                §§goto(addr375);
                                             }
                                             §§goto(addr390);
                                          }
                                          §§goto(addr329);
                                       }
                                       §§goto(addr321);
                                    }
                                 }
                                 §§goto(addr301);
                              }
                              §§goto(addr321);
                           }
                        }
                        §§goto(addr329);
                     }
                     §§goto(addr321);
                  }
                  §§goto(addr390);
               }
               §§goto(addr367);
            }
            §§goto(addr242);
         }
         §§goto(addr230);
      }
      
      public function hasBirds() : Boolean
      {
         return this.§6-§ > 0;
      }
      
      public function addObject(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : LevelObject
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         var _loc10_:Sprite = new Sprite();
         if(_loc14_ || param3)
         {
            _loc10_.scaleX = param8;
            if(!_loc15_)
            {
               addr32:
               _loc10_.scaleY = param8;
            }
            var _loc11_:LevelObject = this.createObject(_loc10_,param1,param2,param3,param4,param5,param6,param7,param8);
            if(!(_loc15_ && param3))
            {
               §§push(_loc11_.isTexture());
               loop0:
               while(true)
               {
                  if(§§pop())
                  {
                     if(!(_loc15_ && param3))
                     {
                        §§push(_loc10_);
                        §§push(this.§-R§);
                        if(_loc14_)
                        {
                           §§push(!§§pop());
                        }
                        §§pop().visible = §§pop();
                        if(_loc14_)
                        {
                           this.§8c§[this.§8c§.length] = _loc11_;
                           if(!(_loc15_ && param2))
                           {
                              addr102:
                              while(true)
                              {
                                 §§push(_loc11_ is §4!G§);
                                 addr107:
                                 addr371:
                                 while(true)
                                 {
                                    §§push(Boolean(§§pop()));
                                    if(_loc15_ && param3)
                                    {
                                       break;
                                    }
                                    continue loop0;
                                 }
                                 addr371:
                                 §§push(Boolean(§§pop()));
                                 §§push(Boolean(§§pop()));
                                 addr380:
                                 if(_loc14_ || param2)
                                 {
                                    addr379:
                                    §§push(Boolean(§§pop()));
                                 }
                                 if(!§§pop())
                                 {
                                    loop10:
                                    while(true)
                                    {
                                       §§pop();
                                       addr382:
                                       §§push(param9);
                                       if(!(_loc15_ && param1))
                                       {
                                          if(_loc14_ || this)
                                          {
                                             addr335:
                                             §§push(Boolean(§§pop()));
                                             while(true)
                                             {
                                                if(_loc14_ || param1)
                                                {
                                                   break loop10;
                                                }
                                                continue loop10;
                                             }
                                             addr335:
                                          }
                                          §§goto(addr371);
                                       }
                                       §§goto(addr335);
                                    }
                                 }
                                 if(§§pop())
                                 {
                                    addr354:
                                    this.§3!j§.addChild(_loc10_);
                                    loop3:
                                    while(true)
                                    {
                                       §§push(param5);
                                       loop4:
                                       while(_loc14_)
                                       {
                                          if(§§pop())
                                          {
                                             loop5:
                                             while(true)
                                             {
                                                if(!(_loc15_ && param1))
                                                {
                                                   addr296:
                                                   §§push(this.§"!>§);
                                                   while(true)
                                                   {
                                                      §§pop().§6Q§(_loc11_);
                                                      addr301:
                                                      while(true)
                                                      {
                                                         if(_loc15_ && this)
                                                         {
                                                            §§goto(addr382);
                                                         }
                                                         else
                                                         {
                                                            addr308:
                                                         }
                                                         §§goto(addr354);
                                                      }
                                                      addr270:
                                                      §§push(this.§"!>§);
                                                      if(_loc14_ || this)
                                                      {
                                                         §§pop().activeObject = _loc11_;
                                                         addr281:
                                                         if(_loc14_)
                                                         {
                                                            addr242:
                                                            return _loc11_;
                                                            addr283:
                                                         }
                                                         continue loop5;
                                                      }
                                                   }
                                                }
                                                addr317:
                                                while(true)
                                                {
                                                   continue loop3;
                                                }
                                             }
                                          }
                                          while(true)
                                          {
                                             §§push(param6);
                                             if(!(_loc15_ && param2))
                                             {
                                                addr256:
                                                if(§§pop())
                                                {
                                                   if(_loc14_ || param3)
                                                   {
                                                      if(!_loc15_)
                                                      {
                                                         if(_loc14_)
                                                         {
                                                            if(!_loc15_)
                                                            {
                                                               §§goto(addr270);
                                                            }
                                                            §§goto(addr354);
                                                         }
                                                         §§goto(addr359);
                                                      }
                                                      §§goto(addr301);
                                                   }
                                                   §§goto(addr281);
                                                }
                                                break;
                                             }
                                             continue loop4;
                                          }
                                          §§goto(addr242);
                                       }
                                       §§goto(addr335);
                                    }
                                    addr359:
                                    addr284:
                                 }
                                 this.§#J§.addChild(_loc10_);
                                 §§goto(addr317);
                              }
                              addr102:
                           }
                           §§goto(addr308);
                        }
                        §§goto(addr296);
                     }
                     §§goto(addr354);
                  }
                  else
                  {
                     this.§8c§[this.§8c§.length] = _loc11_;
                     if(_loc15_ && param1)
                     {
                        break;
                     }
                  }
                  §§goto(addr102);
               }
               §§goto(addr284);
            }
            §§goto(addr317);
         }
         §§goto(addr32);
      }
      
      public function §8!j§(param1:int, param2:LevelObject, param3:LevelObject) : §>!G§
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc6_:§>!G§ = null;
         var _loc4_:int = this.§8c§.indexOf(param2) - this.§7Y§;
         var _loc5_:int = this.§8c§.indexOf(param3) - this.§7Y§;
         if(!(_loc8_ && param1))
         {
            §§push(_loc4_);
            if(!(_loc8_ && this))
            {
               §§push(0);
               if(_loc7_)
               {
                  §§push(§§pop() >= §§pop());
                  if(_loc7_ || this)
                  {
                     §§push(Boolean(§§pop()));
                     if(!(_loc8_ && param2))
                     {
                        addr81:
                        §§push(§§pop());
                        if(!_loc8_)
                        {
                           §§push(Boolean(§§pop()));
                        }
                        if(§§pop())
                        {
                           if(!_loc8_)
                           {
                              §§pop();
                              if(_loc7_)
                              {
                                 addr93:
                                 addr92:
                                 §§push(_loc5_ >= 0);
                                 if(_loc7_ || param2)
                                 {
                                 }
                                 addr102:
                                 if(§§pop())
                                 {
                                    §§goto(addr103);
                                 }
                                 §§goto(addr166);
                              }
                              §§goto(addr103);
                           }
                           §§push(Boolean(§§pop()));
                        }
                     }
                     §§goto(addr102);
                  }
                  §§goto(addr81);
               }
               §§goto(addr93);
            }
            §§goto(addr92);
         }
         addr103:
         _loc6_ = new §>!G§(§3V§.§9`§,_loc4_,_loc5_,new Point(0,0),new Point(0,0));
         if(_loc7_)
         {
            _loc6_.§7#§ = this.§"!>§.mLevelEngine.mWorld.§"!"§(_loc6_.§0§(param2,param3));
            while(true)
            {
            }
            addr165:
         }
         else if(true)
         {
            addr166:
            return null;
         }
         while(true)
         {
            this.§=![§.push(_loc6_);
            if(!_loc8_)
            {
               break;
            }
            §§goto(addr165);
         }
         return _loc6_;
      }
      
      public function §]M§(param1:§>!G§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            §§push(param1.§7#§ is b2WeldJoint);
            if(_loc5_ || param1)
            {
               §§push(!§§pop());
            }
            if(§§pop())
            {
               if(_loc5_)
               {
                  §§goto(addr35);
               }
            }
            var _loc2_:LevelObject = this.§`T§(param1.index1 + this.§7Y§);
            var _loc3_:LevelObject = this.§`T§(param1.index2 + this.§7Y§);
            if(_loc5_ || _loc2_)
            {
               this.§"!>§.mLevelEngine.mWorld.§-!A§(param1.§7#§);
            }
            do
            {
               param1.§7#§ = this.§"!>§.mLevelEngine.mWorld.§"!"§(param1.§0§(_loc2_,_loc3_));
            }
            while(_loc4_);
            
            return;
         }
         addr35:
      }
      
      public function §9l§(param1:LevelObject) : Vector.<§>!G§>
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:§>!G§ = null;
         var _loc2_:Vector.<§>!G§> = new Vector.<§>!G§>();
         var _loc3_:int = this.§8c§.indexOf(param1) - this.§7Y§;
         if(_loc7_ || this)
         {
            §§push(_loc3_);
            if(!(_loc8_ && param1))
            {
               if(§§pop() >= 0)
               {
                  addr54:
                  addr53:
                  for each(_loc4_ in this.§=![§)
                  {
                     if(!_loc7_)
                     {
                        continue;
                     }
                     §§push(_loc4_.index1 == _loc3_);
                     if(_loc7_)
                     {
                        §§push(Boolean(§§pop()));
                        if(!(_loc8_ && param1))
                        {
                           §§push(§§pop());
                           if(!(_loc8_ && param1))
                           {
                              §§push(Boolean(§§pop()));
                           }
                           if(!§§pop())
                           {
                              if(_loc7_ || param1)
                              {
                                 addr109:
                                 §§pop();
                                 if(!(_loc8_ && _loc2_))
                                 {
                                    §§push(_loc4_.index2 == _loc3_);
                                    if(_loc7_ || this)
                                    {
                                       addr139:
                                       if(!§§pop())
                                       {
                                          continue;
                                       }
                                       if(!(_loc7_ || param1))
                                       {
                                          continue;
                                       }
                                    }
                                    §§goto(addr139);
                                 }
                                 _loc2_.push(_loc4_);
                                 continue;
                              }
                           }
                        }
                        §§goto(addr139);
                     }
                     §§goto(addr109);
                  }
               }
               return _loc2_;
            }
            §§goto(addr54);
         }
         §§goto(addr53);
      }
      
      public function §%V§() : Vector.<§>!G§>
      {
         return this.§=![§;
      }
      
      public function §2N§(param1:LevelObject) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:int = this.§8c§.indexOf(param1) - this.§7Y§;
         var _loc3_:* = int(this.§=![§.length - 1);
         loop0:
         while(true)
         {
            §§push(_loc3_);
            if(!(_loc5_ && _loc2_))
            {
               if(!_loc5_)
               {
                  if(!_loc5_)
                  {
                     if(§§pop() < 0)
                     {
                        if(!(_loc5_ && param1))
                        {
                           if(_loc4_ || this)
                           {
                              if(_loc4_)
                              {
                                 break;
                              }
                              loop1:
                              while(true)
                              {
                                 §§push(this.§=![§[_loc3_].index2 == _loc2_);
                                 if(!(_loc5_ && _loc3_))
                                 {
                                    §§push(Boolean(§§pop()));
                                 }
                                 if(!_loc5_)
                                 {
                                    if(!_loc4_)
                                    {
                                       while(true)
                                       {
                                          §§push(Boolean(§§pop()));
                                          if(_loc4_)
                                          {
                                             §§push(§§pop());
                                             if(!_loc5_)
                                             {
                                                §§push(Boolean(§§pop()));
                                             }
                                             if(§§pop())
                                             {
                                                break loop1;
                                             }
                                          }
                                          continue loop1;
                                       }
                                       addr138:
                                    }
                                    break;
                                 }
                              }
                              if(§§pop())
                              {
                                 addr122:
                                 this.§=![§.splice(_loc3_,1);
                                 while(true)
                                 {
                                 }
                                 addr128:
                              }
                              loop2:
                              while(true)
                              {
                                 §§push(_loc3_);
                                 addr79:
                                 while(true)
                                 {
                                    §§push(§§pop() - 1);
                                    addr80:
                                    while(true)
                                    {
                                       §§push(int(§§pop()));
                                       addr81:
                                       while(true)
                                       {
                                          _loc3_ = §§pop();
                                          addr82:
                                          while(!(_loc4_ || _loc3_))
                                          {
                                             continue loop2;
                                          }
                                          continue loop0;
                                       }
                                    }
                                 }
                              }
                           }
                           §§goto(addr122);
                        }
                        §§goto(addr82);
                     }
                     else
                     {
                        §§push(this.§=![§[_loc3_].index1 == _loc2_);
                     }
                     §§goto(addr138);
                  }
                  §§goto(addr79);
               }
               §§goto(addr80);
            }
            §§goto(addr81);
         }
      }
      
      public function §^Y§(param1:LevelObject, param2:LevelObject) : Boolean
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:int = this.§8c§.indexOf(param1) - this.§7Y§;
         var _loc4_:int = this.§8c§.indexOf(param2) - this.§7Y§;
         var _loc5_:* = int(this.§=![§.length - 1);
         loop0:
         while(true)
         {
            §§push(_loc5_);
            if(_loc7_)
            {
               if(§§pop() < 0)
               {
                  if(_loc7_ || param1)
                  {
                     if(!(_loc6_ && param1))
                     {
                        if(!(_loc6_ && param2))
                        {
                           §§push(false);
                           if(!(_loc6_ && param2))
                           {
                              break;
                           }
                           loop1:
                           while(true)
                           {
                              if(_loc7_)
                              {
                                 if(!(_loc6_ && _loc3_))
                                 {
                                    break;
                                 }
                                 loop2:
                                 while(true)
                                 {
                                    §§pop();
                                    loop3:
                                    while(true)
                                    {
                                       §§push(this.§=![§[_loc5_].index1 == _loc4_);
                                       if(!(_loc6_ && _loc3_))
                                       {
                                          addr184:
                                          §§push(Boolean(§§pop()));
                                          if(_loc6_ && param1)
                                          {
                                          }
                                          while(true)
                                          {
                                             if(!_loc6_)
                                             {
                                                §§pop();
                                                loop13:
                                                while(true)
                                                {
                                                   §§push(this.§=![§[_loc5_].index2 == _loc3_);
                                                   if(!_loc7_)
                                                   {
                                                      break;
                                                   }
                                                   if(!_loc6_)
                                                   {
                                                      if(_loc7_)
                                                      {
                                                         addr117:
                                                         §§push(Boolean(§§pop()));
                                                         if(_loc6_ && this)
                                                         {
                                                            break;
                                                         }
                                                      }
                                                      else
                                                      {
                                                         loop9:
                                                         while(true)
                                                         {
                                                            §§pop();
                                                            addr236:
                                                            while(true)
                                                            {
                                                               §§push(this.§=![§[_loc5_].index2 == _loc4_);
                                                               addr196:
                                                               while(true)
                                                               {
                                                                  if(_loc7_)
                                                                  {
                                                                     §§push(Boolean(§§pop()));
                                                                  }
                                                                  else
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop());
                                                                        addr233:
                                                                        loop7:
                                                                        while(true)
                                                                        {
                                                                           §§push(Boolean(§§pop()));
                                                                           addr234:
                                                                           while(true)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 continue loop9;
                                                                              }
                                                                              continue loop7;
                                                                           }
                                                                        }
                                                                     }
                                                                     addr232:
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     addr210:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop());
                                                                        addr211:
                                                                        loop4:
                                                                        while(true)
                                                                        {
                                                                           §§push(Boolean(§§pop()));
                                                                           addr212:
                                                                           while(§§pop())
                                                                           {
                                                                              continue loop4;
                                                                           }
                                                                           continue loop2;
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                      loop6:
                                                      while(true)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(!_loc6_)
                                                            {
                                                               §§push(true);
                                                               break loop13;
                                                            }
                                                            addr140:
                                                            while(true)
                                                            {
                                                               if(_loc7_)
                                                               {
                                                                  break loop6;
                                                               }
                                                               continue loop13;
                                                            }
                                                         }
                                                         break;
                                                         §§goto(addr117);
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(_loc5_);
                                                         if(!_loc6_)
                                                         {
                                                            §§push(§§pop() - 1);
                                                            if(_loc7_)
                                                            {
                                                               addr89:
                                                               §§push(int(§§pop()));
                                                               while(true)
                                                               {
                                                                  _loc5_ = §§pop();
                                                                  addr90:
                                                                  while(!_loc7_)
                                                                  {
                                                                     continue loop3;
                                                                  }
                                                                  continue loop0;
                                                               }
                                                               addr89:
                                                            }
                                                         }
                                                         §§goto(addr89);
                                                      }
                                                      addr125:
                                                   }
                                                   §§goto(addr210);
                                                }
                                                continue loop1;
                                             }
                                             §§goto(addr196);
                                          }
                                          addr184:
                                       }
                                       §§push(§§pop());
                                       if(!_loc6_)
                                       {
                                          if(!_loc6_)
                                          {
                                             if(!_loc6_)
                                             {
                                                addr174:
                                                §§push(Boolean(§§pop()));
                                                if(_loc7_ || param2)
                                                {
                                                   if(!_loc6_)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         §§goto(addr184);
                                                      }
                                                      §§goto(addr125);
                                                   }
                                                   §§goto(addr233);
                                                }
                                                §§goto(addr234);
                                             }
                                             §§goto(addr211);
                                          }
                                          §§goto(addr212);
                                       }
                                       §§goto(addr174);
                                    }
                                 }
                              }
                              §§goto(addr184);
                           }
                           return §§pop();
                        }
                        §§goto(addr236);
                     }
                     §§goto(addr140);
                  }
                  §§goto(addr90);
               }
               else
               {
                  §§push(this.§=![§[_loc5_].index1 == _loc3_);
                  if(_loc7_ || param1)
                  {
                     §§push(Boolean(§§pop()));
                  }
               }
               §§goto(addr232);
            }
            §§goto(addr89);
         }
         return §§pop();
      }
      
      protected function createObject(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : LevelObject
      {
         var _loc15_:Boolean = false;
         var _loc16_:Boolean = true;
         var _loc10_:LevelObject = null;
         var _loc11_:§5s§ = null;
         var _loc12_:§5s§ = null;
         if(!(_loc15_ && param1))
         {
            §§push(param2);
            if(_loc16_ || param1)
            {
               §§push("BIRD");
               if(!(_loc15_ && param2))
               {
                  if(§§pop().indexOf(§§pop()) == 0)
                  {
                     if(!_loc15_)
                     {
                        _loc10_ = this.§@!&§(param1,param2,param3,param4,param5,param6,param7,param8,param9);
                        if(_loc16_ || this)
                        {
                           var _loc13_:*;
                           §§push((_loc13_ = this).§<D§);
                           if(!(_loc15_ && param1))
                           {
                              §§push(§§pop() + 1);
                           }
                           var _loc14_:* = §§pop();
                           if(_loc16_)
                           {
                              _loc13_.§<D§ = _loc14_;
                           }
                        }
                     }
                     else
                     {
                        addr100:
                        §§push(LevelItemManager.§&!i§(param2));
                        if(!_loc15_)
                        {
                           _loc11_ = §§pop();
                           _loc10_ = new §]x§(this,param1,this.§"!>§.mLevelEngine.mWorld,this.§"!>§,this.§-!,§,param2,param3,param4,param5,param9,_loc11_.particleJSONId,_loc11_.particleVariationCount);
                        }
                        else
                        {
                           addr136:
                           _loc12_ = §§pop();
                           if(!(_loc15_ && param2))
                           {
                              §§push(_loc12_ == null);
                              if(_loc16_ || param2)
                              {
                                 §§push(Boolean(§§pop()));
                                 if(_loc16_ || param2)
                                 {
                                    §§push(§§pop());
                                    if(!(_loc15_ && param3))
                                    {
                                       §§push(Boolean(§§pop()));
                                       if(!_loc15_)
                                       {
                                          if(§§pop())
                                          {
                                             if(_loc16_ || param1)
                                             {
                                                §§pop();
                                                if(!(_loc15_ && param1))
                                                {
                                                   §§push(param2);
                                                   if(!(_loc15_ && this))
                                                   {
                                                      §§push(§§pop().indexOf("MISC_") == 0);
                                                      if(!_loc15_)
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                         if(_loc16_ || param2)
                                                         {
                                                            addr222:
                                                            if(§§pop())
                                                            {
                                                               if(!_loc15_)
                                                               {
                                                                  addr233:
                                                                  §§push("MISC_FOOD_");
                                                                  if(_loc16_)
                                                                  {
                                                                     §§push(§§pop() + param2.substring(5));
                                                                  }
                                                                  param2 = §§pop();
                                                                  if(_loc16_ || param3)
                                                                  {
                                                                  }
                                                                  _loc10_ = new §0w§(this,param1,this.§"!>§.mLevelEngine.mWorld,this.§"!>§,this.§-!,§,param2,param3,param4,param5,param9,_loc12_.front,_loc12_.particleJSONId,_loc12_.particleVariationCount);
                                                                  addr359:
                                                                  return _loc10_;
                                                                  addr302:
                                                               }
                                                               _loc12_ = LevelItemManager.§&!i§(param2);
                                                            }
                                                            §§push(_loc12_.§17§);
                                                            if(_loc16_)
                                                            {
                                                               §§push(§5s§.§"!W§);
                                                               if(_loc16_ || this)
                                                               {
                                                                  §§push(§§pop() == §§pop());
                                                                  if(_loc16_)
                                                                  {
                                                                     addr264:
                                                                     §§push(Boolean(§§pop()));
                                                                     if(_loc16_ || this)
                                                                     {
                                                                        §§push(§§pop());
                                                                        if(_loc16_)
                                                                        {
                                                                           addr276:
                                                                           if(!§§pop())
                                                                           {
                                                                              if(_loc16_ || param3)
                                                                              {
                                                                                 addr284:
                                                                                 §§pop();
                                                                                 if(_loc16_ || param1)
                                                                                 {
                                                                                    addr297:
                                                                                    §§push(_loc12_.§17§ == §5s§.§'!W§);
                                                                                    if(_loc16_)
                                                                                    {
                                                                                       addr300:
                                                                                       §§push(Boolean(§§pop()));
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr302);
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr276);
                                                                     }
                                                                     if(§§pop())
                                                                     {
                                                                        §§goto(addr302);
                                                                     }
                                                                     else
                                                                     {
                                                                        _loc10_ = new LevelObject(this,param1,this.§"!>§.mLevelEngine.mWorld,this.§"!>§,this.§-!,§,param2,param3,param4,param5,param9,_loc12_.front);
                                                                        §§goto(addr359);
                                                                     }
                                                                  }
                                                                  §§goto(addr300);
                                                               }
                                                            }
                                                            §§goto(addr297);
                                                         }
                                                      }
                                                      §§goto(addr300);
                                                   }
                                                }
                                                §§goto(addr233);
                                             }
                                             §§goto(addr264);
                                          }
                                          §§goto(addr222);
                                       }
                                    }
                                    §§goto(addr276);
                                 }
                                 §§goto(addr284);
                              }
                              §§goto(addr264);
                           }
                           §§goto(addr233);
                        }
                     }
                     §§goto(addr233);
                  }
                  else
                  {
                     addr96:
                     §§push(param2);
                     §§push("PIG");
                  }
                  §§goto(addr100);
               }
               if(§§pop().indexOf(§§pop()) == 0)
               {
                  §§goto(addr100);
               }
               else
               {
                  §§push(LevelItemManager.§&!i§(param2));
               }
               §§goto(addr136);
            }
            §§goto(addr96);
         }
         §§goto(addr100);
      }
      
      public function §2F§(param1:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:LevelObject = null;
         var _loc2_:* = int(this.§8c§.length - 1);
         loop0:
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§8c§[_loc2_] as LevelObject;
            if(_loc4_)
            {
               if(_loc3_)
               {
                  loop1:
                  while(true)
                  {
                     if(_loc3_.§0o§ > 0)
                     {
                        _loc3_.§!!E§();
                        loop2:
                        while(true)
                        {
                           if(_loc4_)
                           {
                              while(true)
                              {
                                 _loc3_.§[!`§();
                                 while(true)
                                 {
                                    addr40:
                                    while(true)
                                    {
                                       §§push(_loc2_);
                                       if(!(_loc5_ && _loc2_))
                                       {
                                          §§push(§§pop() - 1);
                                          if(_loc4_)
                                          {
                                             §§push(int(§§pop()));
                                          }
                                       }
                                       _loc2_ = §§pop();
                                       if(_loc5_)
                                       {
                                          continue;
                                       }
                                       if(!_loc4_)
                                       {
                                          continue loop2;
                                       }
                                       if(!_loc5_)
                                       {
                                          continue loop1;
                                       }
                                    }
                                    continue loop0;
                                 }
                              }
                              addr79:
                           }
                           else
                           {
                              addr110:
                              while(true)
                              {
                                 this.§&U§(_loc2_,true,true,true);
                              }
                              addr110:
                           }
                           while(true)
                           {
                           }
                        }
                     }
                     §§goto(addr110);
                  }
               }
               §§goto(addr40);
            }
            §§goto(addr110);
         }
         if(!(_loc5_ && param1))
         {
            this.§8!A§(param1);
         }
      }
      
      protected function §8!A§(param1:Number) : void
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc3_:§>!G§ = null;
         var _loc4_:§`!1§ = null;
         var _loc5_:* = 0;
         var _loc6_:LevelObject = null;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc2_:int = this.§1N§.length - 1;
         while(true)
         {
            §§push(_loc2_);
            if(!_loc12_)
            {
               if(§§pop() < 0)
               {
                  §§goto(addr506);
               }
               _loc4_ = this.§1N§[_loc2_];
               if(!_loc12_)
               {
                  if(_loc4_.§`r§)
                  {
                     if(!_loc11_)
                     {
                        continue;
                     }
                     §§push(_loc4_.update(param1));
                     if(_loc11_ || _loc2_)
                     {
                        §§push(int(§§pop()));
                        if(!_loc12_)
                        {
                           _loc5_ = §§pop();
                           if(!_loc11_)
                           {
                              continue;
                           }
                           addr69:
                           §§push(_loc5_);
                           if(!_loc12_)
                           {
                              if(§§pop() != -1)
                              {
                                 if(_loc12_)
                                 {
                                    continue;
                                 }
                                 §§push(this);
                                 §§push("block_");
                                 if(_loc11_)
                                 {
                                    §§push(§§pop() + _loc5_);
                                 }
                                 _loc6_ = §§pop().§2z§(§§pop());
                                 if(_loc11_)
                                 {
                                    if(_loc6_)
                                    {
                                       if(!_loc12_)
                                       {
                                          this.§"!A§(_loc6_,true,true,true);
                                          if(_loc11_ || _loc3_)
                                          {
                                          }
                                          addr112:
                                          §§push(_loc2_);
                                          if(!_loc12_)
                                          {
                                             addr115:
                                             §§push(§§pop() - 1);
                                             if(_loc11_)
                                             {
                                                addr119:
                                                _loc2_ = §§pop();
                                                continue;
                                             }
                                          }
                                          §§goto(addr119);
                                       }
                                    }
                                 }
                                 this.§1N§.splice(_loc2_,1);
                              }
                              §§goto(addr112);
                           }
                           §§goto(addr119);
                        }
                        §§goto(addr115);
                     }
                     §§goto(addr119);
                  }
                  §§goto(addr112);
               }
               §§goto(addr69);
            }
            break;
         }
         var _loc9_:* = §§pop();
         if(!_loc12_)
         {
            loop1:
            for each(_loc3_ in this.§=![§)
            {
               if(!(_loc12_ && param1))
               {
                  §§push(_loc3_.type == §3V§.§]C§);
                  loop2:
                  while(true)
                  {
                     §§push(Boolean(§§pop()));
                     while(true)
                     {
                        §§push(§§pop());
                        loop4:
                        while(true)
                        {
                           §§push(Boolean(§§pop()));
                           loop5:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 while(true)
                                 {
                                    §§pop();
                                    addr501:
                                    while(true)
                                    {
                                       §§push(Boolean(_loc3_.§=!h§));
                                    }
                                 }
                                 addr500:
                              }
                              while(true)
                              {
                                 loop8:
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       continue loop1;
                                    }
                                    loop9:
                                    while(true)
                                    {
                                       §§push(_loc3_.§7#§);
                                       loop10:
                                       while(true)
                                       {
                                          §§push((§§pop() as b2PrismaticJoint).§02§());
                                          while(true)
                                          {
                                             §§push(Number(§§pop()));
                                             loop12:
                                             while(true)
                                             {
                                                _loc7_ = §§pop();
                                                loop13:
                                                while(true)
                                                {
                                                   §§push(_loc3_.§7#§);
                                                   loop14:
                                                   while(true)
                                                   {
                                                      §§push((§§pop() as b2PrismaticJoint).§?!&§());
                                                      if(_loc11_ || this)
                                                      {
                                                         §§push(Number(§§pop()));
                                                      }
                                                      loop15:
                                                      while(true)
                                                      {
                                                         _loc8_ = §§pop();
                                                         loop16:
                                                         while(true)
                                                         {
                                                            §§push(Boolean(_loc3_.§in §));
                                                            loop17:
                                                            while(true)
                                                            {
                                                               §§push(§§pop());
                                                               loop18:
                                                               while(true)
                                                               {
                                                                  §§push(Boolean(§§pop()));
                                                                  loop19:
                                                                  while(true)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§pop();
                                                                           addr440:
                                                                           while(!(_loc12_ && this))
                                                                           {
                                                                              §§push(Boolean(_loc3_.§3-§));
                                                                              while(_loc11_ || param1)
                                                                              {
                                                                              }
                                                                              continue loop8;
                                                                           }
                                                                           §§goto(addr501);
                                                                        }
                                                                        addr439:
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop());
                                                                        addr412:
                                                                        while(_loc11_ || param1)
                                                                        {
                                                                           §§push(Boolean(§§pop()));
                                                                           loop25:
                                                                           while(!_loc12_)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 loop26:
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop();
                                                                                    loop27:
                                                                                    while(_loc11_ || _loc3_)
                                                                                    {
                                                                                       §§push(_loc8_);
                                                                                       loop28:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(0);
                                                                                          loop29:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop() > §§pop());
                                                                                             if(_loc11_)
                                                                                             {
                                                                                                if(_loc11_)
                                                                                                {
                                                                                                   §§push(Boolean(§§pop()));
                                                                                                   if(!(_loc12_ && _loc2_))
                                                                                                   {
                                                                                                      addr369:
                                                                                                      §§push(§§pop());
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc12_)
                                                                                                         {
                                                                                                            continue loop5;
                                                                                                         }
                                                                                                         §§push(Boolean(§§pop()));
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               addr374:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(_loc11_ || _loc2_)
                                                                                                                  {
                                                                                                                     if(!(_loc11_ || _loc3_))
                                                                                                                     {
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     continue loop2;
                                                                                                                  }
                                                                                                                  §§goto(addr439);
                                                                                                               }
                                                                                                               §§goto(addr500);
                                                                                                               addr374:
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  addr337:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop());
                                                                                                                     addr338:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(Boolean(§§pop()));
                                                                                                                        addr339:
                                                                                                                        while(_loc11_)
                                                                                                                        {
                                                                                                                           if(!_loc11_)
                                                                                                                           {
                                                                                                                              continue loop4;
                                                                                                                           }
                                                                                                                           if(§§pop())
                                                                                                                           {
                                                                                                                              addr208:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(!§§pop())
                                                                                                                                 {
                                                                                                                                    continue loop1;
                                                                                                                                 }
                                                                                                                                 if(_loc11_ || param1)
                                                                                                                                 {
                                                                                                                                    §§push(_loc3_.§7#§);
                                                                                                                                    if(!_loc11_)
                                                                                                                                    {
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    if(!_loc11_)
                                                                                                                                    {
                                                                                                                                       continue loop10;
                                                                                                                                    }
                                                                                                                                    §§push(§§pop() as b2PrismaticJoint);
                                                                                                                                    §§push(_loc8_);
                                                                                                                                    if(!_loc12_)
                                                                                                                                    {
                                                                                                                                       §§push(-§§pop());
                                                                                                                                    }
                                                                                                                                    §§pop().§+!e§(§§pop());
                                                                                                                                 }
                                                                                                                                 addr232:
                                                                                                                                 if(!(_loc11_ || _loc2_))
                                                                                                                                 {
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(!_loc11_)
                                                                                                                                       {
                                                                                                                                          addr345:
                                                                                                                                          while(!(_loc12_ && _loc2_))
                                                                                                                                          {
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(_loc8_);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          while(!_loc12_)
                                                                                                                                          {
                                                                                                                                             §§push(_loc7_);
                                                                                                                                             continue loop28;
                                                                                                                                             §§goto(addr345);
                                                                                                                                          }
                                                                                                                                          addr345:
                                                                                                                                          continue loop13;
                                                                                                                                          addr396:
                                                                                                                                       }
                                                                                                                                       if(!_loc11_)
                                                                                                                                       {
                                                                                                                                          continue loop27;
                                                                                                                                       }
                                                                                                                                       if(!(_loc12_ && _loc3_))
                                                                                                                                       {
                                                                                                                                          if(_loc12_)
                                                                                                                                          {
                                                                                                                                             continue loop16;
                                                                                                                                          }
                                                                                                                                          §§push(_loc7_);
                                                                                                                                          if(!_loc12_)
                                                                                                                                          {
                                                                                                                                             addr154:
                                                                                                                                             if(_loc11_ || this)
                                                                                                                                             {
                                                                                                                                                continue loop15;
                                                                                                                                             }
                                                                                                                                             continue loop28;
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          §§goto(addr440);
                                                                                                                                       }
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(0);
                                                                                                                                          if(!(_loc11_ || _loc2_))
                                                                                                                                          {
                                                                                                                                             break;
                                                                                                                                          }
                                                                                                                                          §§push(§§pop() < §§pop());
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(Boolean(§§pop()));
                                                                                                                                             continue loop17;
                                                                                                                                             addr182:
                                                                                                                                             if(!(_loc11_ || _loc2_))
                                                                                                                                             {
                                                                                                                                                continue;
                                                                                                                                             }
                                                                                                                                             §§goto(addr189);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       continue loop29;
                                                                                                                                       §§goto(addr232);
                                                                                                                                    }
                                                                                                                                    continue loop12;
                                                                                                                                    addr307:
                                                                                                                                 }
                                                                                                                                 if(true)
                                                                                                                                 {
                                                                                                                                    continue loop1;
                                                                                                                                 }
                                                                                                                                 §§goto(addr251);
                                                                                                                              }
                                                                                                                              continue loop14;
                                                                                                                              addr208:
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§pop();
                                                                                                                              addr189:
                                                                                                                              if(!(_loc12_ && param1))
                                                                                                                              {
                                                                                                                                 continue loop26;
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr345);
                                                                                                                        }
                                                                                                                        continue loop25;
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               addr336:
                                                                                                            }
                                                                                                            §§goto(addr440);
                                                                                                         }
                                                                                                      }
                                                                                                      addr370:
                                                                                                   }
                                                                                                   §§goto(addr374);
                                                                                                }
                                                                                                break;
                                                                                             }
                                                                                             §§goto(addr369);
                                                                                          }
                                                                                          §§goto(addr403);
                                                                                       }
                                                                                    }
                                                                                    continue loop9;
                                                                                 }
                                                                              }
                                                                              §§goto(addr208);
                                                                           }
                                                                           continue loop18;
                                                                        }
                                                                        continue loop19;
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
                        }
                     }
                  }
               }
               §§goto(addr501);
            }
         }
         addr506:
         if(_loc11_)
         {
            break loop0;
         }
      }
      
      public function addExplosions(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            this.§?h§.push(§#!f§.createExplosion(param1,param2,param3));
         }
         do
         {
            SoundEngine.§9!X§("TntExplosions","ChannelExplosions");
         }
         while(!(_loc5_ || param3));
         
      }
      
      public function § !f§(param1:Number, param2:Number) : int
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:LevelObject = null;
         var _loc3_:* = int(this.§8c§.length - 1);
         while(true)
         {
            §§push(_loc3_);
            if(!(_loc5_ && this))
            {
               if(§§pop() < 0)
               {
                  break;
               }
               _loc4_ = this.§8c§[_loc3_];
               if(_loc5_ && this)
               {
                  continue;
               }
               §§push(Boolean(_loc4_));
               if(!_loc5_)
               {
                  if(§§pop())
                  {
                     if(_loc6_ || _loc3_)
                     {
                        addr68:
                        if(_loc4_.isInCoordinates(param1,param2))
                        {
                           if(!(_loc5_ && _loc3_))
                           {
                              addr76:
                              §§push(_loc3_);
                              if(_loc6_ || param2)
                              {
                                 return §§pop();
                              }
                              addr103:
                              §§push(int(§§pop()));
                           }
                           else
                           {
                              addr97:
                              §§push(_loc3_);
                              if(!_loc5_)
                              {
                                 §§push(§§pop() - 1);
                                 if(_loc6_)
                                 {
                                    §§goto(addr103);
                                 }
                              }
                           }
                           _loc3_ = §§pop();
                           continue;
                        }
                        §§goto(addr97);
                     }
                     §§goto(addr76);
                  }
                  §§goto(addr97);
               }
               §§goto(addr68);
            }
            break;
         }
         return §§pop();
      }
      
      public function §;C§(param1:Number, param2:Number) : LevelObject
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:LevelObject = null;
         var _loc3_:* = int(this.§8c§.length - 1);
         while(_loc3_ >= 0)
         {
            _loc4_ = this.§8c§[_loc3_];
            if(_loc5_ || param2)
            {
               §§push(Boolean(_loc4_));
               if(!_loc6_)
               {
                  if(§§pop())
                  {
                     if(!_loc5_)
                     {
                        continue;
                     }
                     §§push(_loc4_.isInCoordinates(param1,param2));
                  }
                  addr89:
                  §§push(_loc3_);
                  if(_loc5_ || param2)
                  {
                     §§push(§§pop() - 1);
                     if(_loc5_)
                     {
                        addr100:
                        §§push(int(§§pop()));
                     }
                     _loc3_ = §§pop();
                     continue;
                  }
                  §§goto(addr100);
               }
               if(§§pop())
               {
                  if(!(_loc6_ && _loc3_))
                  {
                     return _loc4_;
                  }
               }
            }
            §§goto(addr89);
         }
         return null;
      }
      
      public function §`T§(param1:int) : LevelObject
      {
         return this.§8c§[param1];
      }
      
      public function §8?§(param1:Number, param2:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:LevelObject = null;
         var _loc3_:* = int(this.§8c§.length - 1);
         while(_loc3_ >= 0)
         {
            _loc4_ = this.§8c§[_loc3_] as LevelObject;
            if(!(_loc5_ && this))
            {
               _loc4_.§8?§(param2,param1);
               if(_loc5_)
               {
                  continue;
               }
            }
            §§push(_loc3_);
            if(!_loc5_)
            {
               §§push(§§pop() - 1);
               if(_loc6_)
               {
                  §§push(int(§§pop()));
               }
            }
            _loc3_ = §§pop();
         }
      }
      
      private function §&!!§(param1:LevelObject, param2:Number) : Boolean
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:LevelObject = null;
         if(_loc9_ || _loc3_)
         {
            §§push(this.mSardineCanAdded);
            if(_loc9_)
            {
               §§push(!§§pop());
               if(_loc9_)
               {
                  if(§§pop())
                  {
                     if(!_loc8_)
                     {
                        §§push(true);
                        if(_loc9_)
                        {
                           return §§pop();
                        }
                     }
                     else
                     {
                        addr49:
                        §§push(this.mMightyEagleAdded);
                        if(_loc9_)
                        {
                           addr53:
                           if(§§pop())
                           {
                              if(_loc9_ || param2)
                              {
                                 addr61:
                                 §§push(false);
                                 if(!_loc8_)
                                 {
                                    return §§pop();
                                 }
                                 addr69:
                                 var _loc3_:Boolean = §§pop();
                                 if(_loc9_)
                                 {
                                    §§push(param1.§0o§);
                                    loop0:
                                    while(true)
                                    {
                                       §§push(param1.§]!3§);
                                       loop1:
                                       while(true)
                                       {
                                          if(§§pop() != §§pop())
                                          {
                                             §§push(this.§=1§);
                                             loop2:
                                             while(true)
                                             {
                                                §§push(0);
                                                addr541:
                                                while(true)
                                                {
                                                   if(§§pop() == §§pop())
                                                   {
                                                      while(true)
                                                      {
                                                         this.§=1§ = this.§"!>§.§,6§;
                                                         addr547:
                                                         while(true)
                                                         {
                                                         }
                                                      }
                                                      addr542:
                                                   }
                                                   addr522:
                                                   loop5:
                                                   while(true)
                                                   {
                                                      §§push(param1.§&E§());
                                                      if(!_loc8_)
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                         while(true)
                                                         {
                                                            §§push(§§pop());
                                                            loop7:
                                                            while(true)
                                                            {
                                                               §§push(Boolean(§§pop()));
                                                               loop8:
                                                               while(true)
                                                               {
                                                                  if(!§§pop())
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§pop();
                                                                        addr532:
                                                                        addr572:
                                                                        loop10:
                                                                        while(true)
                                                                        {
                                                                           if(!_loc8_)
                                                                           {
                                                                              §§push(this.§5!k§(param1));
                                                                              while(true)
                                                                              {
                                                                                 §§push(Boolean(§§pop()));
                                                                              }
                                                                              addr506:
                                                                           }
                                                                           else
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.§?!C§);
                                                                                 break loop10;
                                                                              }
                                                                              addr570:
                                                                           }
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           if(§§pop() < this.§&!U§.SARDINE_CAN_MAX_ROTATION_SPEED)
                                                                           {
                                                                              addr597:
                                                                              if(!_loc8_)
                                                                              {
                                                                                 §§push(this);
                                                                                 §§push(this.§?!C§);
                                                                                 if(_loc9_)
                                                                                 {
                                                                                    §§push(param2);
                                                                                    if(_loc9_ || param2)
                                                                                    {
                                                                                       §§push(§§pop() * this.§&!U§.SARDINE_CAN_ROTATION_ACCELERATION);
                                                                                    }
                                                                                    §§push(§§pop() + §§pop());
                                                                                 }
                                                                                 §§pop().§?!C§ = §§pop();
                                                                              }
                                                                              while(true)
                                                                              {
                                                                              }
                                                                              addr597:
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§push(param1.§9f§());
                                                                              addr556:
                                                                              while(true)
                                                                              {
                                                                                 §§push(param2);
                                                                                 if(_loc9_)
                                                                                 {
                                                                                    §§push(§§pop() * this.§?!C§);
                                                                                 }
                                                                                 §§pop().§<O§(§§pop());
                                                                                 addr564:
                                                                                 while(true)
                                                                                 {
                                                                                    this.§=1§ = 0;
                                                                                    addr552:
                                                                                    while(true)
                                                                                    {
                                                                                       continue loop5;
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     addr531:
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop());
                                                                        loop14:
                                                                        while(_loc9_ || param1)
                                                                        {
                                                                           §§push(Boolean(§§pop()));
                                                                           loop15:
                                                                           while(_loc9_)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 loop27:
                                                                                 while(true)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       if(!(_loc8_ && _loc3_))
                                                                                       {
                                                                                          if(!(_loc8_ && param2))
                                                                                          {
                                                                                             §§push(this.mMightyEagleTimer);
                                                                                             loop28:
                                                                                             while(true)
                                                                                             {
                                                                                                if(§§pop() < this.§&!U§.MIGHTY_EAGLE_WAIT_TIME)
                                                                                                {
                                                                                                   loop29:
                                                                                                   while(_loc9_)
                                                                                                   {
                                                                                                      §§push(this.mMightyEagleTimer);
                                                                                                      loop30:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(param2);
                                                                                                         loop31:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop() + §§pop());
                                                                                                            loop32:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(Number(§§pop()));
                                                                                                               loop33:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  _loc4_ = §§pop();
                                                                                                                  addr468:
                                                                                                                  while(_loc9_)
                                                                                                                  {
                                                                                                                     §§push(this.mMightyEagleTimer);
                                                                                                                     loop35:
                                                                                                                     for(; _loc9_ || this; if(_loc8_ && param1)
                                                                                                                     {
                                                                                                                        continue;
                                                                                                                     },§§goto(addr209),§§push(Number(§§pop())))
                                                                                                                     {
                                                                                                                        if(_loc9_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() < this.§&!U§.MIGHTY_EAGLE_SOUND_DELAY);
                                                                                                                           loop36:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(Boolean(§§pop()));
                                                                                                                              if(!_loc8_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop());
                                                                                                                                 if(!(_loc8_ && this))
                                                                                                                                 {
                                                                                                                                    addr393:
                                                                                                                                    if(!(_loc8_ && param1))
                                                                                                                                    {
                                                                                                                                       addr401:
                                                                                                                                       §§push(Boolean(§§pop()));
                                                                                                                                       if(!(_loc9_ || this))
                                                                                                                                       {
                                                                                                                                          break;
                                                                                                                                       }
                                                                                                                                       if(_loc8_)
                                                                                                                                       {
                                                                                                                                          continue loop15;
                                                                                                                                       }
                                                                                                                                       if(§§pop())
                                                                                                                                       {
                                                                                                                                          while(_loc9_)
                                                                                                                                          {
                                                                                                                                             §§pop();
                                                                                                                                             while(!(_loc8_ && _loc3_))
                                                                                                                                             {
                                                                                                                                                §§push(_loc4_);
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() > this.§&!U§.MIGHTY_EAGLE_SOUND_DELAY);
                                                                                                                                                   if(_loc8_ && param1)
                                                                                                                                                   {
                                                                                                                                                      continue loop36;
                                                                                                                                                   }
                                                                                                                                                   if(!_loc8_)
                                                                                                                                                   {
                                                                                                                                                      §§push(Boolean(§§pop()));
                                                                                                                                                      continue loop36;
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr531);
                                                                                                                                                }
                                                                                                                                                §§goto(addr532);
                                                                                                                                             }
                                                                                                                                             §§goto(addr597);
                                                                                                                                          }
                                                                                                                                          §§goto(addr506);
                                                                                                                                          addr411:
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(§§pop())
                                                                                                                                             {
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(SoundEngine.§9!X§("Mighty_Eagle_Selected_1","ChannelBird"));
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§pop();
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(SoundEngine.§9!X§("Mighty_Eagle_Flying_1","ChannelBird"));
                                                                                                                                                         if(!(_loc9_ || _loc3_))
                                                                                                                                                         {
                                                                                                                                                            break;
                                                                                                                                                         }
                                                                                                                                                         §§pop();
                                                                                                                                                         loop45:
                                                                                                                                                         while(!(_loc8_ && param1))
                                                                                                                                                         {
                                                                                                                                                            if(!_loc8_)
                                                                                                                                                            {
                                                                                                                                                               loop46:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc4_);
                                                                                                                                                                  if(_loc9_)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop28;
                                                                                                                                                                  }
                                                                                                                                                                  loop53:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(!_loc8_)
                                                                                                                                                                     {
                                                                                                                                                                        _loc5_ = §§pop();
                                                                                                                                                                        addr288:
                                                                                                                                                                        while(!_loc8_)
                                                                                                                                                                        {
                                                                                                                                                                           loop51:
                                                                                                                                                                           do
                                                                                                                                                                           {
                                                                                                                                                                              §§push(param1.§9f§());
                                                                                                                                                                              if(_loc9_ || this)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop().GetPosition());
                                                                                                                                                                                 if(!_loc8_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop().y);
                                                                                                                                                                                    if(_loc8_)
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop35;
                                                                                                                                                                                    }
                                                                                                                                                                                    if(_loc8_)
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop53;
                                                                                                                                                                                    }
                                                                                                                                                                                    §§push(this.§&!U§.MIGHTY_EAGLE_STARTING_DISTANCE_Y * this.§&!U§.MIGHTY_EAGLE_Y_CHANGE);
                                                                                                                                                                                    if(_loc9_ || this)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc8_ && this)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop31;
                                                                                                                                                                                       }
                                                                                                                                                                                       §§push(§§pop() * 1.07);
                                                                                                                                                                                    }
                                                                                                                                                                                    if(!_loc9_)
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop1;
                                                                                                                                                                                    }
                                                                                                                                                                                    §§push(§§pop() - §§pop());
                                                                                                                                                                                    if(_loc9_ || param2)
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop35;
                                                                                                                                                                                    }
                                                                                                                                                                                    addr209:
                                                                                                                                                                                    if(!(_loc8_ && _loc3_))
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop30;
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 else
                                                                                                                                                                                 {
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop().x);
                                                                                                                                                                                       if(_loc9_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() - this.§&!U§.MIGHTY_EAGLE_STARTING_DISTANCE_X);
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    addr273:
                                                                                                                                                                                 }
                                                                                                                                                                                 while(!_loc8_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!_loc8_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                                                                       continue loop53;
                                                                                                                                                                                    }
                                                                                                                                                                                    continue loop32;
                                                                                                                                                                                 }
                                                                                                                                                                                 continue loop33;
                                                                                                                                                                              }
                                                                                                                                                                              addr265:
                                                                                                                                                                              while(_loc9_ || this)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop().GetPosition());
                                                                                                                                                                                 continue loop51;
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr556);
                                                                                                                                                                              §§goto(addr273);
                                                                                                                                                                           }
                                                                                                                                                                           while(false);
                                                                                                                                                                           
                                                                                                                                                                           _loc7_ = this.addObject("BIRD_MIGHTY_EAGLE",_loc5_,_loc6_,this.§&!U§.MIGHTY_EAGLE_FLYING_ANGLE * 1.2);
                                                                                                                                                                           if(_loc9_)
                                                                                                                                                                           {
                                                                                                                                                                              this.mMightyEagleAdded = true;
                                                                                                                                                                           }
                                                                                                                                                                           addr638:
                                                                                                                                                                           this.§=1§ = 0;
                                                                                                                                                                           if(!(_loc8_ && this))
                                                                                                                                                                           {
                                                                                                                                                                              _loc7_.§7!O§.§+!=§(1.82);
                                                                                                                                                                              if(!(_loc8_ && param1))
                                                                                                                                                                              {
                                                                                                                                                                                 if(false)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr638);
                                                                                                                                                                                 }
                                                                                                                                                                                 break loop46;
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr638);
                                                                                                                                                                           }
                                                                                                                                                                           addr653:
                                                                                                                                                                           §§goto(addr653);
                                                                                                                                                                        }
                                                                                                                                                                        continue loop45;
                                                                                                                                                                        addr288:
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr327);
                                                                                                                                                                     §§goto(addr556);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               addr654:
                                                                                                                                                               this.mMightyEagleTimer = _loc4_;
                                                                                                                                                               addr658:
                                                                                                                                                               return _loc3_;
                                                                                                                                                               addr232:
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr414);
                                                                                                                                                            §§goto(addr597);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                addr359:
                                                                                                                                             }
                                                                                                                                             §§goto(addr232);
                                                                                                                                          }
                                                                                                                                          addr357:
                                                                                                                                       }
                                                                                                                                       §§goto(addr327);
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(!§§pop())
                                                                                                                                       {
                                                                                                                                          continue loop27;
                                                                                                                                       }
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§pop();
                                                                                                                                          break loop29;
                                                                                                                                       }
                                                                                                                                       §§goto(addr393);
                                                                                                                                    }
                                                                                                                                    addr490:
                                                                                                                                 }
                                                                                                                                 §§goto(addr401);
                                                                                                                              }
                                                                                                                              §§goto(addr658);
                                                                                                                           }
                                                                                                                           while(_loc9_)
                                                                                                                           {
                                                                                                                              §§goto(addr490);
                                                                                                                              §§push(Boolean(§§pop()));
                                                                                                                           }
                                                                                                                           continue loop14;
                                                                                                                        }
                                                                                                                        continue loop0;
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(!_loc8_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() > this.§=1§ + this.§&!U§.SARDINE_CAN_DELAY_AFTER_HIT);
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(Boolean(§§pop()));
                                                                                                                              addr436:
                                                                                                                              addr520:
                                                                                                                              while(_loc9_)
                                                                                                                              {
                                                                                                                                 continue loop27;
                                                                                                                              }
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§pop();
                                                                                                                                 continue loop2;
                                                                                                                              }
                                                                                                                           }
                                                                                                                           addr435:
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§goto(addr572);
                                                                                                                        }
                                                                                                                        §§goto(addr369);
                                                                                                                     }
                                                                                                                     addr369:
                                                                                                                  }
                                                                                                                  §§goto(addr547);
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   while(!_loc8_)
                                                                                                   {
                                                                                                      if(_loc9_ || _loc3_)
                                                                                                      {
                                                                                                         §§goto(addr426);
                                                                                                         §§push(this.§"!>§.§,6§);
                                                                                                      }
                                                                                                      §§goto(addr564);
                                                                                                   }
                                                                                                   §§goto(addr552);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr542);
                                                                                          }
                                                                                          §§goto(addr547);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr654);
                                                                                 }
                                                                              }
                                                                              §§goto(addr520);
                                                                           }
                                                                           continue loop8;
                                                                        }
                                                                        continue loop7;
                                                                        if(!(_loc9_ || this))
                                                                        {
                                                                           continue;
                                                                        }
                                                                        §§push(Boolean(§§pop()));
                                                                        if(!_loc8_)
                                                                        {
                                                                           §§goto(addr122);
                                                                        }
                                                                        §§goto(addr654);
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr654);
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr570);
                                       }
                                    }
                                 }
                                 §§goto(addr547);
                              }
                              §§goto(addr69);
                           }
                           §§push(false);
                           if(_loc8_)
                           {
                           }
                        }
                        §§goto(addr69);
                     }
                     §§goto(addr69);
                  }
                  §§goto(addr49);
               }
            }
            §§goto(addr53);
         }
         §§goto(addr61);
      }
      
      private function §,!T§(param1:LevelObject, param2:Number) : Boolean
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc5_:LevelObject = null;
         if(_loc9_)
         {
            §§push(Boolean(this.§&!U§.MIGHTY_EAGLE_USE_SHADE));
            loop0:
            while(true)
            {
               §§push(§§pop());
               if(!(_loc8_ && _loc3_))
               {
                  §§push(Boolean(§§pop()));
               }
               loop1:
               while(true)
               {
                  if(!§§pop())
                  {
                     continue;
                  }
                  loop2:
                  while(true)
                  {
                     §§pop();
                     addr130:
                     while(true)
                     {
                        §§push(this.§0m§);
                        if(!(_loc8_ && this))
                        {
                           if(!_loc9_)
                           {
                              break;
                           }
                           §§push(!§§pop());
                           while(true)
                           {
                              §§push(Boolean(§§pop()));
                           }
                        }
                        addr92:
                        while(!(_loc8_ && _loc3_))
                        {
                           continue loop1;
                        }
                        continue loop2;
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr73);
      }
      
      private function §2k§() : void
      {
         var _loc20_:Boolean = true;
         var _loc21_:Boolean = false;
         var _loc1_:§#!f§ = null;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc6_:LevelObject = null;
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
         while(this.§?h§.length > 0)
         {
            _loc1_ = this.§?h§.shift();
            if(_loc20_)
            {
               §§push(_loc1_.pushRadius);
               if(!_loc21_)
               {
                  §§push(Number(§§pop()));
                  loop1:
                  while(true)
                  {
                     _loc2_ = §§pop();
                     if(!(_loc21_ && _loc1_))
                     {
                        §§push(_loc1_.x);
                        if(!_loc21_)
                        {
                           §§push(Number(§§pop()));
                           if(!_loc21_)
                           {
                              _loc3_ = §§pop();
                              if(!_loc21_)
                              {
                                 while(true)
                                 {
                                    loop24:
                                    while(true)
                                    {
                                       §§push(_loc1_.y);
                                       if(!_loc21_)
                                       {
                                          §§push(Number(§§pop()));
                                          if(_loc20_ || _loc1_)
                                          {
                                             _loc4_ = §§pop();
                                             if(!_loc21_)
                                             {
                                                §§push(_loc1_.damage);
                                                if(!(_loc21_ && _loc1_))
                                                {
                                                   if(!_loc20_)
                                                   {
                                                      continue loop1;
                                                   }
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
                                                               for each(_loc6_ in this.§8c§)
                                                               {
                                                                  if(_loc20_)
                                                                  {
                                                                     §§push(_loc6_.§9f§());
                                                                     loop28:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop().GetPosition());
                                                                        addr523:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop().x);
                                                                           addr524:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc3_);
                                                                              addr525:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop() - §§pop());
                                                                                 addr526:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(Number(§§pop()));
                                                                                    addr527:
                                                                                    while(true)
                                                                                    {
                                                                                       _loc8_ = §§pop();
                                                                                       addr528:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc6_.§9f§());
                                                                                          continue loop28;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr429);
                                                               }
                                                            }
                                                            if(_loc20_)
                                                            {
                                                               §§push(this.§"!>§);
                                                               while(true)
                                                               {
                                                                  §§push(§§pop().particles);
                                                                  addr797:
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§%z§(_loc1_.type));
                                                                     addr801:
                                                                     while(true)
                                                                     {
                                                                        §§push(LevelParticleManager.§[K§);
                                                                        addr804:
                                                                        while(true)
                                                                        {
                                                                           §§push(§0'§.§7R§);
                                                                           addr817:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc3_);
                                                                              addr818:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc4_);
                                                                                 addr819:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop().§@4§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),600,"",§0'§.§7!!§,0,0,0,0,1,20,true));
                                                                                    addr832:
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop();
                                                                                       if(_loc20_)
                                                                                       {
                                                                                          break loop1;
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
                                                               addr796:
                                                            }
                                                            loop26:
                                                            while(true)
                                                            {
                                                               if(false)
                                                               {
                                                                  loop6:
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§"!>§);
                                                                     if(_loc20_)
                                                                     {
                                                                        §§push(§§pop().particles);
                                                                        if(_loc21_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        §§push(§0'§.§%J§);
                                                                        if(!(_loc21_ && _loc3_))
                                                                        {
                                                                           §§push(LevelParticleManager.§[K§);
                                                                           if(_loc20_ || this)
                                                                           {
                                                                              §§push(§0'§.§&A§);
                                                                              if(!(_loc21_ && _loc3_))
                                                                              {
                                                                                 §§push(_loc3_);
                                                                                 if(_loc20_)
                                                                                 {
                                                                                    §§push(_loc4_);
                                                                                    if(!_loc21_)
                                                                                    {
                                                                                       §§push(_loc16_);
                                                                                       §§push("");
                                                                                       §§push(§0'§.§7!!§);
                                                                                       §§push(_loc15_);
                                                                                       if(!_loc21_)
                                                                                       {
                                                                                          §§push(§§pop() * Math.cos(_loc17_));
                                                                                       }
                                                                                       §§push(_loc15_);
                                                                                       if(!(_loc21_ && this))
                                                                                       {
                                                                                          §§push(-§§pop());
                                                                                          if(_loc20_ || _loc1_)
                                                                                          {
                                                                                             §§push(§§pop() * Math.sin(_loc17_));
                                                                                          }
                                                                                       }
                                                                                       §§push(§§pop().§@4§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),20,0));
                                                                                       if(!(_loc21_ && _loc3_))
                                                                                       {
                                                                                          §§pop();
                                                                                          loop7:
                                                                                          for(; !_loc21_; if(_loc20_ || this)
                                                                                          {
                                                                                             continue loop26;
                                                                                          })
                                                                                          {
                                                                                             §§push(_loc7_);
                                                                                             if(!_loc21_)
                                                                                             {
                                                                                                if(_loc20_)
                                                                                                {
                                                                                                   if(!(_loc21_ && this))
                                                                                                   {
                                                                                                      §§push(5);
                                                                                                      if(_loc20_ || this)
                                                                                                      {
                                                                                                         if(_loc20_ || _loc2_)
                                                                                                         {
                                                                                                            §§push(§§pop() + §§pop());
                                                                                                            if(_loc20_)
                                                                                                            {
                                                                                                               if(_loc20_)
                                                                                                               {
                                                                                                                  if(_loc20_)
                                                                                                                  {
                                                                                                                     §§push(int(§§pop()));
                                                                                                                     if(!(_loc21_ && _loc3_))
                                                                                                                     {
                                                                                                                        _loc7_ = §§pop();
                                                                                                                        if(_loc20_)
                                                                                                                        {
                                                                                                                           continue;
                                                                                                                        }
                                                                                                                        continue loop0;
                                                                                                                     }
                                                                                                                     addr837:
                                                                                                                     addr837:
                                                                                                                     loop13:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(150);
                                                                                                                        addr838:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(§§pop() >= §§pop())
                                                                                                                           {
                                                                                                                              continue loop0;
                                                                                                                           }
                                                                                                                           §§push(0.75);
                                                                                                                           if(!(_loc21_ && _loc2_))
                                                                                                                           {
                                                                                                                              §§push(_loc2_);
                                                                                                                              if(!(_loc21_ && _loc3_))
                                                                                                                              {
                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                 if(!_loc21_)
                                                                                                                                 {
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(Math.random() * _loc2_);
                                                                                                                                       addr783:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                          addr784:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    addr778:
                                                                                                                                 }
                                                                                                                                 loop9:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    _loc15_ = §§pop();
                                                                                                                                    addr786:
                                                                                                                                    loop10:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(1250);
                                                                                                                                       if(_loc21_)
                                                                                                                                       {
                                                                                                                                          continue loop13;
                                                                                                                                       }
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(Math.random() * 750);
                                                                                                                                          addr731:
                                                                                                                                          addr755:
                                                                                                                                          addr685:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                             addr732:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                                addr733:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(!(_loc21_ && _loc1_))
                                                                                                                                                   {
                                                                                                                                                      break loop24;
                                                                                                                                                   }
                                                                                                                                                   break loop10;
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§push(_loc7_);
                                                                                                                                          addr705:
                                                                                                                                          loop8:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(180);
                                                                                                                                             addr686:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() / Math.PI);
                                                                                                                                                if(!(_loc21_ && _loc2_))
                                                                                                                                                {
                                                                                                                                                   addr698:
                                                                                                                                                   §§push(§§pop() / §§pop());
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(!(_loc21_ && this))
                                                                                                                                                      {
                                                                                                                                                         break loop8;
                                                                                                                                                      }
                                                                                                                                                      continue loop9;
                                                                                                                                                   }
                                                                                                                                                   addr698:
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   §§goto(addr731);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr755);
                                                                                                                                          }
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                             addr706:
                                                                                                                                             while(_loc20_ || _loc1_)
                                                                                                                                             {
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   _loc17_ = §§pop();
                                                                                                                                                   if(_loc21_ && _loc3_)
                                                                                                                                                   {
                                                                                                                                                      continue loop0;
                                                                                                                                                   }
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      continue loop6;
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr733);
                                                                                                                                             §§goto(addr698);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr784);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr783);
                                                                                                                           }
                                                                                                                           §§goto(addr784);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr837:
                                                                                                                  }
                                                                                                                  §§goto(addr732);
                                                                                                               }
                                                                                                               §§goto(addr698);
                                                                                                            }
                                                                                                            §§goto(addr706);
                                                                                                         }
                                                                                                         §§goto(addr686);
                                                                                                      }
                                                                                                      §§goto(addr838);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(int(§§pop()));
                                                                                                         if(_loc20_)
                                                                                                         {
                                                                                                            _loc7_ = §§pop();
                                                                                                            break loop7;
                                                                                                         }
                                                                                                         §§goto(addr837);
                                                                                                      }
                                                                                                      addr789:
                                                                                                   }
                                                                                                   §§goto(addr837);
                                                                                                }
                                                                                                §§goto(addr685);
                                                                                             }
                                                                                             §§goto(addr837);
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             addr836:
                                                                                             while(true)
                                                                                             {
                                                                                                §§goto(addr837);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr819);
                                                                                    }
                                                                                    §§goto(addr832);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr818);
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr817);
                                                                              }
                                                                              §§goto(addr818);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr804);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr801);
                                                                        }
                                                                        §§goto(addr804);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr796);
                                                                     }
                                                                  }
                                                                  §§goto(addr797);
                                                               }
                                                               §§goto(addr836);
                                                            }
                                                            addr589:
                                                         }
                                                         §§goto(addr726);
                                                      }
                                                      §§goto(addr589);
                                                   }
                                                   §§goto(addr713);
                                                }
                                                break;
                                             }
                                             §§goto(addr721);
                                          }
                                          §§goto(addr784);
                                       }
                                       break;
                                    }
                                    while(true)
                                    {
                                       _loc16_ = §§pop();
                                       if(_loc21_ && this)
                                       {
                                          continue loop0;
                                       }
                                       if(_loc20_ || _loc2_)
                                       {
                                          §§goto(addr755);
                                       }
                                       §§goto(addr786);
                                    }
                                 }
                                 addr110:
                              }
                              break;
                           }
                           §§goto(addr705);
                        }
                        §§goto(addr778);
                     }
                     break;
                  }
                  while(true)
                  {
                     §§goto(addr789);
                  }
               }
               §§goto(addr784);
            }
            §§goto(addr110);
         }
      }
      
      protected function §%z§(param1:int) : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(param1);
         if(_loc3_)
         {
            var _loc2_:* = §§pop();
            if(_loc3_ || _loc2_)
            {
               if(false)
               {
                  addr46:
                  §§push(0);
                  if(_loc3_ || _loc3_)
                  {
                  }
               }
               else
               {
                  §§push(0);
               }
               §§goto(addr57);
            }
            §§goto(addr46);
         }
         addr57:
         switch(§§pop())
         {
         }
         return §0'§.§-s§;
      }
      
      public function §&e§(param1:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:LevelObject = null;
         var _loc3_:* = int(this.§8c§.length - 1);
         loop0:
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§8c§[_loc3_];
            if(!_loc4_)
            {
               §§push(_loc2_.§3g§());
               loop1:
               for(; !§§pop(); loop2:
               while(true)
               {
                  if(_loc5_ || this)
                  {
                     if(!§§pop())
                     {
                        §§push(_loc2_.isReadyToBeRemoved(param1));
                        while(!(_loc4_ && _loc2_))
                        {
                           if(§§pop())
                           {
                              if(_loc5_ || _loc3_)
                              {
                                 if(!_loc4_)
                                 {
                                    if(!(_loc5_ || _loc2_))
                                    {
                                       break loop2;
                                    }
                                    if(!_loc4_)
                                    {
                                       _loc2_.§@r§(LevelItemSoundResource.§5!,§);
                                       §§goto(addr153);
                                    }
                                    §§goto(addr256);
                                 }
                                 §§goto(addr169);
                              }
                              §§goto(addr153);
                           }
                           else
                           {
                              §§push(_loc2_.§'W§());
                              if(!_loc5_)
                              {
                                 continue;
                              }
                              if(!_loc5_)
                              {
                                 continue loop2;
                              }
                              if(§§pop())
                              {
                                 §§goto(addr75);
                              }
                           }
                           §§goto(addr38);
                        }
                        §§goto(addr222);
                     }
                     break;
                  }
                  continue loop1;
               },if(_loc5_ || param1)
               {
                  _loc2_.§@r§(LevelItemSoundResource.§5!,§);
                  §§goto(addr197);
               },§§goto(addr249))
               {
                  §§push(_loc2_.§?O§());
                  if(!(_loc4_ && _loc2_))
                  {
                     if(!§§pop())
                     {
                        §§push(this.§5!k§(_loc2_));
                        continue;
                     }
                     while(true)
                     {
                        §§push(this.§,!T§(_loc2_,param1));
                     }
                     addr218:
                  }
                  while(true)
                  {
                     if(!(_loc4_ && param1))
                     {
                        addr229:
                        §§pop();
                        loop5:
                        while(true)
                        {
                           addr38:
                           loop6:
                           while(true)
                           {
                              §§push(_loc3_);
                              if(_loc5_)
                              {
                                 §§push(§§pop() - 1);
                                 if(_loc5_ || param1)
                                 {
                                    §§push(int(§§pop()));
                                 }
                              }
                              _loc3_ = §§pop();
                              if(!(_loc4_ && this))
                              {
                                 if(_loc5_)
                                 {
                                    if(_loc5_)
                                    {
                                       if(true)
                                       {
                                          break;
                                       }
                                    }
                                    else
                                    {
                                       loop7:
                                       for(; !_loc5_; this.§&U§(_loc3_,false,true,true))
                                       {
                                          loop12:
                                          while(true)
                                          {
                                             if(!(_loc4_ && param1))
                                             {
                                                continue loop7;
                                             }
                                             addr197:
                                             while(true)
                                             {
                                                if(_loc4_ && param1)
                                                {
                                                   continue loop5;
                                                }
                                                this.§&U§(_loc3_,false,false,false);
                                                while(true)
                                                {
                                                   continue loop6;
                                                }
                                                continue loop12;
                                             }
                                          }
                                       }
                                       while(true)
                                       {
                                       }
                                       addr104:
                                    }
                                    while(true)
                                    {
                                       continue loop6;
                                    }
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       if(_loc5_ || _loc2_)
                                       {
                                          if(_loc4_ && this)
                                          {
                                             break loop1;
                                          }
                                          _loc2_.update(param1);
                                       }
                                       else
                                       {
                                          §§goto(addr218);
                                       }
                                    }
                                    addr75:
                                 }
                              }
                              while(true)
                              {
                                 continue loop6;
                              }
                           }
                           continue loop0;
                        }
                     }
                     addr248:
                     while(true)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              this.§&U§(_loc3_,false,false,false);
                              addr256:
                              while(true)
                              {
                              }
                           }
                           addr249:
                        }
                        while(true)
                        {
                           §§goto(addr38);
                        }
                     }
                  }
               }
               while(true)
               {
                  §§goto(addr248);
               }
            }
            §§goto(addr104);
         }
         if(!(_loc4_ && _loc3_))
         {
            this.§2k§();
         }
      }
      
      private function §`L§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§>!G§ = null;
         for each(_loc1_ in this.§=![§)
         {
            if(!_loc4_)
            {
               this.§"!>§.mLevelEngine.mWorld.§-!A§(_loc1_.§7#§);
            }
         }
      }
      
      public function §,!c§() : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:LevelObject = null;
         §§push(0);
         if(_loc4_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         while(true)
         {
            if(_loc1_ >= this.§8c§.length)
            {
               return false;
            }
            _loc2_ = this.§8c§[_loc1_];
            if(!_loc4_)
            {
               addr68:
               break;
            }
            §§push(_loc2_.explode());
            if(!(_loc4_ || this))
            {
               return §§pop();
            }
            if(§§pop())
            {
               if(!_loc3_)
               {
                  break;
               }
            }
            §§push(_loc1_);
            if(!_loc3_)
            {
               §§push(§§pop() + 1);
               if(!(_loc3_ && _loc2_))
               {
                  §§push(int(§§pop()));
               }
            }
            _loc1_ = §§pop();
         }
         §§goto(addr68);
         §§push(true);
      }
      
      public function §5!k§(param1:LevelObject) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            §§push(Boolean(param1));
            loop0:
            while(true)
            {
               §§push(§§pop());
               if(_loc3_)
               {
                  §§push(Boolean(§§pop()));
               }
               while(true)
               {
                  if(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        addr148:
                        while(true)
                        {
                           §§push(param1.§8!&§.§>t§() == LevelItemMaterial.§!!&§);
                           if(!_loc2_)
                           {
                              §§push(!§§pop());
                              while(true)
                              {
                                 §§push(Boolean(§§pop()));
                              }
                              addr120:
                           }
                           addr122:
                           while(_loc3_)
                           {
                           }
                           continue loop2;
                        }
                     }
                  }
                  while(true)
                  {
                     §§push(§§pop());
                     if(_loc3_)
                     {
                        if(!(_loc3_ || this))
                        {
                           break;
                        }
                        §§push(Boolean(§§pop()));
                     }
                     if(!§§pop())
                     {
                        loop7:
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(_loc3_ || this)
                              {
                                 addr79:
                                 §§push(true);
                                 if(!(_loc2_ && this))
                                 {
                                    if(!_loc2_)
                                    {
                                       return §§pop();
                                    }
                                    §§goto(addr122);
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       §§pop();
                                       addr138:
                                       while(true)
                                       {
                                          §§push(this.§"!>§.§'g§.§4!1§(param1.§9f§().GetPosition().x,param1.§9f§().GetPosition().y));
                                          addr54:
                                          while(true)
                                          {
                                             if(_loc3_)
                                             {
                                                §§push(Boolean(§§pop()));
                                                continue loop7;
                                             }
                                             continue loop0;
                                          }
                                       }
                                    }
                                    addr137:
                                 }
                              }
                              else
                              {
                                 if(_loc3_ || _loc3_)
                                 {
                                    if(_loc3_)
                                    {
                                       addr25:
                                       §§push(false);
                                       if(_loc3_ || _loc2_)
                                       {
                                          if(_loc2_)
                                          {
                                             continue;
                                          }
                                          if(_loc3_)
                                          {
                                             return §§pop();
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr79);
                                       }
                                       §§goto(addr54);
                                    }
                                    §§goto(addr148);
                                 }
                                 §§goto(addr138);
                              }
                              §§goto(addr138);
                           }
                           §§goto(addr25);
                        }
                        §§goto(addr120);
                     }
                     §§goto(addr137);
                  }
               }
            }
         }
         §§goto(addr138);
      }
      
      public function §&U§(param1:int, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc6_:§>!G§ = null;
         var _loc7_:§`!1§ = null;
         if(!_loc13_)
         {
            if(param1 < 0)
            {
               if(!_loc13_)
               {
                  return;
               }
            }
         }
         var _loc5_:LevelObject = this.§8c§[param1];
         if(_loc12_)
         {
            §§push(_loc5_.§"!7§());
            if(!(_loc13_ && param3))
            {
               if(§§pop())
               {
                  if(_loc12_)
                  {
                     addr50:
                     var _loc8_:*;
                     §§push((_loc8_ = this).§+R§);
                     if(_loc12_ || param1)
                     {
                        §§push(§§pop() + 1);
                     }
                     var _loc9_:* = §§pop();
                     if(!_loc13_)
                     {
                        _loc8_.§+R§ = _loc9_;
                     }
                     if(!(_loc13_ && param2))
                     {
                        addr266:
                        if(_loc5_ == this.§"!>§.activeObject)
                        {
                           while(true)
                           {
                              §§push(this.§"!>§);
                              addr273:
                              loop10:
                              while(true)
                              {
                                 §§pop().activeObject = null;
                                 addr275:
                                 while(true)
                                 {
                                    continue loop10;
                                 }
                              }
                           }
                           addr271:
                        }
                        while(true)
                        {
                           §§push(param2);
                           addr212:
                           loop22:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 loop11:
                                 while(true)
                                 {
                                    §§push(this.§"!>§);
                                    if(!(_loc13_ && param1))
                                    {
                                       §§push(_loc5_.§8!&§.score);
                                       §§push(ScoreCollector.§&o§);
                                       §§push(true);
                                       §§push(_loc5_.§9f§().GetPosition().x);
                                       §§push(_loc5_.§9f§().GetPosition().y);
                                       if(!(_loc13_ && param1))
                                       {
                                          addr263:
                                          §§push(3);
                                          if(!_loc13_)
                                          {
                                             addr258:
                                             §§push(§§pop() - §§pop());
                                             §§push(§0'§.§'>§(_loc5_.§#>§));
                                          }
                                          §§pop().addScore(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
                                          loop2:
                                          while(true)
                                          {
                                             addr192:
                                             while(true)
                                             {
                                                §§push(param3);
                                                addr194:
                                                loop21:
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      while(_loc13_ && this)
                                                      {
                                                         §§goto(addr271);
                                                      }
                                                      addr202:
                                                      this.addDestructionParticles(_loc5_,this.§"!>§.particles);
                                                      while(true)
                                                      {
                                                         §§goto(addr202);
                                                      }
                                                      addr195:
                                                      addr209:
                                                   }
                                                   loop6:
                                                   while(true)
                                                   {
                                                      §§push(param4);
                                                      loop7:
                                                      while(true)
                                                      {
                                                         if(_loc13_)
                                                         {
                                                            continue loop22;
                                                         }
                                                         if(§§pop())
                                                         {
                                                            if(_loc12_)
                                                            {
                                                               if(_loc12_ || param3)
                                                               {
                                                                  this.§^1§(_loc5_);
                                                                  addr182:
                                                                  while(true)
                                                                  {
                                                                     if(_loc13_)
                                                                     {
                                                                        continue loop11;
                                                                     }
                                                                     if(_loc12_ || param1)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           addr136:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc5_.isTexture());
                                                                              if(_loc12_ || param3)
                                                                              {
                                                                                 if(!_loc13_)
                                                                                 {
                                                                                    break loop6;
                                                                                 }
                                                                                 continue loop21;
                                                                              }
                                                                              continue loop7;
                                                                           }
                                                                        }
                                                                        addr191:
                                                                     }
                                                                  }
                                                                  addr182:
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr195);
                                                               }
                                                               §§goto(addr275);
                                                            }
                                                            §§goto(addr182);
                                                         }
                                                         §§goto(addr136);
                                                      }
                                                      continue loop22;
                                                   }
                                                   addr148:
                                                   if(§§pop())
                                                   {
                                                      while(_loc13_ && param2)
                                                      {
                                                         §§goto(addr209);
                                                         §§goto(addr148);
                                                      }
                                                      addr149:
                                                   }
                                                   addr156:
                                                   while(true)
                                                   {
                                                      this.§#!$§(_loc5_.sprite);
                                                      while(!_loc13_)
                                                      {
                                                         this.§2N§(_loc5_);
                                                         if(_loc13_)
                                                         {
                                                            continue;
                                                         }
                                                         if(_loc12_ || param3)
                                                         {
                                                            if(!(_loc12_ || param2))
                                                            {
                                                               continue loop2;
                                                            }
                                                            while(false)
                                                            {
                                                               §§goto(addr136);
                                                            }
                                                            _loc8_ = 0;
                                                            _loc9_ = this.§=![§;
                                                            loop15:
                                                            while(true)
                                                            {
                                                               §§push(§§hasnext(_loc9_,_loc8_));
                                                               if(!(_loc13_ && param2))
                                                               {
                                                                  if(!§§pop())
                                                                  {
                                                                     if(!(_loc13_ && param3))
                                                                     {
                                                                        if(!(_loc13_ && param1))
                                                                        {
                                                                           if(!(_loc13_ && this))
                                                                           {
                                                                              _loc8_ = 0;
                                                                              if(_loc12_ || this)
                                                                              {
                                                                                 addr387:
                                                                                 _loc9_ = this.§1N§;
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§hasnext(_loc9_,_loc8_));
                                                                                    break loop15;
                                                                                 }
                                                                                 addr451:
                                                                              }
                                                                              if(_loc12_)
                                                                              {
                                                                                 addr457:
                                                                                 _loc5_.dispose();
                                                                              }
                                                                              _loc5_ = null;
                                                                              if(!(_loc13_ && param3))
                                                                              {
                                                                                 this.§8c§[param1] = null;
                                                                              }
                                                                              do
                                                                              {
                                                                                 this.§8c§.splice(param1,1);
                                                                              }
                                                                              while(!_loc12_);
                                                                              
                                                                              return;
                                                                           }
                                                                           §§goto(addr457);
                                                                        }
                                                                     }
                                                                     §§goto(addr387);
                                                                  }
                                                                  else
                                                                  {
                                                                     _loc6_ = §§nextvalue(_loc8_,_loc9_);
                                                                     if(!_loc13_)
                                                                     {
                                                                        if(_loc6_.index1 >= param1)
                                                                        {
                                                                           if(_loc12_ || param1)
                                                                           {
                                                                              var _loc10_:*;
                                                                              var _loc11_:* = (_loc10_ = _loc6_).index1 - 1;
                                                                              if(!(_loc13_ && this))
                                                                              {
                                                                                 _loc10_.index1 = _loc11_;
                                                                              }
                                                                              if(!_loc13_)
                                                                              {
                                                                                 addr322:
                                                                                 if(_loc6_.index2 < param1)
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 if(_loc13_)
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                              }
                                                                              _loc11_ = (_loc10_ = _loc6_).index2 - 1;
                                                                              if(_loc12_ || param2)
                                                                              {
                                                                                 _loc10_.index2 = _loc11_;
                                                                              }
                                                                           }
                                                                           continue;
                                                                        }
                                                                     }
                                                                     §§goto(addr322);
                                                                  }
                                                               }
                                                               break;
                                                            }
                                                            while(true)
                                                            {
                                                               if(!§§pop())
                                                               {
                                                                  §§goto(addr387);
                                                               }
                                                               else
                                                               {
                                                                  _loc7_ = §§nextvalue(_loc8_,_loc9_);
                                                                  if(_loc12_ || param2)
                                                                  {
                                                                     §§push(_loc7_.id1);
                                                                     if(_loc12_)
                                                                     {
                                                                        §§push(param1);
                                                                        if(!_loc13_)
                                                                        {
                                                                           if(§§pop() == §§pop())
                                                                           {
                                                                              if(_loc12_ || param1)
                                                                              {
                                                                                 _loc7_.§`r§ = true;
                                                                                 if(!(_loc13_ && param1))
                                                                                 {
                                                                                    addr430:
                                                                                    if(_loc7_.id1 < param1)
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                    if(!_loc12_)
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                 }
                                                                                 §§push((_loc10_ = _loc7_).id1);
                                                                                 if(!_loc13_)
                                                                                 {
                                                                                    §§push(§§pop() - 1);
                                                                                 }
                                                                                 _loc11_ = §§pop();
                                                                                 if(_loc12_)
                                                                                 {
                                                                                    _loc10_.id1 = _loc11_;
                                                                                 }
                                                                              }
                                                                              continue;
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr430);
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr149);
                                                      }
                                                      §§goto(addr182);
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       §§goto(addr258);
                                    }
                                    §§goto(addr273);
                                 }
                              }
                              §§goto(addr192);
                           }
                        }
                     }
                     §§goto(addr191);
                  }
                  else
                  {
                     addr112:
                  }
                  §§goto(addr266);
               }
               else
               {
                  §§push(_loc5_.§'W§());
                  if(!_loc13_)
                  {
                     if(§§pop())
                     {
                        if(!_loc13_)
                        {
                           §§push((_loc8_ = this).§6-§);
                           if(_loc12_)
                           {
                              §§push(§§pop() - 1);
                           }
                           _loc9_ = §§pop();
                           if(!(_loc13_ && param1))
                           {
                              _loc8_.§6-§ = _loc9_;
                           }
                           if(_loc12_ || param3)
                           {
                              §§goto(addr112);
                           }
                           §§goto(addr156);
                        }
                        §§goto(addr134);
                     }
                     §§goto(addr266);
                  }
               }
               §§goto(addr194);
            }
            §§goto(addr212);
         }
         §§goto(addr50);
      }
      
      protected function addDestructionParticles(param1:LevelObject, param2:LevelParticleManager) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            param1.addDestructionParticles(param2);
         }
      }
      
      private function §#!$§(param1:Sprite) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.§#J§);
            if(!_loc3_)
            {
               if(!§§pop().contains(param1))
               {
                  loop0:
                  while(true)
                  {
                     §§push(this.§^x§);
                     if(_loc2_)
                     {
                        if(!§§pop().contains(param1))
                        {
                           loop1:
                           while(true)
                           {
                              §§push(this.§+E§);
                              if(!_loc3_)
                              {
                                 if(!§§pop().contains(param1))
                                 {
                                    while(true)
                                    {
                                       §§push(this.§3!j§);
                                       if(!_loc3_)
                                       {
                                          if(§§pop().contains(param1))
                                          {
                                             if(!(_loc3_ && param1))
                                             {
                                                if(!_loc2_)
                                                {
                                                   if(!(_loc2_ || this))
                                                   {
                                                      if(!(_loc3_ && _loc3_))
                                                      {
                                                         §§push(this.§+E§);
                                                         break loop1;
                                                      }
                                                      break;
                                                   }
                                                   addr90:
                                                   if(!_loc3_)
                                                   {
                                                      if(_loc3_)
                                                      {
                                                         if(_loc2_ || this)
                                                         {
                                                            return;
                                                         }
                                                         addr154:
                                                         this.§#J§.removeChild(param1);
                                                      }
                                                      else
                                                      {
                                                         addr136:
                                                      }
                                                      continue;
                                                      break;
                                                   }
                                                   if(_loc2_ || param1)
                                                   {
                                                      continue loop1;
                                                   }
                                                   continue loop0;
                                                }
                                                if(!_loc2_)
                                                {
                                                   return;
                                                   addr102:
                                                }
                                                if(_loc3_ && this)
                                                {
                                                   addr131:
                                                   §§push(this.§^x§);
                                                   break loop0;
                                                }
                                                addr54:
                                                this.§3!j§.removeChild(param1);
                                             }
                                             return;
                                          }
                                          return;
                                       }
                                       §§goto(addr54);
                                    }
                                    return;
                                 }
                                 §§goto(addr90);
                              }
                              break;
                           }
                           §§pop().removeChild(param1);
                           §§goto(addr102);
                        }
                        §§goto(addr131);
                     }
                     break;
                  }
                  §§pop().removeChild(param1);
                  §§goto(addr136);
               }
            }
            §§goto(addr154);
         }
         §§goto(addr112);
      }
      
      protected function §^1§(param1:LevelObject) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            §§push(param1.§8k§());
            loop0:
            while(true)
            {
               §§push(§§pop().toUpperCase() == "WHITE_EGG");
               loop1:
               while(true)
               {
                  §§push(Boolean(§§pop()));
                  if(_loc2_)
                  {
                     §§push(§§pop());
                     if(!_loc3_)
                     {
                        §§push(Boolean(§§pop()));
                     }
                     if(!§§pop())
                     {
                        while(true)
                        {
                           §§pop();
                           addr149:
                           loop6:
                           while(true)
                           {
                              §§push(param1.§#!B§());
                              if(_loc2_ || param1)
                              {
                                 if(_loc3_ && _loc2_)
                                 {
                                    continue;
                                 }
                                 if(_loc3_)
                                 {
                                    continue loop1;
                                 }
                                 addr89:
                                 §§push(Boolean(§§pop()));
                                 while(true)
                                 {
                                    §§goto(addr89);
                                 }
                              }
                              loop3:
                              while(§§pop())
                              {
                                 while(true)
                                 {
                                    §§push(param1.§#>§);
                                    if(!_loc3_)
                                    {
                                       if(§§pop().toUpperCase() == §=&§.§'!O§)
                                       {
                                          if(_loc3_)
                                          {
                                             break;
                                          }
                                          if(!(_loc3_ && _loc3_))
                                          {
                                             this.addExplosions(§#!f§.§!q§,param1.§9f§().GetPosition().x,param1.§9f§().GetPosition().y);
                                             break;
                                          }
                                          continue loop6;
                                       }
                                       this.addExplosions(§#!f§.§#y§,param1.§9f§().GetPosition().x,param1.§9f§().GetPosition().y);
                                       if(!(_loc2_ || this))
                                       {
                                          break;
                                       }
                                       if(!(_loc3_ && _loc3_))
                                       {
                                          break loop3;
                                       }
                                       continue;
                                    }
                                    continue loop0;
                                 }
                                 break;
                              }
                              return;
                           }
                        }
                        addr148:
                     }
                     §§goto(addr90);
                  }
                  §§goto(addr148);
               }
            }
         }
         §§goto(addr149);
      }
      
      public function §"!A§(param1:Object, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            this.§&U§(this.§8c§.indexOf(param1),param2,param3,param4);
         }
      }
      
      public function §+F§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §§push(this.§!!@§);
            loop0:
            while(true)
            {
               §§push(param1);
               addr69:
               while(true)
               {
                  §§push(-§§pop());
                  addr70:
                  while(true)
                  {
                     §§pop().x = §§pop();
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr65);
      }
      
      public function isPigsAlive(param1:Boolean = false) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:LevelObject = null;
         §§push(0);
         if(!(_loc5_ && this))
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         loop0:
         while(_loc2_ < this.§8c§.length)
         {
            _loc3_ = this.§8c§[_loc2_] as LevelObject;
            if(_loc4_ || _loc2_)
            {
               §§push(Boolean(_loc3_));
               loop1:
               while(true)
               {
                  §§push(§§pop());
                  if(!(_loc5_ && _loc3_))
                  {
                     §§push(Boolean(§§pop()));
                  }
                  loop2:
                  while(true)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§pop();
                           addr312:
                           while(true)
                           {
                              §§push(_loc3_.§"!7§());
                              addr273:
                              while(true)
                              {
                                 §§push(Boolean(§§pop()));
                              }
                           }
                        }
                        addr311:
                     }
                     while(true)
                     {
                        loop7:
                        while(true)
                        {
                           §§push(§§pop());
                           loop8:
                           while(true)
                           {
                              §§push(Boolean(§§pop()));
                              loop9:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    loop10:
                                    while(true)
                                    {
                                       if(_loc4_ || _loc3_)
                                       {
                                          §§pop();
                                          loop11:
                                          while(true)
                                          {
                                             §§push(_loc3_.§0o§);
                                             loop12:
                                             while(true)
                                             {
                                                §§push(0);
                                                loop13:
                                                while(true)
                                                {
                                                   §§push(§§pop() > §§pop());
                                                   if(_loc4_ || param1)
                                                   {
                                                      §§push(Boolean(§§pop()));
                                                      while(true)
                                                      {
                                                         loop24:
                                                         while(true)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               continue loop11;
                                                            }
                                                            loop20:
                                                            while(true)
                                                            {
                                                               §§push(_loc2_);
                                                               if(!_loc5_)
                                                               {
                                                                  §§push(§§pop() + 1);
                                                                  if(!(_loc5_ && _loc3_))
                                                                  {
                                                                     addr60:
                                                                     §§push(int(§§pop()));
                                                                  }
                                                                  _loc2_ = §§pop();
                                                                  if(!_loc5_)
                                                                  {
                                                                     if(!(_loc5_ && param1))
                                                                     {
                                                                        if(!_loc5_)
                                                                        {
                                                                           if(true)
                                                                           {
                                                                              continue loop0;
                                                                           }
                                                                           loop21:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc3_.§7!O§);
                                                                              if(!(_loc5_ && _loc3_))
                                                                              {
                                                                                 §§push(§§pop().mTryToScream);
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    §§push(0);
                                                                                    if(_loc4_ || param1)
                                                                                    {
                                                                                       §§push(§§pop() <= §§pop());
                                                                                       if(_loc4_ || this)
                                                                                       {
                                                                                          if(!_loc5_)
                                                                                          {
                                                                                             §§push(Boolean(§§pop()));
                                                                                             if(_loc4_ || _loc2_)
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!§§pop())
                                                                                                   {
                                                                                                      continue loop20;
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(true);
                                                                                                      §§goto(addr117);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr117);
                                                                                          }
                                                                                          §§goto(addr202);
                                                                                       }
                                                                                       addr117:
                                                                                       while(_loc5_)
                                                                                       {
                                                                                          loop16:
                                                                                          while(true)
                                                                                          {
                                                                                             if(!(_loc4_ || param1))
                                                                                             {
                                                                                                continue loop10;
                                                                                             }
                                                                                             if(!_loc4_)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             §§pop();
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc3_.§7!O§);
                                                                                                addr138:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop().mTryToBlink);
                                                                                                   addr139:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc5_)
                                                                                                      {
                                                                                                         continue loop12;
                                                                                                      }
                                                                                                      §§push(0);
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!(_loc4_ || this))
                                                                                                         {
                                                                                                            continue loop13;
                                                                                                         }
                                                                                                         §§push(§§pop() <= §§pop());
                                                                                                         if(_loc4_)
                                                                                                         {
                                                                                                            if(!_loc4_)
                                                                                                            {
                                                                                                               continue loop24;
                                                                                                            }
                                                                                                            §§push(Boolean(§§pop()));
                                                                                                            if(_loc5_)
                                                                                                            {
                                                                                                               addr202:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!(_loc4_ || _loc3_))
                                                                                                                  {
                                                                                                                     break loop21;
                                                                                                                  }
                                                                                                                  §§pop();
                                                                                                                  continue loop21;
                                                                                                               }
                                                                                                               addr202:
                                                                                                            }
                                                                                                         }
                                                                                                         if(_loc4_ || _loc2_)
                                                                                                         {
                                                                                                            if(_loc5_ && param1)
                                                                                                            {
                                                                                                               break loop20;
                                                                                                            }
                                                                                                            continue loop1;
                                                                                                         }
                                                                                                         while(_loc4_)
                                                                                                         {
                                                                                                            §§push(§§pop());
                                                                                                            if(!_loc5_)
                                                                                                            {
                                                                                                               §§push(Boolean(§§pop()));
                                                                                                            }
                                                                                                            while(_loc4_ || param1)
                                                                                                            {
                                                                                                               if(_loc4_ || _loc2_)
                                                                                                               {
                                                                                                                  if(!§§pop())
                                                                                                                  {
                                                                                                                     continue loop16;
                                                                                                                  }
                                                                                                                  continue loop17;
                                                                                                               }
                                                                                                               continue loop8;
                                                                                                               if(_loc5_ && this)
                                                                                                               {
                                                                                                                  continue;
                                                                                                               }
                                                                                                               if(!_loc4_)
                                                                                                               {
                                                                                                                  continue loop2;
                                                                                                               }
                                                                                                               if(!§§pop())
                                                                                                               {
                                                                                                                  continue loop17;
                                                                                                               }
                                                                                                               §§goto(addr202);
                                                                                                            }
                                                                                                            continue loop9;
                                                                                                         }
                                                                                                         §§goto(addr273);
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          continue loop7;
                                                                                       }
                                                                                       return §§pop();
                                                                                    }
                                                                                    §§goto(addr142);
                                                                                 }
                                                                                 §§goto(addr139);
                                                                              }
                                                                              §§goto(addr138);
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§push(!§§pop());
                                                                              break loop20;
                                                                           }
                                                                        }
                                                                        §§goto(addr269);
                                                                     }
                                                                     §§goto(addr116);
                                                                  }
                                                                  else if(_loc4_ || this)
                                                                  {
                                                                     if(_loc4_ || param1)
                                                                     {
                                                                        continue;
                                                                     }
                                                                     continue loop11;
                                                                  }
                                                                  §§goto(addr210);
                                                               }
                                                               §§goto(addr60);
                                                            }
                                                            while(true)
                                                            {
                                                            }
                                                         }
                                                      }
                                                      addr224:
                                                   }
                                                   §§goto(addr238);
                                                }
                                             }
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr311);
                                       }
                                    }
                                    §§goto(addr312);
                                 }
                                 §§goto(addr224);
                              }
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr269);
         }
         return false;
      }
      
      public function §>z§(param1:Boolean = false) : int
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:LevelObject = null;
         §§push(0);
         if(_loc6_ || _loc2_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         var _loc3_:* = int(this.§8c§.length - 1);
         loop0:
         while(true)
         {
            §§push(_loc3_);
            if(!(_loc5_ && _loc3_))
            {
               if(§§pop() < 0)
               {
                  §§push(_loc2_);
                  break;
               }
               _loc4_ = this.§8c§[_loc3_] as LevelObject;
               if(_loc6_)
               {
                  §§push(Boolean(_loc4_));
                  loop1:
                  while(true)
                  {
                     §§push(§§pop());
                     if(_loc6_ || _loc3_)
                     {
                        §§push(Boolean(§§pop()));
                     }
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
                                 §§push(_loc4_.§"!7§());
                                 loop5:
                                 while(!(_loc5_ && _loc2_))
                                 {
                                    §§push(Boolean(§§pop()));
                                    addr199:
                                    if(!(_loc6_ || _loc3_))
                                    {
                                       continue;
                                    }
                                    §§push(Boolean(§§pop()));
                                    loop22:
                                    for(; _loc6_ || this; if(!(_loc6_ || param1))
                                    {
                                       continue;
                                    },if(!_loc5_)
                                    {
                                       addr169:
                                       if(!(_loc5_ && param1))
                                       {
                                          §§goto(addr176);
                                       }
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          if(!(_loc5_ && this))
                                          {
                                             §§push(Boolean(§§pop()));
                                          }
                                          §§goto(addr304);
                                          §§goto(addr169);
                                       }
                                       addr295:
                                    },§§goto(addr251))
                                    {
                                       if(!_loc5_)
                                       {
                                          if(!_loc5_)
                                          {
                                             §§push(§§pop());
                                             if(!_loc5_)
                                             {
                                                if(!_loc5_)
                                                {
                                                   addr224:
                                                   if(§§pop())
                                                   {
                                                      loop23:
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         loop24:
                                                         while(_loc6_ || _loc3_)
                                                         {
                                                            loop25:
                                                            while(true)
                                                            {
                                                               §§push(_loc4_.§7!O§);
                                                               if(!(_loc5_ && _loc2_))
                                                               {
                                                                  §§push(§§pop().mTryToScream);
                                                                  if(_loc6_)
                                                                  {
                                                                     addr115:
                                                                     §§push(0);
                                                                     if(_loc6_ || param1)
                                                                     {
                                                                        if(!_loc5_)
                                                                        {
                                                                           §§push(§§pop() <= §§pop());
                                                                           if(_loc5_ && param1)
                                                                           {
                                                                              continue loop22;
                                                                           }
                                                                           if(_loc5_ && _loc3_)
                                                                           {
                                                                              continue loop23;
                                                                           }
                                                                           if(!_loc5_)
                                                                           {
                                                                              if(!(_loc6_ || param1))
                                                                              {
                                                                                 break;
                                                                              }
                                                                              §§push(Boolean(§§pop()));
                                                                              continue loop22;
                                                                           }
                                                                           loop11:
                                                                           while(true)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 loop12:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(param1);
                                                                                    addr250:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(!§§pop());
                                                                                       addr251:
                                                                                       loop14:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!(_loc5_ && _loc3_))
                                                                                          {
                                                                                             §§push(Boolean(§§pop()));
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop());
                                                                                                if(!_loc5_)
                                                                                                {
                                                                                                   if(_loc5_)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   addr265:
                                                                                                   §§push(Boolean(§§pop()));
                                                                                                   while(_loc6_ || _loc2_)
                                                                                                   {
                                                                                                      if(!§§pop())
                                                                                                      {
                                                                                                         break loop22;
                                                                                                      }
                                                                                                      addr176:
                                                                                                      addr176:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            if(!_loc5_)
                                                                                                            {
                                                                                                               §§push(_loc2_);
                                                                                                               if(_loc6_)
                                                                                                               {
                                                                                                                  §§push(§§pop() + 1);
                                                                                                                  if(!_loc5_)
                                                                                                                  {
                                                                                                                     addr186:
                                                                                                                     §§push(int(§§pop()));
                                                                                                                  }
                                                                                                                  loop27:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     _loc2_ = §§pop();
                                                                                                                     addr188:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        addr51:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(_loc3_);
                                                                                                                           if(_loc6_ || _loc2_)
                                                                                                                           {
                                                                                                                              §§push(§§pop() - 1);
                                                                                                                              if(_loc6_ || this)
                                                                                                                              {
                                                                                                                                 continue loop27;
                                                                                                                              }
                                                                                                                              addr76:
                                                                                                                              _loc3_ = §§pop();
                                                                                                                              if(_loc6_)
                                                                                                                              {
                                                                                                                                 if(_loc6_ || param1)
                                                                                                                                 {
                                                                                                                                    if(!(_loc5_ && _loc2_))
                                                                                                                                    {
                                                                                                                                       if(!(_loc5_ && param1))
                                                                                                                                       {
                                                                                                                                          if(true)
                                                                                                                                          {
                                                                                                                                             break;
                                                                                                                                          }
                                                                                                                                          continue loop25;
                                                                                                                                       }
                                                                                                                                       continue loop4;
                                                                                                                                    }
                                                                                                                                    continue loop12;
                                                                                                                                 }
                                                                                                                                 continue loop24;
                                                                                                                              }
                                                                                                                              continue;
                                                                                                                           }
                                                                                                                           continue loop27;
                                                                                                                        }
                                                                                                                        continue loop0;
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr186);
                                                                                                            }
                                                                                                            §§goto(addr188);
                                                                                                         }
                                                                                                         §§goto(addr51);
                                                                                                      }
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!§§pop())
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            continue loop11;
                                                                                                         }
                                                                                                         addr247:
                                                                                                      }
                                                                                                      §§goto(addr265);
                                                                                                   }
                                                                                                   addr265:
                                                                                                }
                                                                                                §§goto(addr265);
                                                                                             }
                                                                                             continue loop2;
                                                                                             addr259:
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§pop();
                                                                                             addr316:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc4_.§0o§);
                                                                                                addr237:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(0);
                                                                                                   addr238:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop() > §§pop());
                                                                                                      break loop25;
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             continue loop14;
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr51);
                                                                           }
                                                                        }
                                                                        §§goto(addr238);
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() <= §§pop());
                                                                        if(!_loc6_)
                                                                        {
                                                                           continue loop23;
                                                                        }
                                                                        §§goto(addr199);
                                                                        §§goto(addr115);
                                                                     }
                                                                     continue loop5;
                                                                     addr196:
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     if(!_loc5_)
                                                                     {
                                                                        §§goto(addr196);
                                                                        §§push(0);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr237);
                                                                     }
                                                                  }
                                                                  addr193:
                                                               }
                                                               addr192:
                                                               while(true)
                                                               {
                                                                  §§goto(addr193);
                                                                  continue loop25;
                                                               }
                                                            }
                                                            continue loop1;
                                                         }
                                                         addr274:
                                                         while(true)
                                                         {
                                                            if(_loc6_ || param1)
                                                            {
                                                               §§goto(addr192);
                                                               §§push(_loc4_.§7!O§);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr316);
                                                            }
                                                            §§goto(addr237);
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr176);
                                                }
                                                §§goto(addr265);
                                             }
                                             §§goto(addr224);
                                          }
                                          §§goto(addr250);
                                       }
                                       §§goto(addr259);
                                    }
                                    while(true)
                                    {
                                       §§pop();
                                       §§goto(addr274);
                                       §§goto(addr207);
                                    }
                                    addr207:
                                 }
                                 continue loop3;
                              }
                           }
                        }
                        while(true)
                        {
                           §§goto(addr295);
                        }
                     }
                  }
               }
               §§goto(addr316);
            }
            break;
         }
         return §§pop();
      }
      
      public function §]V§() : int
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:LevelObject = null;
         §§push(0);
         if(!_loc5_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         var _loc3_:int = 0;
         loop0:
         for each(_loc2_ in this.§8c§)
         {
            if(_loc6_)
            {
               §§push(Boolean(_loc2_));
               while(true)
               {
                  §§push(§§pop());
                  loop2:
                  while(true)
                  {
                     §§push(Boolean(§§pop()));
                     loop3:
                     while(true)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              §§pop();
                              addr166:
                              while(true)
                              {
                                 addr120:
                                 while(true)
                                 {
                                    §§push(_loc2_.§9!&§());
                                    loop7:
                                    while(true)
                                    {
                                       §§push(Boolean(§§pop()));
                                       loop8:
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          if(!(_loc5_ && _loc2_))
                                          {
                                             if(!(_loc6_ || _loc2_))
                                             {
                                                break;
                                             }
                                             §§push(Boolean(§§pop()));
                                          }
                                          if(_loc5_ && _loc3_)
                                          {
                                             continue loop2;
                                          }
                                          if(!§§pop())
                                          {
                                             loop9:
                                             while(true)
                                             {
                                                §§pop();
                                                addr159:
                                                while(true)
                                                {
                                                   §§push(_loc2_.§8r§());
                                                   if(_loc6_ || this)
                                                   {
                                                      continue loop9;
                                                   }
                                                   addr83:
                                                   if(_loc5_)
                                                   {
                                                      break;
                                                   }
                                                   if(_loc5_ && _loc3_)
                                                   {
                                                      continue loop7;
                                                   }
                                                }
                                                continue loop8;
                                             }
                                          }
                                       }
                                       continue loop3;
                                    }
                                 }
                              }
                           }
                        }
                        loop11:
                        while(§§pop())
                        {
                           if(!(_loc5_ && _loc3_))
                           {
                              if(_loc6_ || this)
                              {
                                 §§push(_loc1_);
                                 if(_loc6_)
                                 {
                                    §§push(§§pop() + 1);
                                    if(!_loc5_)
                                    {
                                       addr114:
                                       §§push(int(§§pop()));
                                    }
                                    _loc1_ = §§pop();
                                    addr116:
                                    if(_loc6_)
                                    {
                                       while(true)
                                       {
                                          if(true)
                                          {
                                             break loop11;
                                          }
                                          §§goto(addr120);
                                       }
                                       addr118:
                                    }
                                    §§goto(addr166);
                                 }
                                 §§goto(addr114);
                              }
                              §§goto(addr159);
                           }
                           §§goto(addr116);
                        }
                        continue loop0;
                     }
                  }
                  if(!(_loc6_ || _loc3_))
                  {
                     continue;
                  }
                  §§goto(addr83);
                  §§push(Boolean(§§pop()));
               }
            }
            §§goto(addr118);
         }
         return _loc1_;
      }
      
      public function §9L§() : int
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:LevelObject = null;
         §§push(0);
         if(_loc6_ || _loc1_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         for each(_loc2_ in this.§8c§)
         {
            if(!(_loc5_ && _loc1_))
            {
               §§push(Boolean(_loc2_));
               if(_loc6_ || this)
               {
                  §§push(§§pop());
                  if(!_loc5_)
                  {
                     §§push(Boolean(§§pop()));
                  }
                  if(§§pop())
                  {
                     if(!(_loc5_ && _loc2_))
                     {
                        §§pop();
                        if(_loc6_ || this)
                        {
                           addr89:
                           §§push(_loc2_.isTexture());
                           if(_loc6_ || _loc2_)
                           {
                              addr109:
                              if(!§§pop())
                              {
                                 continue;
                              }
                              if(!(_loc6_ || _loc2_))
                              {
                                 continue;
                              }
                           }
                           §§goto(addr109);
                        }
                        §§push(_loc1_);
                        if(!(_loc5_ && _loc1_))
                        {
                           §§push(§§pop() + 1);
                           if(_loc6_)
                           {
                              addr128:
                              §§push(int(§§pop()));
                           }
                           _loc1_ = §§pop();
                           continue;
                        }
                        §§goto(addr128);
                     }
                  }
               }
               §§goto(addr109);
            }
            §§goto(addr89);
         }
         return _loc1_;
      }
      
      public function makePigsSmile(param1:Number = 1) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:LevelObject = null;
         var _loc2_:* = int(this.§8c§.length - 1);
         loop0:
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§8c§[_loc2_];
            if(!_loc4_)
            {
               §§push(Boolean(_loc3_));
               loop1:
               while(true)
               {
                  §§push(§§pop());
                  loop2:
                  while(true)
                  {
                     §§push(Boolean(§§pop()));
                     loop3:
                     while(true)
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
                                 §§push(_loc3_.§"!7§());
                                 if(!_loc4_)
                                 {
                                    §§push(Boolean(§§pop()));
                                    if(_loc5_)
                                    {
                                       while(true)
                                       {
                                          addr129:
                                          while(true)
                                          {
                                             §§push(§§pop());
                                             if(!_loc4_)
                                             {
                                                if(_loc4_ && _loc2_)
                                                {
                                                   break loop5;
                                                }
                                                §§push(Boolean(§§pop()));
                                             }
                                             if(_loc4_ && param1)
                                             {
                                                continue loop3;
                                             }
                                             if(§§pop())
                                             {
                                                loop6:
                                                while(true)
                                                {
                                                   §§pop();
                                                   addr159:
                                                   while(true)
                                                   {
                                                      addr65:
                                                      while(true)
                                                      {
                                                         §§push(_loc3_.§0o§ > 0);
                                                         if(_loc5_ || _loc2_)
                                                         {
                                                            if(_loc4_)
                                                            {
                                                               continue loop6;
                                                            }
                                                            if(_loc4_ && _loc2_)
                                                            {
                                                               continue loop4;
                                                            }
                                                            §§push(Boolean(§§pop()));
                                                         }
                                                         if(_loc4_)
                                                         {
                                                            continue loop1;
                                                         }
                                                      }
                                                      continue loop0;
                                                   }
                                                }
                                                addr158:
                                             }
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   loop9:
                                                   while(!(_loc4_ && _loc3_))
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(_loc3_.§7!O§);
                                                         §§push(LevelObjectRenderer.§9!g§);
                                                         if(!_loc4_)
                                                         {
                                                            §§push(§§pop() * param1);
                                                         }
                                                         §§pop().mTryToScream = §§pop();
                                                         loop15:
                                                         while(true)
                                                         {
                                                            addr38:
                                                            while(true)
                                                            {
                                                               §§push(_loc2_);
                                                               if(!_loc4_)
                                                               {
                                                                  §§push(§§pop() - 1);
                                                                  if(_loc5_ || param1)
                                                                  {
                                                                     addr50:
                                                                     §§push(int(§§pop()));
                                                                  }
                                                                  _loc2_ = §§pop();
                                                                  if(_loc5_)
                                                                  {
                                                                     if(_loc5_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     continue loop9;
                                                                  }
                                                                  continue loop15;
                                                               }
                                                               §§goto(addr50);
                                                               continue loop15;
                                                            }
                                                            if(_loc4_ && _loc3_)
                                                            {
                                                               continue loop5;
                                                            }
                                                            if(true)
                                                            {
                                                               continue loop0;
                                                            }
                                                            §§goto(addr65);
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr159);
                                                }
                                                §§goto(addr38);
                                             }
                                          }
                                       }
                                       addr128:
                                    }
                                    §§goto(addr158);
                                 }
                                 §§goto(addr129);
                              }
                              continue loop2;
                           }
                        }
                        §§goto(addr128);
                     }
                  }
               }
            }
            §§goto(addr108);
         }
      }
      
      public function §@!W§() : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:LevelObject = null;
         var _loc1_:* = int(this.§8c§.length - 1);
         loop0:
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§8c§[_loc1_] as LevelObject;
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
                     §§push(Boolean(§§pop()));
                     loop3:
                     while(true)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              §§pop();
                              loop5:
                              while(true)
                              {
                                 §§push(_loc2_.§'W§());
                                 if(_loc4_)
                                 {
                                    §§push(Boolean(§§pop()));
                                    if(!_loc3_)
                                    {
                                       addr128:
                                       if(!(_loc4_ || _loc3_))
                                       {
                                          break;
                                          addr135:
                                       }
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          if(!(_loc3_ && this))
                                          {
                                             if(!_loc4_)
                                             {
                                                break;
                                             }
                                             if(_loc3_ && _loc2_)
                                             {
                                                continue loop2;
                                             }
                                             §§push(Boolean(§§pop()));
                                          }
                                          if(!§§pop())
                                          {
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      if(_loc4_ || this)
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(true);
                                                            §§goto(addr115);
                                                         }
                                                         addr114:
                                                      }
                                                      while(true)
                                                      {
                                                      }
                                                   }
                                                   else
                                                   {
                                                      while(true)
                                                      {
                                                         addr46:
                                                         while(true)
                                                         {
                                                            §§push(_loc1_);
                                                            if(!_loc3_)
                                                            {
                                                               §§push(§§pop() - 1);
                                                               if(_loc4_ || _loc3_)
                                                               {
                                                                  addr58:
                                                                  §§push(int(§§pop()));
                                                               }
                                                               _loc1_ = §§pop();
                                                               if(!_loc3_)
                                                               {
                                                                  break;
                                                               }
                                                               continue;
                                                            }
                                                            §§goto(addr58);
                                                         }
                                                         if(_loc3_ && _loc1_)
                                                         {
                                                            continue loop5;
                                                         }
                                                         if(true)
                                                         {
                                                            continue loop0;
                                                         }
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(_loc2_.§0o§ > 0);
                                                      if(_loc4_ || _loc2_)
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                         if(!_loc4_)
                                                         {
                                                            break;
                                                         }
                                                      }
                                                      continue loop1;
                                                   }
                                                   addr115:
                                                   while(_loc3_)
                                                   {
                                                      while(true)
                                                      {
                                                         §§pop();
                                                      }
                                                   }
                                                   return §§pop();
                                                }
                                                §§goto(addr46);
                                             }
                                             addr103:
                                          }
                                       }
                                       continue loop3;
                                    }
                                    §§goto(addr165);
                                 }
                                 §§goto(addr128);
                              }
                           }
                        }
                        §§goto(addr135);
                     }
                  }
               }
            }
            §§goto(addr114);
         }
         return false;
      }
      
      public function isWorldAtSleep() : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:LevelObject = null;
         var _loc1_:* = int(this.§8c§.length - 1);
         loop0:
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§8c§[_loc1_] as LevelObject;
            if(!(_loc4_ && _loc2_))
            {
               §§push(Boolean(_loc2_));
               loop1:
               while(true)
               {
                  §§push(§§pop());
                  loop2:
                  while(true)
                  {
                     §§push(Boolean(§§pop()));
                     loop3:
                     while(true)
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
                                 §§push(_loc2_.§0o§);
                                 loop6:
                                 while(true)
                                 {
                                    §§push(0);
                                    addr318:
                                    while(true)
                                    {
                                       §§push(§§pop() > §§pop());
                                       addr319:
                                       while(true)
                                       {
                                          §§push(Boolean(§§pop()));
                                       }
                                    }
                                    loop27:
                                    while(true)
                                    {
                                       §§push(_loc2_.§0o§);
                                       if(!(_loc3_ || _loc2_))
                                       {
                                          continue loop6;
                                       }
                                       §§push(0);
                                       if(_loc3_ || _loc2_)
                                       {
                                          §§push(§§pop() > §§pop());
                                          if(!(_loc4_ && _loc3_))
                                          {
                                             addr103:
                                             if(!(_loc4_ && _loc3_))
                                             {
                                                if(_loc3_ || _loc2_)
                                                {
                                                   if(_loc3_)
                                                   {
                                                      §§push(Boolean(§§pop()));
                                                      if(_loc3_ || _loc2_)
                                                      {
                                                         if(!(_loc4_ && this))
                                                         {
                                                            if(_loc3_ || _loc2_)
                                                            {
                                                               while(true)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     if(_loc3_)
                                                                     {
                                                                        §§goto(addr146);
                                                                     }
                                                                     §§goto(addr178);
                                                                  }
                                                                  §§goto(addr45);
                                                               }
                                                            }
                                                            §§goto(addr312);
                                                         }
                                                         §§goto(addr201);
                                                      }
                                                      §§goto(addr146);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr319);
                                                   }
                                                }
                                                §§goto(addr200);
                                             }
                                             §§goto(addr234);
                                          }
                                          addr146:
                                          §§push(false);
                                          if(!(_loc4_ && this))
                                          {
                                             if(!(_loc4_ && _loc1_))
                                             {
                                                if(_loc3_ || _loc2_)
                                                {
                                                   return §§pop();
                                                }
                                                continue loop4;
                                             }
                                             addr263:
                                             while(_loc3_)
                                             {
                                                §§push(Boolean(§§pop()));
                                                while(true)
                                                {
                                                   addr267:
                                                   loop21:
                                                   while(true)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         §§goto(addr268);
                                                      }
                                                      addr197:
                                                      while(true)
                                                      {
                                                         §§push(_loc2_.§'W§());
                                                         addr200:
                                                         while(true)
                                                         {
                                                            §§push(Boolean(§§pop()));
                                                            addr201:
                                                            while(_loc3_)
                                                            {
                                                               §§push(§§pop());
                                                               if(!(_loc4_ && _loc2_))
                                                               {
                                                                  §§goto(addr211);
                                                               }
                                                               §§goto(addr233);
                                                            }
                                                            continue loop21;
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             loop15:
                                             while(true)
                                             {
                                                if(!§§pop())
                                                {
                                                   loop33:
                                                   while(true)
                                                   {
                                                      §§push(_loc1_);
                                                      if(_loc3_ || _loc2_)
                                                      {
                                                         §§push(§§pop() - 1);
                                                         if(!_loc4_)
                                                         {
                                                            addr57:
                                                            §§push(int(§§pop()));
                                                         }
                                                         if(_loc3_ || _loc1_)
                                                         {
                                                            addr65:
                                                            _loc1_ = §§pop();
                                                            if(!(_loc4_ && _loc1_))
                                                            {
                                                               if(_loc3_)
                                                               {
                                                                  if(false)
                                                                  {
                                                                     continue loop27;
                                                                  }
                                                                  continue loop0;
                                                               }
                                                               addr350:
                                                               addr350:
                                                               while(true)
                                                               {
                                                                  §§push(_loc2_.§17§);
                                                                  break loop33;
                                                               }
                                                            }
                                                            else
                                                            {
                                                               while(true)
                                                               {
                                                                  if(!(_loc4_ && _loc2_))
                                                                  {
                                                                     if(!_loc4_)
                                                                     {
                                                                        if(_loc4_)
                                                                        {
                                                                           break loop27;
                                                                        }
                                                                        if(!(_loc4_ && _loc3_))
                                                                        {
                                                                           continue loop33;
                                                                        }
                                                                        continue loop5;
                                                                     }
                                                                     §§goto(addr197);
                                                                  }
                                                                  break;
                                                                  §§goto(addr65);
                                                               }
                                                               §§goto(addr235);
                                                               addr178:
                                                            }
                                                         }
                                                         break;
                                                      }
                                                      §§goto(addr57);
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(§§pop() == §5s§.§#z§);
                                                      if(!(_loc4_ && this))
                                                      {
                                                         addr287:
                                                         if(!(_loc4_ && _loc1_))
                                                         {
                                                            §§push(!§§pop());
                                                            if(!_loc4_)
                                                            {
                                                               break loop15;
                                                            }
                                                            continue loop15;
                                                         }
                                                         addr322:
                                                         addr322:
                                                         while(true)
                                                         {
                                                            §§goto(addr323);
                                                            §§goto(addr287);
                                                         }
                                                      }
                                                      break loop15;
                                                   }
                                                   addr45:
                                                }
                                                §§goto(addr300);
                                             }
                                             §§goto(addr297);
                                          }
                                          addr268:
                                          §§push(false);
                                          if(!_loc3_)
                                          {
                                             loop17:
                                             while(true)
                                             {
                                                §§push(Boolean(§§pop()));
                                                if(_loc3_)
                                                {
                                                   §§push(§§pop());
                                                   loop18:
                                                   for(; _loc3_; if(_loc4_ && this)
                                                   {
                                                      continue;
                                                   },if(_loc4_ && this)
                                                   {
                                                      while(!(_loc4_ && _loc3_))
                                                      {
                                                         if(§§pop())
                                                         {
                                                            continue loop1;
                                                         }
                                                         while(true)
                                                         {
                                                            break loop32;
                                                            addr297:
                                                         }
                                                      }
                                                      continue loop3;
                                                      addr324:
                                                   },if(!§§pop())
                                                   {
                                                      continue loop28;
                                                   },while(true)
                                                   {
                                                      §§pop();
                                                      addr235:
                                                      while(true)
                                                      {
                                                         if(_loc3_ || this)
                                                         {
                                                            if(_loc3_ || _loc1_)
                                                            {
                                                               continue loop27;
                                                            }
                                                            addr300:
                                                            while(true)
                                                            {
                                                               continue loop17;
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr268);
                                                         }
                                                      }
                                                      §§goto(addr268);
                                                      §§goto(addr103);
                                                   })
                                                   {
                                                      if(!_loc3_)
                                                      {
                                                         continue loop2;
                                                      }
                                                      §§push(Boolean(§§pop()));
                                                      while(true)
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            continue loop20;
                                                         }
                                                         while(true)
                                                         {
                                                            §§pop();
                                                            break loop27;
                                                         }
                                                         addr211:
                                                         if(!(_loc4_ && this))
                                                         {
                                                            continue loop18;
                                                         }
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      §§goto(addr324);
                                                   }
                                                   addr323:
                                                }
                                                §§goto(addr312);
                                             }
                                          }
                                          return §§pop();
                                       }
                                       §§goto(addr318);
                                       §§goto(addr319);
                                    }
                                    while(true)
                                    {
                                       §§push(_loc2_.§&E§());
                                       if(!(_loc4_ && _loc3_))
                                       {
                                          if(!_loc3_)
                                          {
                                             continue loop1;
                                          }
                                          §§goto(addr263);
                                          §§push(!§§pop());
                                       }
                                       §§goto(addr267);
                                    }
                                    §§goto(addr350);
                                 }
                              }
                           }
                        }
                        while(true)
                        {
                           §§goto(addr322);
                        }
                     }
                  }
               }
            }
            §§goto(addr350);
         }
         return true;
      }
      
      public function §4J§(param1:Boolean = false) : LevelObject
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc5_:* = 0;
         var _loc6_:LevelObject = null;
         if(_loc7_)
         {
            §§push(this.isPigsAlive());
            if(_loc7_ || _loc2_)
            {
               §§push(!§§pop());
            }
            if(§§pop())
            {
               if(_loc7_ || _loc3_)
               {
                  return null;
               }
            }
         }
         var _loc2_:int = this.§8c§.length;
         §§push(1);
         if(!(_loc8_ && _loc3_))
         {
            §§push(int(§§pop() + Math.random() * this.§>z§(param1)));
         }
         var _loc3_:* = §§pop();
         §§push(0);
         if(_loc7_ || _loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
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
                  if(!_loc8_)
                  {
                     §§push(int(§§pop()));
                     if(_loc7_ || _loc2_)
                     {
                        _loc5_ = §§pop();
                        if(_loc8_ && this)
                        {
                           break;
                        }
                        do
                        {
                           §§push(_loc5_);
                        }
                        while(_loc7_ || _loc2_);
                        
                        continue loop1;
                        addr382:
                     }
                  }
                  while(true)
                  {
                     §§push(_loc2_);
                     if(_loc8_ && param1)
                     {
                        break;
                     }
                     if(§§pop() >= §§pop())
                     {
                        if(!_loc8_)
                        {
                           break loop2;
                        }
                     }
                     else
                     {
                        _loc6_ = this.§8c§[_loc5_];
                        if(_loc7_ || param1)
                        {
                           §§push(Boolean(_loc6_));
                           if(!(_loc8_ && param1))
                           {
                              §§push(§§pop());
                              if(_loc7_)
                              {
                                 §§push(Boolean(§§pop()));
                              }
                              loop5:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    addr380:
                                    while(true)
                                    {
                                       §§pop();
                                       addr381:
                                       while(true)
                                       {
                                          §§push(_loc6_.§"!7§());
                                          addr347:
                                          while(true)
                                          {
                                             §§push(Boolean(§§pop()));
                                          }
                                       }
                                    }
                                    addr380:
                                 }
                                 while(true)
                                 {
                                    loop7:
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       loop8:
                                       while(true)
                                       {
                                          §§push(Boolean(§§pop()));
                                          loop9:
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
                                                      §§push(_loc6_.§0o§);
                                                      while(true)
                                                      {
                                                         §§push(0);
                                                         while(true)
                                                         {
                                                            §§push(§§pop() > §§pop());
                                                            if(!_loc8_)
                                                            {
                                                               if(_loc7_ || param1)
                                                               {
                                                                  §§push(Boolean(§§pop()));
                                                                  while(true)
                                                                  {
                                                                     loop36:
                                                                     while(true)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           loop37:
                                                                           while(true)
                                                                           {
                                                                              §§push(param1);
                                                                              addr326:
                                                                              loop14:
                                                                              while(true)
                                                                              {
                                                                                 §§push(!§§pop());
                                                                                 loop15:
                                                                                 while(_loc7_)
                                                                                 {
                                                                                    §§push(Boolean(§§pop()));
                                                                                    if(!(_loc8_ && _loc3_))
                                                                                    {
                                                                                       §§push(§§pop());
                                                                                       loop16:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(Boolean(§§pop()));
                                                                                          loop17:
                                                                                          while(_loc7_)
                                                                                          {
                                                                                             if(!§§pop())
                                                                                             {
                                                                                                loop34:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§pop();
                                                                                                   loop27:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc6_.§7!O§);
                                                                                                      loop28:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop().mTryToBlink);
                                                                                                         addr271:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(0);
                                                                                                            addr272:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop() <= §§pop());
                                                                                                               addr273:
                                                                                                               loop31:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!(_loc8_ && this))
                                                                                                                  {
                                                                                                                     §§push(Boolean(§§pop()));
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop());
                                                                                                                        if(!_loc8_)
                                                                                                                        {
                                                                                                                           if(_loc8_ && _loc2_)
                                                                                                                           {
                                                                                                                              continue loop17;
                                                                                                                           }
                                                                                                                           if(!_loc7_)
                                                                                                                           {
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           §§push(Boolean(§§pop()));
                                                                                                                        }
                                                                                                                        if(_loc8_)
                                                                                                                        {
                                                                                                                           continue loop16;
                                                                                                                        }
                                                                                                                        if(!_loc7_)
                                                                                                                        {
                                                                                                                           continue loop9;
                                                                                                                        }
                                                                                                                        if(§§pop())
                                                                                                                        {
                                                                                                                           while(!(_loc8_ && param1))
                                                                                                                           {
                                                                                                                              §§pop();
                                                                                                                              continue loop28;
                                                                                                                              if(!(_loc7_ || param1))
                                                                                                                              {
                                                                                                                                 continue;
                                                                                                                              }
                                                                                                                              if(_loc8_ && param1)
                                                                                                                              {
                                                                                                                                 continue loop31;
                                                                                                                              }
                                                                                                                              if(!(_loc7_ || _loc3_))
                                                                                                                              {
                                                                                                                                 continue loop34;
                                                                                                                              }
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(§§pop())
                                                                                                                                 {
                                                                                                                                    loop19:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(_loc8_ && this)
                                                                                                                                       {
                                                                                                                                          continue loop11;
                                                                                                                                       }
                                                                                                                                       if(_loc7_ || param1)
                                                                                                                                       {
                                                                                                                                          §§push(_loc4_);
                                                                                                                                          if(!_loc8_)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() + 1);
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(int(§§pop()));
                                                                                                                                             }
                                                                                                                                             addr262:
                                                                                                                                          }
                                                                                                                                          loop21:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             _loc4_ = §§pop();
                                                                                                                                             loop22:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(!_loc7_)
                                                                                                                                                {
                                                                                                                                                   continue loop37;
                                                                                                                                                }
                                                                                                                                                loop23:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc4_);
                                                                                                                                                   loop24:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(§§pop() < _loc3_)
                                                                                                                                                      {
                                                                                                                                                         addr113:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc5_);
                                                                                                                                                            if(!_loc8_)
                                                                                                                                                            {
                                                                                                                                                               if(_loc8_)
                                                                                                                                                               {
                                                                                                                                                                  continue loop24;
                                                                                                                                                               }
                                                                                                                                                               if(_loc8_ && this)
                                                                                                                                                               {
                                                                                                                                                                  continue loop21;
                                                                                                                                                               }
                                                                                                                                                               §§push(§§pop() + 1);
                                                                                                                                                               if(_loc7_ || _loc3_)
                                                                                                                                                               {
                                                                                                                                                                  addr134:
                                                                                                                                                                  §§push(int(§§pop()));
                                                                                                                                                               }
                                                                                                                                                               if(!_loc8_)
                                                                                                                                                               {
                                                                                                                                                                  _loc5_ = §§pop();
                                                                                                                                                                  if(_loc7_)
                                                                                                                                                                  {
                                                                                                                                                                     if(!(_loc7_ || _loc3_))
                                                                                                                                                                     {
                                                                                                                                                                        while(_loc8_ && this)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop28;
                                                                                                                                                                        }
                                                                                                                                                                        return _loc6_;
                                                                                                                                                                     }
                                                                                                                                                                     addr162:
                                                                                                                                                                     if(!(_loc8_ && param1))
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc8_)
                                                                                                                                                                        {
                                                                                                                                                                           if(true)
                                                                                                                                                                           {
                                                                                                                                                                              break;
                                                                                                                                                                           }
                                                                                                                                                                           continue loop23;
                                                                                                                                                                        }
                                                                                                                                                                        continue loop27;
                                                                                                                                                                     }
                                                                                                                                                                     continue loop19;
                                                                                                                                                                  }
                                                                                                                                                                  if(_loc7_)
                                                                                                                                                                  {
                                                                                                                                                                     continue;
                                                                                                                                                                  }
                                                                                                                                                                  continue loop22;
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr262);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr134);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr382);
                                                                                                                                                         addr113:
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr162);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             continue loop37;
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          §§goto(addr381);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr347);
                                                                                                                                 }
                                                                                                                                 §§goto(addr113);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           continue loop14;
                                                                                                                        }
                                                                                                                        addr202:
                                                                                                                        if(!(_loc7_ || _loc2_))
                                                                                                                        {
                                                                                                                           continue;
                                                                                                                        }
                                                                                                                        if(_loc8_)
                                                                                                                        {
                                                                                                                           continue loop15;
                                                                                                                        }
                                                                                                                        if(!_loc7_)
                                                                                                                        {
                                                                                                                           continue loop10;
                                                                                                                        }
                                                                                                                        if(!(_loc8_ && _loc2_))
                                                                                                                        {
                                                                                                                           §§goto(addr221);
                                                                                                                           §§push(Boolean(§§pop()));
                                                                                                                        }
                                                                                                                        §§goto(addr347);
                                                                                                                     }
                                                                                                                     continue loop8;
                                                                                                                  }
                                                                                                                  continue loop36;
                                                                                                               }
                                                                                                               continue loop36;
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                addr342:
                                                                                             }
                                                                                             §§goto(addr242);
                                                                                          }
                                                                                          continue loop5;
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr342);
                                                                                 }
                                                                                 continue loop7;
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr113);
                                                                     }
                                                                  }
                                                                  addr323:
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr380);
                                                               }
                                                               §§goto(addr381);
                                                            }
                                                            §§goto(addr326);
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             §§goto(addr323);
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                           §§goto(addr380);
                        }
                        §§goto(addr307);
                     }
                  }
               }
               continue loop0;
            }
         }
      }
      
      public function §<o§() : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(0);
         if(_loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         var _loc2_:* = int(this.§8c§.length - 1);
         loop0:
         while(true)
         {
            §§push(_loc2_);
            loop1:
            while(_loc3_)
            {
               if(_loc3_)
               {
                  §§push(0);
                  if(_loc3_)
                  {
                     if(_loc3_)
                     {
                        if(§§pop() < §§pop())
                        {
                           if(_loc3_ || _loc3_)
                           {
                              if(_loc3_)
                              {
                                 if(!_loc4_)
                                 {
                                    §§push(_loc1_);
                                    loop2:
                                    while(_loc3_)
                                    {
                                       if(!(_loc4_ && this))
                                       {
                                          if(_loc3_)
                                          {
                                             §§push(this.§"!>§.slingshot.§<o§());
                                             loop4:
                                             while(true)
                                             {
                                                §§push(§§pop() + §§pop());
                                                if(_loc3_ || _loc3_)
                                                {
                                                   §§push(int(§§pop()));
                                                   loop5:
                                                   while(true)
                                                   {
                                                      _loc1_ = §§pop();
                                                      addr104:
                                                      addr149:
                                                      while(_loc3_ || this)
                                                      {
                                                         §§push(_loc1_);
                                                         if(_loc3_ || _loc2_)
                                                         {
                                                            if(_loc3_)
                                                            {
                                                               if(!_loc4_)
                                                               {
                                                                  return §§pop();
                                                               }
                                                               continue loop1;
                                                            }
                                                            continue loop2;
                                                         }
                                                         continue loop5;
                                                      }
                                                      addr144:
                                                      §§push(_loc1_);
                                                      §§push(LevelMain.§!!R§.getValue());
                                                      if(_loc3_ || _loc1_)
                                                      {
                                                         §§push(§§pop() + §§pop() * int((this.§8c§[_loc2_] as LevelObject).§]!3§));
                                                         break loop4;
                                                      }
                                                      loop9:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         addr201:
                                                         loop10:
                                                         while(true)
                                                         {
                                                            §§push(int(§§pop()));
                                                            addr202:
                                                            while(true)
                                                            {
                                                               _loc1_ = §§pop();
                                                               addr203:
                                                               if(!(this.§8c§[_loc2_] as LevelObject).§`O§())
                                                               {
                                                                  while(true)
                                                                  {
                                                                     addr114:
                                                                     §§push(_loc2_);
                                                                     if(!(_loc4_ && _loc2_))
                                                                     {
                                                                        break;
                                                                     }
                                                                     addr191:
                                                                     §§push((this.§8c§[_loc2_] as LevelObject).§8!&§.score);
                                                                     continue loop9;
                                                                  }
                                                                  §§push(§§pop() - 1);
                                                                  break loop2;
                                                                  addr112:
                                                               }
                                                               §§goto(addr144);
                                                               continue loop10;
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                                break;
                                             }
                                             if(!(_loc4_ && _loc3_))
                                             {
                                                addr186:
                                                _loc1_ = int(§§pop());
                                                while(true)
                                                {
                                                   §§goto(addr112);
                                                   §§goto(addr186);
                                                }
                                                addr187:
                                             }
                                             §§goto(addr201);
                                             addr84:
                                          }
                                          §§goto(addr186);
                                       }
                                       §§goto(addr114);
                                    }
                                    addr122:
                                    §§push(int(§§pop()));
                                    break;
                                 }
                                 §§goto(addr203);
                              }
                              addr126:
                              if(_loc3_ || _loc3_)
                              {
                                 continue loop0;
                              }
                              §§goto(addr187);
                           }
                           §§goto(addr104);
                        }
                        else
                        {
                           §§push(_loc1_);
                        }
                        §§goto(addr191);
                     }
                     §§goto(addr149);
                  }
                  §§goto(addr84);
               }
               §§goto(addr149);
            }
            while(true)
            {
               if(_loc3_)
               {
                  _loc2_ = §§pop();
                  §§goto(addr126);
               }
               §§goto(addr202);
               §§goto(addr122);
            }
         }
      }
      
      public function §76§(param1:LevelObject, param2:LevelObject) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param2)
         {
            §§push(param1.§'W§());
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               addr190:
               while(true)
               {
                  §§push(§§pop());
                  addr191:
                  while(true)
                  {
                     §§push(Boolean(§§pop()));
                     addr192:
                     while(true)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              §§pop();
                              addr194:
                              addr185:
                              loop5:
                              while(true)
                              {
                                 §§push(param2.§'W§());
                                 if(!(_loc4_ && param2))
                                 {
                                    addr182:
                                    §§push(Boolean(§§pop()));
                                    while(true)
                                    {
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             addr184:
                                             §§push(true);
                                             break loop5;
                                          }
                                          addr113:
                                          while(true)
                                          {
                                             §§push(param1.§]@§());
                                             continue loop0;
                                          }
                                          addr37:
                                          if(!(_loc4_ && param2))
                                          {
                                             return §§pop();
                                          }
                                       }
                                    }
                                    addr182:
                                 }
                                 break;
                              }
                              return §§pop();
                           }
                           addr193:
                        }
                        §§goto(addr182);
                     }
                  }
               }
            }
         }
         §§goto(addr184);
      }
      
      public function §#!C§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            this.mSardineCanAdded = true;
            do
            {
               this.§6-§ = 0;
            }
            while(!_loc1_);
            
         }
      }
      
      public function §%v§(param1:LevelObject, param2:LevelObject) : Boolean
      {
         var _loc20_:Boolean = true;
         var _loc21_:Boolean = false;
         var _loc18_:* = NaN;
         var _loc19_:* = NaN;
         if(_loc20_)
         {
            §§push(this.mMightyEagleAdded);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  if(_loc20_)
                  {
                     §§push(param1.§?O§());
                     loop1:
                     while(true)
                     {
                        §§push(Boolean(§§pop()));
                        if(!(_loc21_ && param2))
                        {
                           §§push(§§pop());
                           loop2:
                           while(true)
                           {
                              §§push(Boolean(§§pop()));
                              loop3:
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    addr366:
                                    while(true)
                                    {
                                       §§pop();
                                       addr367:
                                       while(true)
                                       {
                                          §§push(param2.§"!7§());
                                          addr324:
                                          while(true)
                                          {
                                             §§push(Boolean(§§pop()));
                                          }
                                       }
                                    }
                                    addr366:
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
                                             §§push(param2.§?O§());
                                             if(!_loc21_)
                                             {
                                                §§push(Boolean(§§pop()));
                                             }
                                             loop7:
                                             while(true)
                                             {
                                                §§push(§§pop());
                                                if(!(_loc21_ && param2))
                                                {
                                                   §§push(Boolean(§§pop()));
                                                }
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
                                                         while(_loc20_)
                                                         {
                                                            §§push(param1.§"!7§());
                                                            loop11:
                                                            while(true)
                                                            {
                                                               §§push(Boolean(§§pop()));
                                                               addr238:
                                                               loop33:
                                                               while(true)
                                                               {
                                                                  if(_loc21_ && param1)
                                                                  {
                                                                     continue loop11;
                                                                  }
                                                                  addr245:
                                                                  §§push(Boolean(§§pop()));
                                                                  loop20:
                                                                  while(true)
                                                                  {
                                                                     if(_loc20_)
                                                                     {
                                                                        §§push(§§pop());
                                                                        if(!_loc21_)
                                                                        {
                                                                           if(!_loc20_)
                                                                           {
                                                                              continue loop8;
                                                                           }
                                                                           §§push(Boolean(§§pop()));
                                                                        }
                                                                        loop27:
                                                                        while(true)
                                                                        {
                                                                           if(!§§pop())
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    loop18:
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc20_ || param2)
                                                                                       {
                                                                                          if(!_loc21_)
                                                                                          {
                                                                                             §§push(param1.§3g§());
                                                                                             loop19:
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc21_ && this)
                                                                                                {
                                                                                                   continue loop20;
                                                                                                }
                                                                                                if(!_loc21_)
                                                                                                {
                                                                                                   if(_loc21_ && param2)
                                                                                                   {
                                                                                                      continue loop9;
                                                                                                   }
                                                                                                   if(_loc20_)
                                                                                                   {
                                                                                                      §§push(Boolean(§§pop()));
                                                                                                      loop25:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc20_ || this)
                                                                                                         {
                                                                                                            if(_loc21_)
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            §§push(§§pop());
                                                                                                            if(!(_loc21_ && param1))
                                                                                                            {
                                                                                                               if(!_loc21_)
                                                                                                               {
                                                                                                                  continue loop2;
                                                                                                               }
                                                                                                               continue loop3;
                                                                                                            }
                                                                                                            addr216:
                                                                                                            if(!(_loc21_ && param2))
                                                                                                            {
                                                                                                               if(!§§pop())
                                                                                                               {
                                                                                                                  addr224:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(!(_loc20_ || this))
                                                                                                                     {
                                                                                                                        continue loop33;
                                                                                                                     }
                                                                                                                     §§pop();
                                                                                                                     loop24:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        addr97:
                                                                                                                        loop16:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(param2.§3g§());
                                                                                                                           if(_loc20_)
                                                                                                                           {
                                                                                                                              if(!(_loc20_ || _loc3_))
                                                                                                                              {
                                                                                                                                 continue loop5;
                                                                                                                              }
                                                                                                                              §§push(Boolean(§§pop()));
                                                                                                                           }
                                                                                                                           addr110:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(!_loc20_)
                                                                                                                              {
                                                                                                                                 break loop16;
                                                                                                                              }
                                                                                                                           }
                                                                                                                           continue loop24;
                                                                                                                        }
                                                                                                                        continue loop7;
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr224:
                                                                                                               }
                                                                                                               loop17:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     loop22:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        this.mMightyEagleTimer = 0;
                                                                                                                        loop23:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(!(_loc20_ || _loc3_))
                                                                                                                           {
                                                                                                                              continue loop18;
                                                                                                                           }
                                                                                                                           if(!_loc21_)
                                                                                                                           {
                                                                                                                              loop15:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(this.§76§(param1,param2));
                                                                                                                                 if(!(_loc21_ && this))
                                                                                                                                 {
                                                                                                                                    if(_loc20_ || param2)
                                                                                                                                    {
                                                                                                                                       if(§§pop())
                                                                                                                                       {
                                                                                                                                          if(!(_loc21_ && param1))
                                                                                                                                          {
                                                                                                                                             if(!_loc20_)
                                                                                                                                             {
                                                                                                                                                continue loop23;
                                                                                                                                             }
                                                                                                                                             if(_loc21_ && _loc3_)
                                                                                                                                             {
                                                                                                                                                continue loop22;
                                                                                                                                             }
                                                                                                                                             if(_loc20_ || this)
                                                                                                                                             {
                                                                                                                                                if(!_loc21_)
                                                                                                                                                {
                                                                                                                                                   addr69:
                                                                                                                                                   §§push(false);
                                                                                                                                                   if(_loc20_ || param2)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc21_)
                                                                                                                                                      {
                                                                                                                                                         if(_loc20_)
                                                                                                                                                         {
                                                                                                                                                            return §§pop();
                                                                                                                                                         }
                                                                                                                                                         continue loop19;
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr224);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr110);
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   addr276:
                                                                                                                                                   §§push(param1);
                                                                                                                                                   §§push(param1.§]!3§);
                                                                                                                                                   if(_loc20_ || this)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() * 2);
                                                                                                                                                   }
                                                                                                                                                   §§push(§§pop().applyDamage(§§pop(),true,true,true,false));
                                                                                                                                                   if(_loc20_)
                                                                                                                                                   {
                                                                                                                                                      §§pop();
                                                                                                                                                      addr266:
                                                                                                                                                      return true;
                                                                                                                                                      addr296:
                                                                                                                                                   }
                                                                                                                                                   addr370:
                                                                                                                                                   addr370:
                                                                                                                                                   var _loc3_:* = §§pop();
                                                                                                                                                   §§push(param1.§;!'§(param2.§8k§()));
                                                                                                                                                   if(!(_loc21_ && _loc3_))
                                                                                                                                                   {
                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                   }
                                                                                                                                                   var _loc4_:* = §§pop();
                                                                                                                                                   §§push(param1.§3v§(param2.§8k§()));
                                                                                                                                                   if(!_loc21_)
                                                                                                                                                   {
                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                   }
                                                                                                                                                   var _loc5_:* = §§pop();
                                                                                                                                                   §§push(param2.§;!'§(param1.§8k§()));
                                                                                                                                                   if(!(_loc21_ && _loc3_))
                                                                                                                                                   {
                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                   }
                                                                                                                                                   var _loc6_:* = §§pop();
                                                                                                                                                   §§push(param2.§3v§(param1.§8k§()));
                                                                                                                                                   if(_loc20_)
                                                                                                                                                   {
                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                   }
                                                                                                                                                   var _loc7_:* = §§pop();
                                                                                                                                                   §§push(param1.§9f§().GetMass());
                                                                                                                                                   if(!_loc21_)
                                                                                                                                                   {
                                                                                                                                                      §§push(param1.§9f§());
                                                                                                                                                      if(!_loc21_)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop().GetLinearVelocity().x);
                                                                                                                                                         if(!(_loc21_ && this))
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                            if(!(_loc21_ && param1))
                                                                                                                                                            {
                                                                                                                                                               addr441:
                                                                                                                                                               §§push(param2.§9f§().GetMass());
                                                                                                                                                               if(!_loc21_)
                                                                                                                                                               {
                                                                                                                                                                  addr444:
                                                                                                                                                                  §§push(§§pop() * param2.§9f§().GetLinearVelocity().x);
                                                                                                                                                               }
                                                                                                                                                               §§push(§§pop() - §§pop());
                                                                                                                                                               if(!(_loc21_ && param1))
                                                                                                                                                               {
                                                                                                                                                                  addr458:
                                                                                                                                                                  var _loc8_:Number = §§pop();
                                                                                                                                                                  §§push(param1.§9f§().GetMass());
                                                                                                                                                                  if(!(_loc21_ && param2))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(param1.§9f§());
                                                                                                                                                                     if(_loc20_ || _loc3_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop().GetLinearVelocity().y);
                                                                                                                                                                        if(!_loc21_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                           if(!(_loc21_ && this))
                                                                                                                                                                           {
                                                                                                                                                                              addr492:
                                                                                                                                                                              §§push(param2.§9f§().GetMass());
                                                                                                                                                                              if(_loc20_ || this)
                                                                                                                                                                              {
                                                                                                                                                                                 addr505:
                                                                                                                                                                                 §§push(§§pop() - §§pop() * param2.§9f§().GetLinearVelocity().y);
                                                                                                                                                                                 if(!_loc21_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr508:
                                                                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                                                                 }
                                                                                                                                                                                 var _loc9_:* = §§pop();
                                                                                                                                                                                 §§push(Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_) / _loc3_);
                                                                                                                                                                                 if(!(_loc21_ && param1))
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                                                                 }
                                                                                                                                                                                 var _loc10_:* = §§pop();
                                                                                                                                                                                 §§push(_loc4_);
                                                                                                                                                                                 if(!_loc21_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() * _loc10_);
                                                                                                                                                                                    if(_loc20_ || param2)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 var _loc11_:* = §§pop();
                                                                                                                                                                                 §§push(_loc6_);
                                                                                                                                                                                 if(!(_loc21_ && _loc3_))
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() * _loc10_);
                                                                                                                                                                                    if(_loc20_ || this)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr562:
                                                                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                                                                    }
                                                                                                                                                                                    var _loc12_:* = §§pop();
                                                                                                                                                                                    var _loc13_:Number = Math.max(0,param1.§0o§);
                                                                                                                                                                                    var _loc14_:Number = Math.max(0,param2.§0o§);
                                                                                                                                                                                    §§push(param1.applyDamage(_loc12_,true,param2.§'W§(),_loc14_ == param2.§]!3§));
                                                                                                                                                                                    if(_loc20_ || param1)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                                                                    }
                                                                                                                                                                                    var _loc15_:* = §§pop();
                                                                                                                                                                                    §§push(param2.applyDamage(_loc11_,true,param1.§'W§(),_loc13_ == param1.§]!3§));
                                                                                                                                                                                    if(_loc20_ || this)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                                                                    }
                                                                                                                                                                                    var _loc16_:* = §§pop();
                                                                                                                                                                                    §§push(false);
                                                                                                                                                                                    if(_loc20_ || param1)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(Boolean(§§pop()));
                                                                                                                                                                                    }
                                                                                                                                                                                    var _loc17_:* = §§pop();
                                                                                                                                                                                    if(_loc20_ || param1)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr1467:
                                                                                                                                                                                       if(_loc17_)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr1468:
                                                                                                                                                                                          Log.log("--- NEW COLLISION ---");
                                                                                                                                                                                          addr1473:
                                                                                                                                                                                          §§push(Log);
                                                                                                                                                                                          §§push("Mat Dam Factor1 = ");
                                                                                                                                                                                          if(!_loc21_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc4_);
                                                                                                                                                                                             if(_loc20_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                                                                if(_loc20_ || _loc3_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(" Mat Dam Factor2 = ");
                                                                                                                                                                                                   if(_loc20_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                                                                      if(_loc20_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(_loc6_);
                                                                                                                                                                                                         if(!(_loc21_ && param1))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop() + §§pop());
                                                                                                                                                                                                            if(!(_loc21_ && this))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(" Mat Vel Factor1 = ");
                                                                                                                                                                                                               if(_loc20_ || param1)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                                                                                                                  if(!_loc21_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr1431:
                                                                                                                                                                                                                     §§push(_loc5_);
                                                                                                                                                                                                                     if(_loc20_ || _loc3_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr1449:
                                                                                                                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                                                                                                                        if(_loc20_ || param2)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr1463:
                                                                                                                                                                                                                           addr1458:
                                                                                                                                                                                                                           addr1457:
                                                                                                                                                                                                                           §§push(§§pop() + " Mat Vel Factor2 = ");
                                                                                                                                                                                                                           if(_loc20_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr1461:
                                                                                                                                                                                                                              §§push(_loc7_);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§pop().log(§§pop());
                                                                                                                                                                                                                           addr1465:
                                                                                                                                                                                                                           §§push(Log);
                                                                                                                                                                                                                           §§push("Object1: ");
                                                                                                                                                                                                                           if(_loc20_ || param2)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(§§pop() + param1.§#>§);
                                                                                                                                                                                                                              if(_loc20_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(" force1 = ");
                                                                                                                                                                                                                                 if(!(_loc21_ && param2))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                    if(!_loc21_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(_loc11_);
                                                                                                                                                                                                                                       if(!(_loc21_ && _loc3_))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                          if(_loc20_ || param2)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             addr1345:
                                                                                                                                                                                                                                             §§push(" obj health1 = ");
                                                                                                                                                                                                                                             if(!(_loc21_ && this))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                if(!_loc21_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr1356:
                                                                                                                                                                                                                                                   §§push(_loc13_);
                                                                                                                                                                                                                                                   if(_loc20_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      addr1359:
                                                                                                                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                      if(!(_loc21_ && param2))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         addr1378:
                                                                                                                                                                                                                                                         addr1368:
                                                                                                                                                                                                                                                         addr1367:
                                                                                                                                                                                                                                                         §§push(§§pop() + " new health1 = ");
                                                                                                                                                                                                                                                         if(!(_loc21_ && _loc3_))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(_loc15_);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§pop().log(§§pop());
                                                                                                                                                                                                                                                         addr1380:
                                                                                                                                                                                                                                                         §§push(Log);
                                                                                                                                                                                                                                                         §§push("Object2: ");
                                                                                                                                                                                                                                                         if(_loc20_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(§§pop() + param2.§#>§);
                                                                                                                                                                                                                                                            if(!_loc21_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               addr1244:
                                                                                                                                                                                                                                                               §§push(" force2 = ");
                                                                                                                                                                                                                                                               if(!(_loc21_ && _loc3_))
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                  if(_loc20_ || param1)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(_loc12_);
                                                                                                                                                                                                                                                                     if(_loc20_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                        if(_loc20_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           addr1266:
                                                                                                                                                                                                                                                                           §§push(" obj health2 = ");
                                                                                                                                                                                                                                                                           if(_loc20_ || param1)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                              if(_loc20_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(_loc14_);
                                                                                                                                                                                                                                                                                 if(!_loc21_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                    if(_loc20_ || this)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       addr1288:
                                                                                                                                                                                                                                                                                       addr1289:
                                                                                                                                                                                                                                                                                       §§push(§§pop() + " new health2 = ");
                                                                                                                                                                                                                                                                                       if(!(_loc21_ && param2))
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          addr1298:
                                                                                                                                                                                                                                                                                          §§push(§§pop() + _loc16_);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§pop().log(§§pop());
                                                                                                                                                                                                                                                                                       addr1221:
                                                                                                                                                                                                                                                                                       addr1301:
                                                                                                                                                                                                                                                                                       §§push(Boolean(_loc15_ <= 0));
                                                                                                                                                                                                                                                                                       if(Boolean(_loc15_ <= 0))
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          addr1222:
                                                                                                                                                                                                                                                                                          if(_loc20_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§pop();
                                                                                                                                                                                                                                                                                             addr1225:
                                                                                                                                                                                                                                                                                             if(_loc20_ || _loc3_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                addr1167:
                                                                                                                                                                                                                                                                                                §§push(_loc12_);
                                                                                                                                                                                                                                                                                                §§push(0);
                                                                                                                                                                                                                                                                                                if(_loc20_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   addr1174:
                                                                                                                                                                                                                                                                                                   §§push(§§pop() != §§pop());
                                                                                                                                                                                                                                                                                                   if(!_loc21_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   if(_loc20_ || param2)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(!(_loc21_ && param1))
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         addr1188:
                                                                                                                                                                                                                                                                                                         if(§§pop())
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            if(_loc20_ || param2)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               if(_loc20_ || param2)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  addr1207:
                                                                                                                                                                                                                                                                                                                  §§push(Number((_loc12_ - _loc13_) / _loc12_));
                                                                                                                                                                                                                                                                                                                  if(_loc20_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     _loc18_ = §§pop();
                                                                                                                                                                                                                                                                                                                     addr1148:
                                                                                                                                                                                                                                                                                                                     addr1213:
                                                                                                                                                                                                                                                                                                                     §§push(_loc18_);
                                                                                                                                                                                                                                                                                                                     if(!(_loc21_ && param1))
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        if(!_loc21_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           addr1158:
                                                                                                                                                                                                                                                                                                                           §§push(_loc7_);
                                                                                                                                                                                                                                                                                                                           if(_loc20_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              addr1162:
                                                                                                                                                                                                                                                                                                                              _loc18_ = Number(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                              addr1136:
                                                                                                                                                                                                                                                                                                                              addr1161:
                                                                                                                                                                                                                                                                                                                              addr1163:
                                                                                                                                                                                                                                                                                                                              if(_loc18_ > 1)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 addr1138:
                                                                                                                                                                                                                                                                                                                                 if(!_loc21_)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    addr1141:
                                                                                                                                                                                                                                                                                                                                    §§push(Number(1));
                                                                                                                                                                                                                                                                                                                                    if(_loc20_)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       _loc18_ = §§pop();
                                                                                                                                                                                                                                                                                                                                       addr1145:
                                                                                                                                                                                                                                                                                                                                       if(_loc17_)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          addr1107:
                                                                                                                                                                                                                                                                                                                                          §§push(Log);
                                                                                                                                                                                                                                                                                                                                          §§push(param1.§#>§ + " is killed. Speed Multiplier for ");
                                                                                                                                                                                                                                                                                                                                          if(!_loc21_)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             §§push(§§pop() + param2.§#>§);
                                                                                                                                                                                                                                                                                                                                             if(_loc20_)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                addr1120:
                                                                                                                                                                                                                                                                                                                                                §§push(§§pop() + " is ");
                                                                                                                                                                                                                                                                                                                                                if(!(_loc21_ && param2))
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   §§push(§§pop() + _loc18_);
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             §§pop().log(§§pop());
                                                                                                                                                                                                                                                                                                                                             addr1133:
                                                                                                                                                                                                                                                                                                                                             §§push(param2);
                                                                                                                                                                                                                                                                                                                                             §§push(§§findproperty(b2Vec2));
                                                                                                                                                                                                                                                                                                                                             §§push(param2.§9f§().GetLinearVelocity().x);
                                                                                                                                                                                                                                                                                                                                             if(_loc20_ || param1)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                §§push(_loc18_);
                                                                                                                                                                                                                                                                                                                                                if(_loc20_)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   addr1092:
                                                                                                                                                                                                                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                   §§push(param2.§9f§().GetLinearVelocity().y);
                                                                                                                                                                                                                                                                                                                                                   if(!_loc21_)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      addr1098:
                                                                                                                                                                                                                                                                                                                                                      §§push(§§pop() * _loc18_);
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   §§pop().§2!&§(new §§pop().b2Vec2(§§pop(),§§pop()));
                                                                                                                                                                                                                                                                                                                                                   addr1037:
                                                                                                                                                                                                                                                                                                                                                   addr1103:
                                                                                                                                                                                                                                                                                                                                                   §§push(_loc16_);
                                                                                                                                                                                                                                                                                                                                                   §§push(0);
                                                                                                                                                                                                                                                                                                                                                   if(!(_loc21_ && param2))
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      if(_loc20_ || this)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         §§push(§§pop() <= §§pop());
                                                                                                                                                                                                                                                                                                                                                         if(_loc20_ || this)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            if(_loc20_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               addr1068:
                                                                                                                                                                                                                                                                                                                                                               §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                                                                                                               §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                                                                                                               if(_loc20_)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  addr1071:
                                                                                                                                                                                                                                                                                                                                                                  if(§§pop())
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     addr1072:
                                                                                                                                                                                                                                                                                                                                                                     §§pop();
                                                                                                                                                                                                                                                                                                                                                                     addr981:
                                                                                                                                                                                                                                                                                                                                                                     addr1073:
                                                                                                                                                                                                                                                                                                                                                                     §§push(Boolean(_loc11_ != 0));
                                                                                                                                                                                                                                                                                                                                                                     if(_loc20_)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        addr983:
                                                                                                                                                                                                                                                                                                                                                                        if(§§pop())
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           addr985:
                                                                                                                                                                                                                                                                                                                                                                           if(!(_loc21_ && this))
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              if(!_loc21_)
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 §§push(_loc11_);
                                                                                                                                                                                                                                                                                                                                                                                 if(_loc20_ || param2)
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    if(_loc20_ || param2)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       if(_loc20_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          addr1018:
                                                                                                                                                                                                                                                                                                                                                                                          §§push(§§pop() - _loc14_);
                                                                                                                                                                                                                                                                                                                                                                                          §§push(_loc11_);
                                                                                                                                                                                                                                                                                                                                                                                          if(_loc20_)
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             addr1025:
                                                                                                                                                                                                                                                                                                                                                                                             §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                                                                                                                                                                             if(!_loc21_)
                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                addr1024:
                                                                                                                                                                                                                                                                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                             _loc19_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                             addr1026:
                                                                                                                                                                                                                                                                                                                                                                                             if(_loc20_ || param1)
                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                §§push(_loc19_);
                                                                                                                                                                                                                                                                                                                                                                                                if(_loc20_)
                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                   if(_loc20_)
                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                      §§push(_loc5_);
                                                                                                                                                                                                                                                                                                                                                                                                      if(!_loc21_)
                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                         if(!(_loc21_ && this))
                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                            if(!(_loc21_ && param2))
                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                               addr956:
                                                                                                                                                                                                                                                                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                               if(_loc20_ || param2)
                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                  addr964:
                                                                                                                                                                                                                                                                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                                                                  if(!_loc21_)
                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                     if(!(_loc21_ && param2))
                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                        _loc19_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                        addr893:
                                                                                                                                                                                                                                                                                                                                                                                                                        addr974:
                                                                                                                                                                                                                                                                                                                                                                                                                        if(_loc19_ > 1)
                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                           if(!(_loc21_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                              if(!(_loc21_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                                 §§push(1);
                                                                                                                                                                                                                                                                                                                                                                                                                                 if(!(_loc21_ && param2))
                                                                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                                                                    addr917:
                                                                                                                                                                                                                                                                                                                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                                                                                    if(!_loc21_)
                                                                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                                                                       if(!_loc21_)
                                                                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                                                                          _loc19_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                                          addr922:
                                                                                                                                                                                                                                                                                                                                                                                                                                          if(!_loc21_)
                                                                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                                                                             if(!(_loc21_ && param2))
                                                                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                                                                addr819:
                                                                                                                                                                                                                                                                                                                                                                                                                                                §§push(_loc17_);
                                                                                                                                                                                                                                                                                                                                                                                                                                                if(!_loc21_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                                                                   if(§§pop())
                                                                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                                                                      addr822:
                                                                                                                                                                                                                                                                                                                                                                                                                                                      if(!(_loc21_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                                                                         if(!(_loc21_ && param2))
                                                                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                                                                            §§push(Log);
                                                                                                                                                                                                                                                                                                                                                                                                                                                            §§push(param2.§#>§ + " is killed. Speed Multiplier for ");
                                                                                                                                                                                                                                                                                                                                                                                                                                                            if(_loc20_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                                                                               §§push(§§pop() + param1.§#>§);
                                                                                                                                                                                                                                                                                                                                                                                                                                                               if(!_loc21_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  §§push(§§pop() + " is ");
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  if(_loc21_ && this)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  addr860:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  §§pop().log(§§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  addr862:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  if(!(_loc21_ && param1))
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     if(_loc20_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        if(!_loc21_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           if(_loc20_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              if(_loc20_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 if(!(_loc21_ && this))
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    addr780:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    §§push(param1);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    §§push(§§findproperty(b2Vec2));
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    §§push(param1.§9f§().GetLinearVelocity().x);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    if(!(_loc21_ && param2))
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       §§push(_loc19_);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       if(!_loc21_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          addr798:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          §§push(param1.§9f§().GetLinearVelocity().y);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          if(_loc20_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             addr804:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             §§push(§§pop() * _loc19_);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          §§pop().§2!&§(new §§pop().b2Vec2(§§pop(),§§pop()));
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          addr809:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          if(!(_loc21_ && param1))
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             addr691:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             §§push(_loc15_);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             if(!(_loc21_ && param2))
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                if(_loc20_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   if(!(_loc21_ && param1))
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      if(_loc20_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         addr710:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         §§push(§§pop() <= 0);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         if(!(_loc21_ && param2))
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            if(!(_loc21_ && param2))
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               addr736:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               if(!_loc21_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  if(_loc20_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     §§push(§§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     if(_loc20_ || param2)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        if(!_loc21_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           addr751:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           if(_loc20_ || this)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              if(_loc20_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 if(§§pop())
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    addr761:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    if(_loc20_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       if(!_loc21_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          if(!_loc21_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             if(_loc20_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                if(_loc20_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   if(!(_loc21_ && param2))
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      §§push(_loc16_);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      if(_loc20_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         if(_loc20_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            if(_loc20_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               if(_loc20_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  §§push(0);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  if(_loc20_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     if(!(_loc21_ && param1))
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        if(_loc20_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           if(_loc20_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              §§push(§§pop() <= §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              if(_loc20_ || param2)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 if(!_loc21_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    addr681:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    if(!_loc21_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       if(!_loc20_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr736);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr685);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr761);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr981);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr681);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr1037);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr981);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr893);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr710);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               §§goto(addr1207);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            §§goto(addr964);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         §§goto(addr917);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      §§goto(addr691);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   §§goto(addr822);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                §§goto(addr862);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr809);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr1174);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr981);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr819);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 addr685:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 return §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr1221);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr1068);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr1071);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr751);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr1221);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            §§goto(addr1072);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         §§goto(addr736);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1207);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   §§goto(addr1148);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                §§goto(addr956);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr893);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr1225);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr804);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr798);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr1213);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr1138);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr1107);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr1133);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr1026);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr922);
                                                                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                                                                               §§push(§§pop() + _loc19_);
                                                                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                                                                            §§goto(addr860);
                                                                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                                                                         §§goto(addr1073);
                                                                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                                                                      §§goto(addr974);
                                                                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                                                                   §§goto(addr780);
                                                                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                                                                §§goto(addr1068);
                                                                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr1380);
                                                                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr985);
                                                                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr1207);
                                                                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr1136);
                                                                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr1141);
                                                                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr1301);
                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr922);
                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr819);
                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr1072);
                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr1018);
                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                               §§goto(addr1037);
                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                            §§goto(addr1207);
                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1018);
                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                   §§goto(addr1025);
                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                §§goto(addr956);
                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr1103);
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr1158);
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr1162);
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr1141);
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr1024);
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr1468);
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr1145);
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr691);
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr1145);
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr983);
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               §§goto(addr1221);
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            §§goto(addr1174);
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         §§goto(addr1068);
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1167);
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   §§goto(addr1162);
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                §§goto(addr1098);
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             §§goto(addr1092);
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          §§goto(addr1120);
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       §§goto(addr1133);
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    §§goto(addr1161);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§goto(addr1163);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§goto(addr1145);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§goto(addr1207);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§goto(addr1167);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr1207);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr1221);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr1465);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr1148);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr1092);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr1221);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr1222);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr1221);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr1473);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr1467);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr1188);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr1298);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr1288);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr1289);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr1298);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr1288);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr1266);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr1244);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr1378);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr1378);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr1368);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr1367);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1359);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1378);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr1356);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr1345);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1461);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1463);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1458);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1457);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1449);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1431);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1463);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1461);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1449);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1463);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1288);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1378);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr562);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr505);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr508);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr505);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr492);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr458);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr444);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr441);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr458);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(_loc20_ || _loc3_)
                                                                                                                                                   {
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(this.mMightyEagleTimer);
                                                                                                                                                         if(!(_loc21_ && _loc3_))
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() == this.§&!U§.MIGHTY_EAGLE_WAIT_TIME);
                                                                                                                                                            if(_loc21_)
                                                                                                                                                            {
                                                                                                                                                               continue loop19;
                                                                                                                                                            }
                                                                                                                                                            if(_loc20_)
                                                                                                                                                            {
                                                                                                                                                               if(_loc21_)
                                                                                                                                                               {
                                                                                                                                                                  continue loop1;
                                                                                                                                                               }
                                                                                                                                                               §§push(Boolean(§§pop()));
                                                                                                                                                               if(!_loc21_)
                                                                                                                                                               {
                                                                                                                                                                  continue loop0;
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr224);
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr366);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr370);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      addr263:
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      if(!_loc20_)
                                                                                                                                                      {
                                                                                                                                                         break loop20;
                                                                                                                                                      }
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         continue loop15;
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                addr256:
                                                                                                                                             }
                                                                                                                                             §§goto(addr370);
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             if(!(_loc21_ && param1))
                                                                                                                                             {
                                                                                                                                                if(_loc21_ && this)
                                                                                                                                                {
                                                                                                                                                   continue loop10;
                                                                                                                                                }
                                                                                                                                                if(true)
                                                                                                                                                {
                                                                                                                                                   break;
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                §§goto(addr232);
                                                                                                                                             }
                                                                                                                                             §§goto(addr97);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    continue loop25;
                                                                                                                                 }
                                                                                                                                 §§goto(addr69);
                                                                                                                              }
                                                                                                                              addr23:
                                                                                                                              §§push(Number(10));
                                                                                                                              addr23:
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              addr327:
                                                                                                                              §§push(param2);
                                                                                                                              §§push(param2.§]!3§);
                                                                                                                              if(!(_loc21_ && _loc3_))
                                                                                                                              {
                                                                                                                                 §§push(§§pop() * 2);
                                                                                                                              }
                                                                                                                              §§push(§§pop().applyDamage(§§pop(),true,true,true,false));
                                                                                                                              if(_loc20_)
                                                                                                                              {
                                                                                                                                 §§pop();
                                                                                                                                 break loop17;
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr370);
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr23);
                                                                                                               }
                                                                                                               addr319:
                                                                                                               return true;
                                                                                                               addr347:
                                                                                                            }
                                                                                                            continue loop27;
                                                                                                         }
                                                                                                         addr255:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§pop();
                                                                                                         }
                                                                                                         §§goto(addr256);
                                                                                                      }
                                                                                                      §§goto(addr324);
                                                                                                   }
                                                                                                   §§goto(addr319);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!§§pop())
                                                                                                      {
                                                                                                         §§goto(addr233);
                                                                                                      }
                                                                                                      §§goto(addr276);
                                                                                                   }
                                                                                                   addr275:
                                                                                                }
                                                                                                §§goto(addr233);
                                                                                             }
                                                                                             continue loop11;
                                                                                          }
                                                                                          §§goto(addr347);
                                                                                       }
                                                                                       §§goto(addr296);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr23);
                                                                              }
                                                                              addr157:
                                                                           }
                                                                           §§goto(addr255);
                                                                        }
                                                                     }
                                                                     §§goto(addr266);
                                                                  }
                                                                  §§goto(addr367);
                                                               }
                                                            }
                                                         }
                                                         continue loop6;
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      §§goto(addr275);
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       §§goto(addr327);
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr366);
                     }
                  }
                  §§goto(addr367);
               }
               else
               {
                  §§push(this.mSardineCanAdded);
               }
               §§goto(addr238);
            }
         }
         §§goto(addr263);
      }
      
      public function §'!7§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:LevelObject = null;
         var _loc1_:* = int(this.§8c§.length - 1);
         loop0:
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§8c§[_loc1_] as LevelObject;
            if(!_loc3_)
            {
               §§push(_loc2_ == null);
               if(!(_loc3_ && _loc3_))
               {
                  §§push(!§§pop());
                  loop1:
                  while(true)
                  {
                     §§push(Boolean(§§pop()));
                     loop2:
                     while(true)
                     {
                        §§push(§§pop());
                        if(_loc4_ || _loc2_)
                        {
                           §§push(Boolean(§§pop()));
                        }
                        if(§§pop())
                        {
                           loop7:
                           while(true)
                           {
                              §§pop();
                              addr143:
                              while(true)
                              {
                                 addr70:
                                 while(true)
                                 {
                                    §§push(_loc2_.§"!7§());
                                    if(!_loc3_)
                                    {
                                       continue loop1;
                                    }
                                    addr82:
                                    if(_loc3_ && this)
                                    {
                                       continue loop7;
                                    }
                                    if(_loc3_ && _loc3_)
                                    {
                                       continue loop2;
                                    }
                                 }
                                 continue loop7;
                              }
                              continue loop1;
                           }
                           addr142:
                        }
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(_loc4_)
                              {
                                 if(!_loc3_)
                                 {
                                    this.§&U§(_loc1_,true,true,true);
                                    addr119:
                                    loop8:
                                    while(true)
                                    {
                                       addr41:
                                       while(true)
                                       {
                                          §§push(_loc1_);
                                          if(!_loc3_)
                                          {
                                             §§push(§§pop() - 1);
                                             if(_loc4_)
                                             {
                                                §§push(int(§§pop()));
                                             }
                                          }
                                          _loc1_ = §§pop();
                                          if(!(_loc3_ && _loc2_))
                                          {
                                             break;
                                          }
                                          continue loop8;
                                       }
                                       if(true)
                                       {
                                          continue loop0;
                                       }
                                       §§goto(addr70);
                                    }
                                    addr119:
                                 }
                                 §§goto(addr143);
                              }
                              §§goto(addr119);
                           }
                           §§goto(addr41);
                           §§goto(addr89);
                        }
                     }
                  }
               }
               §§goto(addr142);
            }
            §§goto(addr119);
         }
      }
      
      public function §8h§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:LevelObject = null;
         var _loc1_:* = int(this.§8c§.length - 1);
         loop0:
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§8c§[_loc1_] as LevelObject;
            if(_loc3_)
            {
               §§push(_loc2_ == null);
               if(_loc3_)
               {
                  §§push(!§§pop());
                  loop1:
                  while(true)
                  {
                     §§push(Boolean(§§pop()));
                     loop2:
                     while(true)
                     {
                        §§push(§§pop());
                        if(!_loc4_)
                        {
                           §§push(Boolean(§§pop()));
                        }
                        if(§§pop())
                        {
                           loop8:
                           while(true)
                           {
                              §§pop();
                              addr132:
                              loop6:
                              while(true)
                              {
                                 addr75:
                                 while(true)
                                 {
                                    §§push(_loc2_.§#!B§());
                                    if(_loc3_)
                                    {
                                       if(_loc4_ && _loc1_)
                                       {
                                          continue loop2;
                                       }
                                       if(!_loc3_)
                                       {
                                          continue loop1;
                                       }
                                       §§push(Boolean(§§pop()));
                                    }
                                    if(!_loc4_)
                                    {
                                       break loop6;
                                    }
                                    continue loop8;
                                 }
                                 continue loop8;
                              }
                           }
                           addr131:
                        }
                        while(true)
                        {
                           if(§§pop())
                           {
                              loop4:
                              while(true)
                              {
                                 this.§&U§(_loc1_,true,true,true);
                                 loop5:
                                 while(!(_loc4_ && _loc1_))
                                 {
                                    while(true)
                                    {
                                       §§push(_loc1_);
                                       if(_loc3_ || _loc2_)
                                       {
                                          §§push(§§pop() - 1);
                                          if(_loc3_)
                                          {
                                             §§push(int(§§pop()));
                                          }
                                       }
                                       _loc1_ = §§pop();
                                       if(_loc3_)
                                       {
                                          if(_loc3_ || _loc2_)
                                          {
                                             while(false)
                                             {
                                                §§goto(addr75);
                                             }
                                             continue loop0;
                                             addr73:
                                          }
                                          continue loop4;
                                       }
                                       continue loop5;
                                    }
                                 }
                                 §§goto(addr132);
                              }
                           }
                           §§goto(addr40);
                        }
                     }
                  }
               }
               §§goto(addr131);
            }
            §§goto(addr73);
         }
      }
      
      public function §[!=§() : int
      {
         return this.§8c§.length;
      }
      
      public function §5!H§(param1:LevelModel) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc4_:LevelObject = null;
         var _loc5_:§+H§ = null;
         var _loc6_:§3V§ = null;
         var _loc7_:§>!G§ = null;
         var _loc2_:* = Number(0);
         loop0:
         while(true)
         {
            §§push(_loc2_);
            if(_loc9_)
            {
               if(§§pop() >= this.§8c§.length)
               {
                  §§push(Number(0));
                  break;
               }
               _loc4_ = this.§8c§[_loc2_];
               if(_loc9_)
               {
                  §§push(_loc4_.§#!S§);
                  if(!_loc8_)
                  {
                     §§push(!§§pop());
                     if(!(_loc8_ && _loc3_))
                     {
                        if(§§pop())
                        {
                           if(!(_loc8_ && _loc2_))
                           {
                              addr62:
                           }
                           else
                           {
                              addr73:
                           }
                        }
                        else
                        {
                           addr65:
                           if(_loc4_.isGround())
                           {
                              if(!(_loc9_ || _loc3_))
                              {
                                 continue;
                              }
                              §§goto(addr73);
                           }
                           else
                           {
                              _loc5_ = new §+H§();
                              if(_loc9_ || param1)
                              {
                                 _loc5_.angle = _loc4_.§=Y§();
                              }
                              while(true)
                              {
                                 _loc5_.id = _loc4_.§#>§;
                                 while(_loc9_ || _loc2_)
                                 {
                                    _loc5_.x = _loc4_.§9f§().GetPosition().x;
                                    while(_loc9_)
                                    {
                                       _loc5_.y = _loc4_.§9f§().GetPosition().y;
                                       loop4:
                                       while(_loc9_ || this)
                                       {
                                          do
                                          {
                                             _loc5_.uniqueID = _loc4_.uniqueID;
                                             do
                                             {
                                                param1.addObject(_loc5_);
                                             }
                                             while(_loc8_ && param1);
                                             
                                             if(!_loc8_)
                                             {
                                                continue;
                                             }
                                             continue loop4;
                                          }
                                          while(false);
                                          
                                          §§push(_loc2_);
                                          if(_loc9_ || _loc2_)
                                          {
                                             §§push(§§pop() + 1);
                                             if(_loc9_ || this)
                                             {
                                                §§push(Number(§§pop()));
                                             }
                                          }
                                          _loc2_ = §§pop();
                                          continue loop0;
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr161);
                     }
                  }
                  §§goto(addr65);
               }
               §§goto(addr62);
            }
            break;
         }
         var _loc3_:* = §§pop();
         if(_loc9_ || _loc2_)
         {
            while(_loc3_ < this.§=![§.length)
            {
               _loc7_ = this.§=![§[_loc3_];
               _loc6_ = new §3V§(_loc7_.type,_loc7_.index1,_loc7_.index2,_loc7_.point1,_loc7_.point2,_loc7_.§>!H§,_loc7_.§in §,_loc7_.lowerLimit,_loc7_.upperLimit,_loc7_.§3-§,_loc7_.motorSpeed,_loc7_.§=!h§,_loc7_.maxTorque);
               if(!(_loc8_ && this))
               {
                  param1.§&8§(_loc6_);
                  if(_loc8_ && _loc3_)
                  {
                     continue;
                  }
               }
               §§push(_loc3_);
               if(_loc9_)
               {
                  §§push(§§pop() + 1);
                  if(!(_loc8_ && _loc3_))
                  {
                     §§push(Number(§§pop()));
                  }
               }
               _loc3_ = §§pop();
            }
         }
      }
      
      public function §5!&§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(0);
         if(!(_loc2_ && _loc3_))
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         while(true)
         {
            if(this.§8c§.length <= _loc1_)
            {
               if(_loc3_ || _loc1_)
               {
                  break;
               }
               addr64:
               if(!_loc2_)
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     continue;
                  }
                  addr92:
                  §§push(_loc1_);
                  if(!(_loc2_ && _loc3_))
                  {
                     §§push(§§pop() + 1);
                     if(!_loc2_)
                     {
                        §§push(int(§§pop()));
                     }
                  }
                  _loc1_ = §§pop();
               }
               continue;
            }
            if(!this.§8c§[_loc1_].isGround())
            {
               this.§"!A§(this.§8c§[_loc1_]);
               §§goto(addr64);
            }
            §§goto(addr92);
         }
      }
      
      public function §!!K§(param1:Point, param2:Point) : Array
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:Array = new Array();
         var _loc4_:* = Number(0);
         while(true)
         {
            §§push(_loc4_);
            if(_loc5_)
            {
               if(§§pop() >= this.§8c§.length)
               {
                  if(_loc5_ || param2)
                  {
                     break;
                  }
                  while(!_loc5_)
                  {
                     while(true)
                     {
                     }
                  }
                  continue;
                  addr62:
               }
               else if(this.§8c§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
               {
                  if(!(_loc6_ && _loc3_))
                  {
                     _loc3_.push(this.§8c§[_loc4_]);
                  }
                  §§goto(addr105);
               }
               while(true)
               {
                  §§push(_loc4_);
                  if(!_loc6_)
                  {
                     §§push(§§pop() + 1);
                     if(!_loc6_)
                     {
                        §§push(Number(§§pop()));
                     }
                  }
               }
            }
            while(true)
            {
               _loc4_ = §§pop();
               §§goto(addr62);
            }
         }
         return _loc3_;
      }
      
      public function setGroundTextureEnabled(param1:Boolean) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param1))
         {
            this.§-R§ = param1;
            if(_loc3_)
            {
               addr28:
               this.§[B§(param1);
            }
            var _loc2_:* = Number(0);
            while(true)
            {
               §§push(_loc2_);
               if(!(_loc4_ && _loc2_))
               {
                  if(_loc3_ || _loc3_)
                  {
                     if(§§pop() >= this.§8c§.length)
                     {
                        if(!(_loc3_ || param1))
                        {
                           continue;
                        }
                        if(!(_loc4_ && this))
                        {
                           if(!_loc4_)
                           {
                              break;
                           }
                           addr111:
                           this.§8c§[_loc2_].sprite.visible = !this.§-R§;
                        }
                     }
                     else if(this.§8c§[_loc2_].isTexture())
                     {
                        §§goto(addr111);
                     }
                     addr101:
                     §§push(_loc2_);
                     if(!_loc4_)
                     {
                        §§push(§§pop() + 1);
                     }
                     _loc2_ = §§pop();
                     continue;
                  }
                  §§push(Number(§§pop()));
               }
               §§goto(addr101);
            }
            return;
         }
         §§goto(addr28);
      }
      
      public function setDamageEnabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§"R§ = param1;
         }
      }
      
      public function §+!]§() : Boolean
      {
         return this.§"R§;
      }
      
      public function §]D§() : int
      {
         return this.§<D§;
      }
      
      public function §!!J§() : int
      {
         return this.§+R§;
      }
      
      public function §2z§(param1:String) : LevelObject
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:LevelObject = null;
         §§push(0);
         if(!(_loc5_ && _loc3_))
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         while(true)
         {
            if(_loc2_ >= this.§8c§.length)
            {
               return null;
            }
            _loc3_ = this.§8c§[_loc2_] as LevelObject;
            if(_loc5_ && _loc2_)
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
            §§push(_loc2_);
            if(!_loc5_)
            {
               §§push(§§pop() + 1);
               if(_loc5_ && this)
               {
                  continue;
               }
            }
            §§push(int(§§pop()));
         }
         return _loc3_;
      }
   }
}
