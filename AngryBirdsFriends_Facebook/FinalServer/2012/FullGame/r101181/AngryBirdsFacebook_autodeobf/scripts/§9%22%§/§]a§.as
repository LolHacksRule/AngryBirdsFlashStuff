package §9"%§
{
   import §#!e§.§1"B§;
   import §#]§.b2Vec2;
   import §%Q§.§4u§;
   import §%Q§.§6G§;
   import §%Q§.§9!n§;
   import §%Q§.§;!y§;
   import §%Q§.§@d§;
   import §0!R§.Texture;
   import §1!$§.§0!N§;
   import §1!$§.Sprite;
   import §6!B§.§>!E§;
   import §6!D§.§3!K§;
   import §6o§.§+!k§;
   import §8g§.§3"6§;
   import §8g§.§3";§;
   import §8g§.§;!@§;
   import §8g§.§?!V§;
   import §8k§.b2PrismaticJoint;
   import §8k§.b2WeldJoint;
   import §9"!§.§4"F§;
   import §9"!§.§9!Z§;
   import §9"!§.§9"3§;
   import §9"!§.§?E§;
   import §<u§.§8,§;
   import §]!4§.§'G§;
   import §]!4§.§^!f§;
   import flash.display.BitmapData;
   import flash.display.BitmapDataChannel;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §]a§
   {
       
      
      protected var §=",§:Vector.<§&!r§>;
      
      protected var §5!b§:int;
      
      public var §@O§:§9"3§;
      
      public var § '§:Vector.<§^!x§>;
      
      protected var §#"3§:Sprite;
      
      protected var §6"-§:Sprite;
      
      private var §,!&§:Sprite;
      
      private var §7"C§:Sprite;
      
      private var §]Q§:Sprite;
      
      protected var §3O§:Vector.<Texture>;
      
      protected var §6'§:Vector.<§3";§>;
      
      protected var §0n§:int = 1;
      
      public var mMightyEagleAdded:Boolean = false;
      
      public var mMightyEagleHasTouchedGround:Boolean = false;
      
      public var §@s§:Boolean = false;
      
      public var mSardineCanAdded:Boolean = false;
      
      public var mMightyEagleTimer:Number = 0;
      
      protected var §3!q§:Boolean = false;
      
      protected var §1"&§:Number;
      
      protected var §^c§:int;
      
      protected var §[+§:Vector.<§;!@§>;
      
      protected var §&D§:int = 0;
      
      private var get:int = 0;
      
      private var § !U§:int = 0;
      
      protected var §+I§:int;
      
      private var §3!e§:Boolean = true;
      
      private var §^R§:Boolean = true;
      
      public function §]a§(param1:§9"3§, param2:§1"B§, param3:Sprite)
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         var _loc5_:§3";§ = null;
         var _loc6_:§3"6§ = null;
         var _loc7_:§&!r§ = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:§&!r§ = null;
         var _loc11_:§&!r§ = null;
         if(_loc15_ || this)
         {
            this.§=",§ = new Vector.<§&!r§>();
            while(true)
            {
               this.§ '§ = new Vector.<§^!x§>();
               loop1:
               while(true)
               {
                  this.§3O§ = new Vector.<Texture>();
                  while(true)
                  {
                     this.§1"&§ = this.§4"F§.SARDINE_CAN_INITIAL_ROTATION_SPEED;
                     while(true)
                     {
                        this.§[+§ = new Vector.<§;!@§>();
                        loop4:
                        while(true)
                        {
                           super();
                           loop5:
                           while(true)
                           {
                              this.§@O§ = param1;
                              while(true)
                              {
                                 this.§5!b§ = 0;
                                 continue loop4;
                                 addr140:
                                 if(_loc15_ || param1)
                                 {
                                    if(!_loc14_)
                                    {
                                       continue loop1;
                                    }
                                    continue loop5;
                                 }
                              }
                           }
                        }
                        if(!(_loc15_ || param2))
                        {
                           continue;
                        }
                        §§goto(addr172);
                     }
                  }
               }
               while(_loc15_ || param1)
               {
                  this.§#"3§ = new Sprite();
                  §§goto(addr244);
               }
            }
         }
         §§goto(addr238);
      }
      
      protected function get §4"F§() : Class
      {
         return §4"F§;
      }
      
      public function get §9" §() : Sprite
      {
         return this.§]Q§;
      }
      
      public function get mainSprite() : Sprite
      {
         return this.§6"-§;
      }
      
      public function get §'!!§() : Sprite
      {
         return this.§7"C§;
      }
      
      public function dispose() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:Texture = null;
         while(true)
         {
            if(this.§=",§.length > 0)
            {
               this.§^U§(0);
               continue;
            }
            while(true)
            {
               this.§=",§ = null;
               loop2:
               while(true)
               {
                  this.§[+§ = null;
                  loop3:
                  while(true)
                  {
                     §§push(this.§6"-§);
                     if(_loc2_ || this)
                     {
                        if(!§§pop())
                        {
                           break;
                        }
                        if(!_loc2_)
                        {
                           §§goto(addr183);
                        }
                        §§push(this.§6"-§);
                     }
                     §§pop().dispose();
                     loop4:
                     while(true)
                     {
                        this.§6"-§ = null;
                        while(_loc2_ || _loc2_)
                        {
                           this.§#"3§ = null;
                           continue loop4;
                           if(!(_loc3_ && this))
                           {
                              continue loop3;
                           }
                        }
                        continue loop2;
                     }
                  }
                  addr178:
                  if(this.§3O§.length > 0)
                  {
                     _loc1_ = this.§3O§.pop();
                     if(!(_loc3_ && _loc1_))
                     {
                        this.§@O§.textureManager.unregisterBitmapDataTexture(_loc1_);
                     }
                     §§goto(addr178);
                  }
                  addr183:
                  return;
               }
            }
         }
      }
      
      private function § !C§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§#"3§.visible = param1;
         }
      }
      
      private function §+@§() : void
      {
         var _loc16_:Boolean = false;
         var _loc17_:Boolean = true;
         var _loc3_:§&!r§ = null;
         var _loc4_:Rectangle = null;
         var _loc5_:* = NaN;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         var _loc8_:* = 0;
         var _loc9_:* = 0;
         var _loc10_:BitmapData = null;
         var _loc11_:BitmapData = null;
         var _loc12_:Texture = null;
         var _loc13_:§0!N§ = null;
         var _loc1_:Rectangle = null;
         var _loc2_:Vector.<§&!r§> = new Vector.<§&!r§>();
         for each(_loc3_ in this.§=",§)
         {
            if(_loc17_)
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
            _loc4_ = _loc3_.sprite.getBounds(this.§6"-§);
            if(_loc17_ || _loc3_)
            {
               if(_loc1_ != null)
               {
                  _loc1_ = _loc1_.union(_loc4_);
                  continue;
               }
            }
            _loc1_ = new Rectangle(_loc4_.x,_loc4_.y,_loc4_.width,_loc4_.height);
         }
         if(!(_loc16_ && _loc1_))
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
                     addr331:
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
                                       addr253:
                                       do
                                       {
                                          if(!_loc17_)
                                          {
                                             continue loop4;
                                          }
                                          §§push(_loc1_.height > 2048);
                                          if(_loc16_)
                                          {
                                             continue loop7;
                                          }
                                       }
                                       while(!(_loc16_ && this));
                                       
                                       continue loop6;
                                    }
                                 }
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       loop10:
                                       while(true)
                                       {
                                          §§push(int(_loc1_.width));
                                          addr236:
                                          while(_loc17_ || _loc2_)
                                          {
                                             _loc6_ = §§pop();
                                             loop12:
                                             while(true)
                                             {
                                                §§push(int(_loc1_.height));
                                                loop13:
                                                while(true)
                                                {
                                                   _loc7_ = §§pop();
                                                   loop14:
                                                   while(true)
                                                   {
                                                      if(!(_loc16_ && this))
                                                      {
                                                         loop15:
                                                         while(true)
                                                         {
                                                            §§push(int(_loc1_.left));
                                                            addr155:
                                                            while(!_loc16_)
                                                            {
                                                               _loc8_ = §§pop();
                                                               while(true)
                                                               {
                                                                  if(_loc17_ || _loc1_)
                                                                  {
                                                                     continue loop10;
                                                                  }
                                                                  continue loop14;
                                                                  addr132:
                                                                  _loc9_ = §§pop();
                                                                  if(_loc16_ && _loc1_)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  if(_loc16_)
                                                                  {
                                                                     break loop15;
                                                                  }
                                                                  if(_loc16_ && _loc1_)
                                                                  {
                                                                     break loop14;
                                                                  }
                                                                  if(false)
                                                                  {
                                                                     continue loop15;
                                                                  }
                                                                  _loc10_ = new BitmapData(_loc6_,_loc7_,true,0);
                                                                  if(!(_loc16_ && _loc2_))
                                                                  {
                                                                     this.§2"2§(_loc10_.rect,_loc10_,_loc5_);
                                                                  }
                                                                  _loc11_ = this.§!y§(_loc2_,_loc6_,_loc7_,_loc8_,_loc9_,_loc5_);
                                                                  if(!(_loc16_ && this))
                                                                  {
                                                                     _loc10_.copyChannel(_loc11_,_loc11_.rect,new Point(0,0),BitmapDataChannel.ALPHA,BitmapDataChannel.ALPHA);
                                                                  }
                                                                  _loc12_ = this.§@O§.textureManager.getTextureFromBitmapData(_loc10_);
                                                                  if(_loc17_)
                                                                  {
                                                                     this.§3O§.push(_loc12_);
                                                                  }
                                                                  (_loc13_ = new §0!N§(_loc12_)).x = _loc8_ / _loc5_;
                                                                  if(!_loc16_)
                                                                  {
                                                                     _loc13_.y = _loc9_ / _loc5_;
                                                                  }
                                                                  _loc13_.scaleX = 1 / _loc5_;
                                                                  _loc13_.scaleY = 1 / _loc5_;
                                                                  addr424:
                                                                  this.§#"3§.addChild(_loc13_);
                                                                  addr460:
                                                                  addr473:
                                                                  if(_loc17_ || _loc2_)
                                                                  {
                                                                     if(!(_loc16_ && this))
                                                                     {
                                                                        _loc11_.dispose();
                                                                        if(_loc17_ || _loc2_)
                                                                        {
                                                                           if(!_loc16_)
                                                                           {
                                                                              if(false)
                                                                              {
                                                                                 §§goto(addr424);
                                                                              }
                                                                              §§goto(addr474);
                                                                           }
                                                                           §§goto(addr460);
                                                                        }
                                                                        §§goto(addr424);
                                                                     }
                                                                     §§goto(addr473);
                                                                  }
                                                                  addr467:
                                                                  §§goto(addr467);
                                                               }
                                                               continue loop5;
                                                            }
                                                            continue loop13;
                                                         }
                                                         continue loop12;
                                                      }
                                                   }
                                                   addr316:
                                                   _loc1_.right /= 2;
                                                   addr308:
                                                   addr286:
                                                   _loc1_.bottom /= 2;
                                                   if(!(_loc16_ && this))
                                                   {
                                                      continue loop1;
                                                   }
                                                   §§goto(addr308);
                                                }
                                             }
                                          }
                                          continue loop2;
                                       }
                                    }
                                    else
                                    {
                                       _loc1_.left /= 2;
                                    }
                                    _loc1_.top /= 2;
                                    §§goto(addr316);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
            addr474:
            return;
         }
         §§goto(addr300);
      }
      
      private function §!y§(param1:Vector.<§&!r§>, param2:int, param3:int, param4:int, param5:int, param6:Number) : BitmapData
      {
         var _loc16_:Boolean = false;
         var _loc17_:Boolean = true;
         var _loc7_:§&!r§ = null;
         var _loc11_:§@d§ = null;
         var _loc12_:Array = null;
         var _loc13_:Rectangle = null;
         var _loc8_:BitmapData = new BitmapData(param2,param3,true,0);
         var _loc9_:BitmapData = new BitmapData(1,1,true,4294967295);
         var _loc10_:Matrix = new Matrix();
         loop0:
         for each(_loc7_ in param1)
         {
            _loc12_ = (_loc11_ = _loc7_.§3!4§.shape).§8!b§();
            _loc13_ = new Rectangle(_loc12_[0].x / §9"3§.§'"F§ * param6,_loc12_[0].y / §9"3§.§'"F§ * param6,(_loc12_[1].x - _loc12_[0].x) / §9"3§.§'"F§ * param6,(_loc12_[1].y - _loc12_[0].y) / §9"3§.§'"F§ * param6);
            if(_loc17_ || param2)
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
                     while(_loc17_)
                     {
                        if(_loc16_)
                        {
                           continue loop1;
                        }
                        _loc10_.rotate((360 - _loc7_.§,!G§()) / 180 * Math.PI);
                        while(true)
                        {
                           addr154:
                           addr145:
                           while(true)
                           {
                              _loc10_.translate(_loc7_.sprite.x * param6 - param4,_loc7_.sprite.y * param6 - param5);
                              addr171:
                              while(_loc17_)
                              {
                              }
                              continue loop3;
                           }
                           if(!(_loc17_ || this))
                           {
                              continue;
                           }
                           if(true)
                           {
                              continue loop0;
                           }
                           §§goto(addr154);
                        }
                     }
                  }
               }
            }
            while(true)
            {
               _loc8_.draw(_loc9_,_loc10_);
               if(!_loc16_)
               {
                  §§goto(addr145);
               }
               §§goto(addr171);
            }
         }
         if(!_loc16_)
         {
            _loc9_.dispose();
         }
         return _loc8_;
      }
      
      private function §2"2§(param1:Rectangle, param2:BitmapData, param3:Number) : void
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
         var _loc15_:* = 0;
         §§push(this.§@O§.background.§+!L§());
         if(!_loc16_)
         {
            §§push(§§pop());
         }
         var _loc4_:* = §§pop();
         var _loc5_:§3!K§;
         if(_loc5_ = this.§@O§.backgroundTextureManager.§>s§(_loc4_))
         {
            _loc6_ = new BitmapData(_loc5_.bitmapData.width * param3,_loc5_.bitmapData.height * param3);
            (_loc7_ = new Matrix()).scale(param3,param3);
            if(!(_loc16_ && param3))
            {
               _loc6_.draw(_loc5_.bitmapData,_loc7_,null,null,null,true);
               loop0:
               while(true)
               {
                  §§push(int(_loc6_.width));
                  while(true)
                  {
                     _loc8_ = §§pop();
                     addr337:
                     if(!(_loc17_ || param1))
                     {
                        continue;
                     }
                     _loc12_ = §§pop();
                     loop21:
                     for(; !(_loc16_ && this); while(true)
                     {
                        if(_loc16_ && this)
                        {
                           continue loop21;
                        }
                        if(_loc17_ || param2)
                        {
                           continue loop0;
                        }
                        §§goto(addr398);
                        §§goto(addr216);
                     },continue loop0)
                     {
                        if(param1.left < 0)
                        {
                           continue;
                        }
                        loop26:
                        while(true)
                        {
                           §§push(param1.right / _loc8_);
                           if(_loc17_)
                           {
                              if(!_loc16_)
                              {
                                 §§push(int(§§pop()));
                                 if(!(_loc16_ && param2))
                                 {
                                    addr241:
                                    if(_loc17_ || this)
                                    {
                                       §§push(§§pop());
                                       if(!(_loc16_ && this))
                                       {
                                          _loc13_ = §§pop();
                                          if(_loc17_ || param3)
                                          {
                                             addr264:
                                             if(!_loc16_)
                                             {
                                                §§push(§§pop() + 1);
                                                loop27:
                                                while(true)
                                                {
                                                   if(!_loc16_)
                                                   {
                                                      if(!_loc16_)
                                                      {
                                                         _loc13_ = §§pop();
                                                         for(; !_loc16_; _loc14_ = §§pop(),if(!(_loc17_ || param1))
                                                         {
                                                            continue;
                                                         },if(_loc16_ && param1)
                                                         {
                                                            continue loop21;
                                                         },addr86:,§§push(_loc14_),if(!(_loc16_ && param2))
                                                         {
                                                            §§push(_loc13_);
                                                            if(_loc17_ || param1)
                                                            {
                                                               if(§§pop() >= §§pop())
                                                               {
                                                                  if(!_loc16_)
                                                                  {
                                                                     if(_loc17_ || this)
                                                                     {
                                                                        _loc6_.dispose();
                                                                        addr115:
                                                                        if(!_loc16_)
                                                                        {
                                                                           if(_loc17_ || param1)
                                                                           {
                                                                              if(false)
                                                                              {
                                                                                 addr126:
                                                                                 §§push(_loc15_);
                                                                                 if(!(_loc16_ && this))
                                                                                 {
                                                                                    addr136:
                                                                                    if(§§pop() >= _loc11_)
                                                                                    {
                                                                                       if(!_loc16_)
                                                                                       {
                                                                                          _loc14_++;
                                                                                          addr140:
                                                                                          §§goto(addr86);
                                                                                       }
                                                                                       §§goto(addr140);
                                                                                    }
                                                                                    param2.copyPixels(_loc6_,_loc6_.rect,new Point(_loc14_ * _loc8_,_loc15_ * _loc9_));
                                                                                    _loc15_++;
                                                                                    addr143:
                                                                                    if(_loc17_ || param1)
                                                                                    {
                                                                                       §§goto(addr126);
                                                                                    }
                                                                                    addr167:
                                                                                    §§goto(addr167);
                                                                                 }
                                                                                 addr180:
                                                                                 _loc15_ = §§pop();
                                                                                 §§goto(addr126);
                                                                                 addr181:
                                                                              }
                                                                              §§goto(addr415);
                                                                           }
                                                                           §§goto(addr181);
                                                                        }
                                                                        §§goto(addr143);
                                                                     }
                                                                     §§goto(addr140);
                                                                  }
                                                                  §§goto(addr115);
                                                               }
                                                               §§push(_loc10_);
                                                               if(_loc17_ || param1)
                                                               {
                                                                  §§push(int(§§pop()));
                                                               }
                                                               §§goto(addr180);
                                                            }
                                                            §§goto(addr136);
                                                         },§§goto(addr126))
                                                         {
                                                            if(_loc17_)
                                                            {
                                                               §§push(_loc12_);
                                                               if(_loc17_)
                                                               {
                                                                  continue loop27;
                                                               }
                                                               addr206:
                                                               if(_loc17_)
                                                               {
                                                                  continue;
                                                               }
                                                               addr391:
                                                               while(true)
                                                               {
                                                                  _loc10_ = §§pop();
                                                                  addr392:
                                                                  while(true)
                                                                  {
                                                                     if(param1.top < 0)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc10_);
                                                                           addr372:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop() - 1);
                                                                              addr373:
                                                                              while(true)
                                                                              {
                                                                                 _loc10_ = §§pop();
                                                                                 addr384:
                                                                                 while(true)
                                                                                 {
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        addr371:
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§push(param1.bottom / _loc9_);
                                                                        addr358:
                                                                        while(true)
                                                                        {
                                                                           §§push(int(§§pop()));
                                                                           addr359:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop());
                                                                              addr360:
                                                                              while(true)
                                                                              {
                                                                                 _loc11_ = §§pop();
                                                                                 addr361:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop() + 1);
                                                                                    addr362:
                                                                                    while(_loc17_)
                                                                                    {
                                                                                       _loc11_ = §§pop();
                                                                                       break loop21;
                                                                                    }
                                                                                    §§goto(addr372);
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr384);
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr371);
                                                         }
                                                         while(true)
                                                         {
                                                            if(!_loc16_)
                                                            {
                                                               if(!_loc16_)
                                                               {
                                                                  if(_loc17_ || this)
                                                                  {
                                                                     continue loop26;
                                                                  }
                                                                  addr404:
                                                                  while(true)
                                                                  {
                                                                     §§push(int(_loc6_.height));
                                                                     break loop27;
                                                                  }
                                                               }
                                                               break;
                                                            }
                                                            §§goto(addr384);
                                                         }
                                                         §§goto(addr392);
                                                         addr315:
                                                      }
                                                      break;
                                                   }
                                                   §§goto(addr361);
                                                }
                                                while(true)
                                                {
                                                   _loc9_ = §§pop();
                                                   addr398:
                                                   while(true)
                                                   {
                                                      §§push(param1.top / _loc9_);
                                                      break loop26;
                                                   }
                                                }
                                                addr267:
                                             }
                                             while(_loc17_)
                                             {
                                                §§goto(addr337);
                                             }
                                             §§goto(addr373);
                                             addr335:
                                          }
                                          §§goto(addr267);
                                       }
                                       §§goto(addr360);
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          if(_loc17_ || param2)
                                          {
                                             §§goto(addr312);
                                             §§push(§§pop() - 1);
                                          }
                                          break;
                                          §§goto(addr241);
                                       }
                                       addr304:
                                    }
                                    §§goto(addr359);
                                 }
                                 §§goto(addr264);
                              }
                              break;
                           }
                           addr332:
                           while(_loc17_)
                           {
                              §§goto(addr335);
                              §§push(int(§§pop()));
                           }
                           §§goto(addr358);
                        }
                        while(true)
                        {
                           §§goto(addr391);
                        }
                     }
                     while(true)
                     {
                        §§goto(addr332);
                        §§goto(addr345);
                     }
                     addr345:
                  }
                  if(_loc16_ && param1)
                  {
                     continue;
                  }
                  §§goto(addr304);
                  §§push(_loc12_);
               }
            }
            §§goto(addr404);
         }
         addr415:
      }
      
      public function addObjectParsePigs(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §&!r§
      {
         var _loc10_:§4u§ = §6G§.§1!P§(param2);
         return new §="$§(this,param1,this.§@O§.mLevelEngine.mWorld,this.§@O§,this.§5!b§,param2,param3,param4,param5,param9,_loc10_.particleJSONId,_loc10_.particleVariationCount);
      }
      
      public function §`P§(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §&!r§
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc10_:§&!r§ = null;
         var _loc11_:* = param2;
         if(!_loc13_)
         {
            §§push("BIRD_BLACK");
            if(!_loc13_)
            {
               §§push(_loc11_);
               if(!(_loc13_ && param1))
               {
                  if(§§pop() === §§pop())
                  {
                     if(!(_loc13_ && param1))
                     {
                        §§push(0);
                        if(_loc13_ && param1)
                        {
                        }
                     }
                     else
                     {
                        addr270:
                        §§push(1);
                        if(_loc13_ && this)
                        {
                           addr408:
                        }
                     }
                  }
                  else
                  {
                     §§push("BIRD_BLUE");
                     if(!_loc13_)
                     {
                        §§push(_loc11_);
                        if(_loc12_)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(!_loc13_)
                              {
                                 §§goto(addr270);
                              }
                              else
                              {
                                 addr400:
                                 §§push(6);
                                 if(!(_loc12_ || param3))
                                 {
                                    addr420:
                                    switch(§§pop())
                                    {
                                       case 0:
                                          _loc10_ = new §`!'§(this,param1,this.§@O§.mLevelEngine.mWorld,this.§@O§,this.§5!b§,param2,param3,param4,param5,param8,param9);
                                          break;
                                       case 1:
                                          _loc10_ = new §2"$§(this,param1,this.§@O§.mLevelEngine.mWorld,this.§@O§,this.§5!b§,param2,param3,param4,param5,param8,param9);
                                          break;
                                       case 2:
                                          _loc10_ = new §'!L§(this,param1,this.§@O§.mLevelEngine.mWorld,this.§@O§,this.§5!b§,param2,param3,param4,param5,param8,param9);
                                          break;
                                       case 3:
                                          _loc10_ = new §7!j§(this,param1,this.§@O§.mLevelEngine.mWorld,this.§@O§,this.§5!b§,param2,param3,param4,param5,param8,param9);
                                          break;
                                       case 4:
                                          _loc10_ = new §-!E§(this,param1,this.§@O§.mLevelEngine.mWorld,this.§@O§,this.§5!b§,param2,param3,param4,param5,param8,param9);
                                          break;
                                       case 5:
                                          _loc10_ = new §'5§(this,param1,this.§@O§.mLevelEngine.mWorld,this.§@O§,this.§5!b§,param2,param3,param4,param5,param8,param9);
                                          break;
                                       case 6:
                                          _loc10_ = new §;!l§(this,param1,this.§@O§.mLevelEngine.mWorld,this.§@O§,this.§5!b§,param2,param3,param4,param5,param8,param9);
                                          break;
                                       case 7:
                                          _loc10_ = new §,!8§(this,param1,this.§@O§.mLevelEngine.mWorld,this.§@O§,this.§5!b§,param2,param3,param4,param5,param8,param9);
                                          break;
                                       default:
                                          _loc10_ = new § H§(this,param1,this.§@O§.mLevelEngine.mWorld,this.§@O§,this.§5!b§,param2,param3,param4,param5,param8,param9);
                                    }
                                    return _loc10_;
                                    addr415:
                                 }
                                 §§goto(addr420);
                              }
                           }
                           else
                           {
                              §§push("BIRD_GREEN");
                              if(_loc12_ || param1)
                              {
                                 §§push(_loc11_);
                                 if(!_loc13_)
                                 {
                                    addr290:
                                    if(§§pop() === §§pop())
                                    {
                                       if(_loc12_ || this)
                                       {
                                          §§push(2);
                                          if(_loc13_ && param3)
                                          {
                                             addr347:
                                          }
                                       }
                                       else
                                       {
                                          addr321:
                                          §§push(3);
                                          if(_loc13_ && param2)
                                          {
                                             addr370:
                                          }
                                       }
                                       §§goto(addr420);
                                    }
                                    else
                                    {
                                       §§push("BIRD_WHITE");
                                       if(!_loc13_)
                                       {
                                          addr310:
                                          §§push(_loc11_);
                                          if(!(_loc13_ && this))
                                          {
                                             if(§§pop() === §§pop())
                                             {
                                                if(_loc12_)
                                                {
                                                   §§goto(addr321);
                                                }
                                                else
                                                {
                                                   addr367:
                                                   §§push(5);
                                                   if(!_loc12_)
                                                   {
                                                      §§goto(addr415);
                                                   }
                                                   §§goto(addr420);
                                                }
                                             }
                                             else
                                             {
                                                §§push("BIRD_YELLOW");
                                                if(!_loc13_)
                                                {
                                                   addr333:
                                                   §§push(_loc11_);
                                                   if(!_loc13_)
                                                   {
                                                      addr336:
                                                      if(§§pop() === §§pop())
                                                      {
                                                         if(_loc12_)
                                                         {
                                                            §§push(4);
                                                            if(_loc12_ || param2)
                                                            {
                                                               §§goto(addr347);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr370);
                                                            }
                                                         }
                                                         §§goto(addr420);
                                                      }
                                                      else
                                                      {
                                                         §§push("BIRD_RED");
                                                         if(!(_loc13_ && param3))
                                                         {
                                                            addr356:
                                                            §§push(_loc11_);
                                                            if(!_loc13_)
                                                            {
                                                               if(§§pop() === §§pop())
                                                               {
                                                                  if(!(_loc13_ && this))
                                                                  {
                                                                     §§goto(addr367);
                                                                  }
                                                                  else
                                                                  {
                                                                     addr412:
                                                                     §§push(7);
                                                                     if(_loc13_)
                                                                     {
                                                                     }
                                                                     §§goto(addr420);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§push("BIRD_REDBIG");
                                                                  if(_loc13_ && param3)
                                                                  {
                                                                  }
                                                                  addr410:
                                                                  if(§§pop() === _loc11_)
                                                                  {
                                                                     §§goto(addr412);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr420);
                                                                     §§push(8);
                                                                  }
                                                                  §§goto(addr420);
                                                               }
                                                               §§goto(addr412);
                                                            }
                                                            addr397:
                                                            if(§§pop() === §§pop())
                                                            {
                                                               if(_loc12_)
                                                               {
                                                                  §§goto(addr400);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr412);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr410);
                                                               §§push("BIRD_ORANGE");
                                                            }
                                                            §§goto(addr412);
                                                         }
                                                         §§push(_loc11_);
                                                         if(_loc12_ || param1)
                                                         {
                                                            §§goto(addr397);
                                                         }
                                                         §§goto(addr410);
                                                      }
                                                   }
                                                   §§goto(addr397);
                                                }
                                                §§goto(addr356);
                                             }
                                             §§goto(addr420);
                                          }
                                          §§goto(addr356);
                                       }
                                       §§goto(addr410);
                                    }
                                 }
                                 §§goto(addr336);
                              }
                              §§goto(addr333);
                           }
                           §§goto(addr420);
                        }
                        §§goto(addr290);
                     }
                     §§goto(addr310);
                  }
                  §§goto(addr420);
               }
               §§goto(addr290);
            }
            §§goto(addr333);
         }
         §§goto(addr270);
      }
      
      public function hasBirds() : Boolean
      {
         return this.§&D§ > 0;
      }
      
      public function addObject(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : §&!r§
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         var _loc10_:Sprite;
         (_loc10_ = new Sprite()).scaleX = param8;
         if(!_loc14_)
         {
            _loc10_.scaleY = param8;
         }
         var _loc11_:§&!r§;
         §§push((_loc11_ = this.createObject(_loc10_,param1,param2,param3,param4,param5,param6,param7,param8)).isTexture());
         if(!(_loc14_ && param3))
         {
            if(§§pop())
            {
               if(!_loc14_)
               {
                  §§push(_loc10_);
                  §§push(this.§3!e§);
                  if(_loc15_)
                  {
                     §§push(!§§pop());
                  }
                  §§pop().visible = §§pop();
                  if(_loc15_ || param1)
                  {
                     this.§=",§[this.§=",§.length] = _loc11_;
                     if(!(_loc14_ && param3))
                     {
                        loop0:
                        while(true)
                        {
                           §§push(_loc11_ is § H§);
                           if(!(_loc14_ && param1))
                           {
                              loop17:
                              while(true)
                              {
                                 §§push(§§pop());
                                 if(!(_loc14_ && param3))
                                 {
                                    if(§§pop())
                                    {
                                       if(!_loc14_)
                                       {
                                          §§pop();
                                          loop18:
                                          while(true)
                                          {
                                             §§push(_loc11_.§9"7§());
                                             if(!(_loc14_ && param2))
                                             {
                                                §§push(!§§pop());
                                                if(!_loc14_)
                                                {
                                                   while(true)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         if(!(_loc14_ && this))
                                                         {
                                                            continue loop18;
                                                         }
                                                         addr306:
                                                         loop14:
                                                         while(true)
                                                         {
                                                            addr242:
                                                            loop15:
                                                            while(true)
                                                            {
                                                               §§push(param5);
                                                               addr244:
                                                               loop11:
                                                               while(true)
                                                               {
                                                                  if(!_loc14_)
                                                                  {
                                                                     if(!(_loc14_ && param2))
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              if(!_loc14_)
                                                                              {
                                                                                 addr256:
                                                                                 §§push(this.§@O§);
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop().§<!1§(_loc11_);
                                                                                    addr260:
                                                                                    while(true)
                                                                                    {
                                                                                       break loop11;
                                                                                    }
                                                                                    §§goto(addr256);
                                                                                 }
                                                                                 addr258:
                                                                              }
                                                                              loop9:
                                                                              while(true)
                                                                              {
                                                                                 this.§]Q§.addChild(_loc10_);
                                                                                 addr299:
                                                                                 while(_loc15_ || param1)
                                                                                 {
                                                                                    continue loop14;
                                                                                 }
                                                                                 loop22:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(param9);
                                                                                    addr273:
                                                                                    while(true)
                                                                                    {
                                                                                       if(!(_loc14_ && this))
                                                                                       {
                                                                                          addr291:
                                                                                          §§push(Boolean(§§pop()));
                                                                                          while(_loc15_)
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   continue loop9;
                                                                                                }
                                                                                                addr268:
                                                                                                this.§7"C§.addChild(_loc10_);
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc15_)
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         continue loop15;
                                                                                                      }
                                                                                                      addr270:
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§goto(addr299);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§pop();
                                                                                             continue loop22;
                                                                                          }
                                                                                          addr291:
                                                                                          addr313:
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr310:
                                                                                          §§push(Boolean(§§pop()));
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop());
                                                                                             break loop17;
                                                                                          }
                                                                                          addr311:
                                                                                       }
                                                                                       continue loop22;
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           addr254:
                                                                        }
                                                                        break;
                                                                     }
                                                                     §§goto(addr311);
                                                                  }
                                                                  §§goto(addr291);
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(param6);
                                                                  if(_loc15_ || param3)
                                                                  {
                                                                     if(_loc15_)
                                                                     {
                                                                        break loop0;
                                                                     }
                                                                     §§goto(addr273);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr244);
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr310);
                                                         §§push(_loc11_.front);
                                                      }
                                                      §§goto(addr310);
                                                   }
                                                   addr82:
                                                }
                                             }
                                             §§goto(addr313);
                                          }
                                       }
                                       §§goto(addr310);
                                    }
                                    §§goto(addr82);
                                 }
                                 break;
                              }
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    §§goto(addr291);
                                 }
                                 §§goto(addr293);
                              }
                              addr117:
                           }
                           break;
                        }
                        while(§§pop())
                        {
                           if(_loc15_)
                           {
                              if(!_loc14_)
                              {
                                 §§push(this.§@O§);
                                 if(_loc15_)
                                 {
                                    §§pop().activeObject = _loc11_;
                                    addr227:
                                    if(!(_loc14_ && param1))
                                    {
                                       if(!(_loc14_ && param3))
                                       {
                                          break;
                                       }
                                       §§goto(addr268);
                                    }
                                    §§goto(addr254);
                                 }
                                 §§goto(addr258);
                              }
                              §§goto(addr260);
                           }
                           §§goto(addr227);
                        }
                        return _loc11_;
                        addr106:
                     }
                  }
                  §§goto(addr306);
               }
               §§goto(addr199);
            }
            else
            {
               this.§=",§[this.§=",§.length] = _loc11_;
               if(!(_loc14_ && param2))
               {
                  §§goto(addr106);
               }
            }
            §§goto(addr270);
         }
         §§goto(addr117);
      }
      
      public function §<N§(param1:int, param2:§&!r§, param3:§&!r§) : §3";§
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc6_:§3";§ = null;
         var _loc4_:int = this.§=",§.indexOf(param2) - this.§+I§;
         var _loc5_:int = this.§=",§.indexOf(param3) - this.§+I§;
         if(!_loc8_)
         {
            §§push(_loc4_);
            if(_loc7_ || this)
            {
               §§push(0);
               if(!_loc8_)
               {
                  §§push(§§pop() >= §§pop());
                  if(_loc7_)
                  {
                     if(§§pop())
                     {
                        if(_loc7_ || param1)
                        {
                           §§pop();
                           §§goto(addr84);
                        }
                     }
                  }
                  if(§§pop())
                  {
                     §§goto(addr84);
                  }
                  §§goto(addr141);
               }
            }
            §§goto(addr82);
         }
         addr84:
         if(_loc7_ || param3)
         {
            addr82:
            §§push(_loc5_ >= 0);
         }
         (_loc6_ = new §3";§(§?!V§.§6P§,_loc4_,_loc5_,new Point(0,0),new Point(0,0))).§0!i§ = this.§@O§.mLevelEngine.mWorld.§?[§(_loc6_.§]0§(param2,param3));
         if(_loc7_ || param2)
         {
            this.§6'§.push(_loc6_);
            if(!(_loc7_ || this))
            {
               addr141:
               return null;
            }
         }
         return _loc6_;
      }
      
      public function §do §(param1:§3";§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            if(!(param1.§0!i§ is b2WeldJoint))
            {
               if(!_loc5_)
               {
                  §§goto(addr25);
               }
            }
            var _loc2_:§&!r§ = this.§!!A§(param1.index1 + this.§+I§);
            var _loc3_:§&!r§ = this.§!!A§(param1.index2 + this.§+I§);
            if(!_loc5_)
            {
               this.§@O§.mLevelEngine.mWorld.§7! §(param1.§0!i§);
               do
               {
                  param1.§0!i§ = this.§@O§.mLevelEngine.mWorld.§?[§(param1.§]0§(_loc2_,_loc3_));
               }
               while(_loc5_);
               
            }
            return;
         }
         addr25:
      }
      
      public function §&r§(param1:§&!r§) : Vector.<§3";§>
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:§3";§ = null;
         var _loc2_:Vector.<§3";§> = new Vector.<§3";§>();
         var _loc3_:int = this.§=",§.indexOf(param1) - this.§+I§;
         if(!_loc8_)
         {
            §§push(_loc3_);
            if(!(_loc8_ && this))
            {
               if(§§pop() >= 0)
               {
                  addr57:
                  addr56:
                  for each(_loc4_ in this.§6'§)
                  {
                     §§push(_loc4_.index1 == _loc3_);
                     if(_loc7_)
                     {
                        if(!§§pop())
                        {
                           if(_loc7_)
                           {
                              §§pop();
                              if(_loc8_ && param1)
                              {
                                 continue;
                              }
                              §§push(_loc4_.index2 == _loc3_);
                           }
                        }
                     }
                     if(§§pop())
                     {
                        if(!(_loc8_ && param1))
                        {
                           _loc2_.push(_loc4_);
                        }
                     }
                  }
               }
               return _loc2_;
            }
            §§goto(addr57);
         }
         §§goto(addr56);
      }
      
      public function §`v§() : Vector.<§3";§>
      {
         return this.§6'§;
      }
      
      public function §7!2§(param1:§&!r§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:int = this.§=",§.indexOf(param1) - this.§+I§;
         var _loc3_:* = int(this.§6'§.length - 1);
         while(true)
         {
            §§push(_loc3_);
            if(_loc5_)
            {
               if(§§pop() < 0)
               {
                  if(!_loc4_)
                  {
                     if(_loc5_)
                     {
                        if(!(_loc4_ && _loc3_))
                        {
                           break;
                        }
                        while(true)
                        {
                           this.§6'§.splice(_loc3_,1);
                        }
                        addr104:
                     }
                     while(true)
                     {
                        addr63:
                        while(true)
                        {
                           §§push(_loc3_);
                           if(_loc5_ || param1)
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
                        §§push(this.§6'§[_loc3_].index2 == _loc2_);
                        if(_loc5_ || _loc3_)
                        {
                           break;
                        }
                        addr123:
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
                           §§goto(addr104);
                        }
                        §§goto(addr63);
                        §§goto(addr124);
                     }
                     addr124:
                  }
                  continue;
               }
               §§push(this.§6'§[_loc3_].index1 == _loc2_);
               if(!_loc4_)
               {
                  if(!§§pop())
                  {
                     §§goto(addr123);
                  }
                  §§goto(addr102);
               }
               §§goto(addr123);
            }
            §§goto(addr73);
         }
      }
      
      protected function §9!o§(param1:§&!r§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(param1.uniqueID);
         if(!(_loc5_ && param1))
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         var _loc3_:* = int(this.§[+§.length - 1);
         while(true)
         {
            §§push(_loc3_);
            if(_loc4_ || param1)
            {
               if(!(_loc5_ && this))
               {
                  if(§§pop() < 0)
                  {
                     if(_loc4_ || param1)
                     {
                        if(!_loc5_)
                        {
                           break;
                        }
                        addr106:
                        this.§[+§.splice(_loc3_,1);
                        loop1:
                        while(true)
                        {
                           addr84:
                           while(true)
                           {
                              §§push(_loc3_);
                              addr86:
                              while(true)
                              {
                                 §§push(§§pop() - 1);
                                 addr87:
                                 while(true)
                                 {
                                    _loc3_ = §§pop();
                                    continue loop1;
                                 }
                              }
                           }
                        }
                        addr111:
                     }
                     while(_loc5_ && _loc3_)
                     {
                        §§goto(addr111);
                     }
                     continue;
                  }
                  if(this.§[+§[_loc3_].targetId.toString() == _loc2_)
                  {
                     §§goto(addr106);
                  }
                  §§goto(addr84);
               }
               §§goto(addr86);
            }
            §§goto(addr87);
         }
      }
      
      public function §>m§(param1:§&!r§, param2:§&!r§) : Boolean
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:int = this.§=",§.indexOf(param1) - this.§+I§;
         var _loc4_:int = this.§=",§.indexOf(param2) - this.§+I§;
         var _loc5_:* = int(this.§6'§.length - 1);
         loop0:
         while(true)
         {
            §§push(_loc5_);
            if(_loc6_)
            {
               if(§§pop() < 0)
               {
                  if(!_loc7_)
                  {
                     if(_loc6_)
                     {
                        if(_loc6_)
                        {
                           §§push(false);
                           if(_loc6_ || this)
                           {
                              if(_loc6_ || param1)
                              {
                                 break;
                              }
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    while(true)
                                    {
                                       §§push(true);
                                       §§goto(addr106);
                                    }
                                    addr105:
                                 }
                                 else
                                 {
                                    loop2:
                                    while(true)
                                    {
                                       §§push(_loc5_);
                                       if(!(_loc7_ && param1))
                                       {
                                          addr81:
                                          §§push(§§pop() - 1);
                                          while(true)
                                          {
                                             _loc5_ = §§pop();
                                             addr82:
                                             while(!_loc6_)
                                             {
                                                if(_loc6_ || param2)
                                                {
                                                   continue loop2;
                                                }
                                             }
                                             continue loop0;
                                          }
                                          addr81:
                                       }
                                       §§goto(addr81);
                                    }
                                 }
                                 §§goto(addr139);
                              }
                           }
                           addr106:
                           while(true)
                           {
                              if(!_loc7_)
                              {
                                 if(_loc6_)
                                 {
                                    break;
                                 }
                                 loop9:
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    if(_loc6_)
                                    {
                                       if(!§§pop())
                                       {
                                          continue loop1;
                                       }
                                       while(true)
                                       {
                                          if(_loc6_ || param2)
                                          {
                                             addr138:
                                             §§pop();
                                             while(true)
                                             {
                                                if(!_loc7_)
                                                {
                                                   §§push(this.§6'§[_loc5_].index2 == _loc3_);
                                                   continue loop1;
                                                }
                                                §§goto(addr138);
                                             }
                                             addr139:
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                §§pop();
                                             }
                                             addr186:
                                          }
                                          while(true)
                                          {
                                             continue loop9;
                                          }
                                          continue loop1;
                                       }
                                    }
                                    else
                                    {
                                       loop5:
                                       while(true)
                                       {
                                          if(!(_loc7_ && param1))
                                          {
                                             if(!§§pop())
                                             {
                                                break;
                                             }
                                             continue loop1;
                                          }
                                          loop6:
                                          for(; §§pop(); while(true)
                                          {
                                             continue loop6;
                                          })
                                          {
                                             loop7:
                                             while(true)
                                             {
                                                §§pop();
                                                addr200:
                                                while(true)
                                                {
                                                   §§push(this.§6'§[_loc5_].index2 == _loc4_);
                                                   if(_loc7_)
                                                   {
                                                      break loop5;
                                                   }
                                                   if(!(_loc7_ && _loc3_))
                                                   {
                                                      if(_loc6_ || param2)
                                                      {
                                                         break loop6;
                                                      }
                                                      continue loop6;
                                                   }
                                                   continue loop7;
                                                }
                                             }
                                          }
                                          while(true)
                                          {
                                             continue loop5;
                                          }
                                       }
                                    }
                                    §§goto(addr186);
                                 }
                              }
                              §§goto(addr131);
                           }
                           return §§pop();
                        }
                        §§goto(addr200);
                     }
                     §§goto(addr105);
                  }
                  §§goto(addr82);
               }
               else
               {
                  §§push(this.§6'§[_loc5_].index1 == _loc3_);
               }
               §§goto(addr197);
            }
            §§goto(addr81);
         }
         return §§pop();
      }
      
      protected function createObject(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §&!r§
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         var _loc10_:§&!r§ = null;
         var _loc11_:§4u§ = null;
         if(!(_loc15_ && param1))
         {
            §§push(param2);
            if(!(_loc15_ && param1))
            {
               §§push("BIRD");
               if(_loc14_ || this)
               {
                  if(§§pop().indexOf(§§pop()) == 0)
                  {
                     if(!(_loc15_ && param3))
                     {
                        _loc10_ = this.§`P§(param1,param2,param3,param4,param5,param6,param7,param8,param9);
                        if(!(_loc15_ && this))
                        {
                           var _loc12_:*;
                           §§push((_loc12_ = this).§ !U§);
                           if(_loc14_ || param2)
                           {
                              §§push(§§pop() + 1);
                           }
                           var _loc13_:* = §§pop();
                           if(!_loc15_)
                           {
                              _loc12_.§ !U§ = _loc13_;
                           }
                           if(_loc14_)
                           {
                              addr295:
                              _loc10_.uniqueID = this.§5D§();
                           }
                        }
                        return _loc10_;
                     }
                     addr103:
                     _loc10_ = this.addObjectParsePigs(param1,param2,param3,param4,param5,param6,param7,param8,param9);
                     §§goto(addr295);
                  }
                  else
                  {
                     addr99:
                     §§push(param2);
                     §§push("PIG");
                  }
                  §§goto(addr103);
               }
               if(§§pop().indexOf(§§pop()) == 0)
               {
                  §§goto(addr103);
               }
               else
               {
                  §§push((_loc11_ = §6G§.§1!P§(param2)) == null);
                  if(!(_loc15_ && param2))
                  {
                     §§push(§§pop());
                     if(!_loc15_)
                     {
                        if(§§pop())
                        {
                           if(_loc14_ || param2)
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
                                       addr165:
                                       if(§§pop())
                                       {
                                          if(!(_loc15_ && param2))
                                          {
                                             addr186:
                                             §§push("MISC_FOOD_");
                                             if(!(_loc15_ && this))
                                             {
                                                §§push(§§pop() + param2.substring(5));
                                             }
                                             param2 = §§pop();
                                             if(_loc14_ || param2)
                                             {
                                                _loc11_ = §6G§.§1!P§(param2);
                                             }
                                             _loc10_ = new §&!g§(this,param1,this.§@O§.mLevelEngine.mWorld,this.§@O§,this.§5!b§,param2,param3,param4,param5,param9,_loc11_.front,_loc11_.particleJSONId,_loc11_.particleVariationCount);
                                             addr238:
                                             §§goto(addr295);
                                          }
                                          §§goto(addr238);
                                       }
                                       §§push(_loc11_.§7[§);
                                       if(_loc14_)
                                       {
                                          §§push(§4u§.§[!`§);
                                          if(_loc14_)
                                          {
                                             §§push(§§pop() == §§pop());
                                             if(_loc14_ || this)
                                             {
                                                addr215:
                                                addr216:
                                                if(!§§pop())
                                                {
                                                   if(_loc14_ || param2)
                                                   {
                                                      addr224:
                                                      §§pop();
                                                      if(_loc14_ || param3)
                                                      {
                                                         addr236:
                                                         §§push(_loc11_.§7[§ == §4u§.§<!q§);
                                                      }
                                                      §§goto(addr238);
                                                   }
                                                }
                                                if(§§pop())
                                                {
                                                   §§goto(addr238);
                                                }
                                                else
                                                {
                                                   _loc10_ = new §&!r§(this,param1,this.§@O§.mLevelEngine.mWorld,this.§@O§,this.§5!b§,param2,param3,param4,param5,param9,_loc11_.front);
                                                   §§goto(addr295);
                                                }
                                             }
                                             §§goto(addr224);
                                          }
                                       }
                                       §§goto(addr236);
                                    }
                                    §§goto(addr224);
                                 }
                              }
                              §§goto(addr186);
                           }
                           §§goto(addr215);
                        }
                        §§goto(addr165);
                     }
                     §§goto(addr216);
                  }
                  §§goto(addr224);
               }
            }
            §§goto(addr99);
         }
         §§goto(addr103);
      }
      
      protected function §5D§() : String
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:§&!r§ = null;
         var _loc1_:int = this.§=",§.length;
         var _loc2_:* = false;
         loop0:
         while(true)
         {
            §§push(_loc2_);
            if(!_loc7_)
            {
               while(true)
               {
                  §§push(!§§pop());
               }
               addr96:
            }
            while(§§pop())
            {
               §§push(true);
               if(_loc6_)
               {
                  _loc2_ = §§pop();
                  if(!_loc6_)
                  {
                     break;
                  }
                  §§push(0);
                  if(_loc7_ && _loc2_)
                  {
                     return §§pop().toString();
                  }
                  addr99:
                  for each(_loc3_ in this.§=",§)
                  {
                     if(!_loc7_)
                     {
                        if(_loc3_.uniqueID != _loc1_.toString())
                        {
                           continue;
                        }
                        if(!_loc7_)
                        {
                           addr83:
                           _loc1_++;
                           if(_loc6_)
                           {
                              addr86:
                              _loc2_ = false;
                           }
                           break;
                        }
                        §§goto(addr86);
                     }
                     §§goto(addr83);
                  }
                  continue loop0;
               }
               §§goto(addr96);
            }
            §§goto(addr99);
         }
      }
      
      public function updateLevelObjectsGoingOn(param1:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§&!r§ = null;
         var _loc2_:* = int(this.§=",§.length - 1);
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§=",§[_loc2_] as §&!r§;
            if(_loc4_ || _loc3_)
            {
               if(_loc3_)
               {
                  loop1:
                  while(true)
                  {
                     if(_loc3_.§[" § > 0)
                     {
                        _loc3_.§[!§();
                        while(true)
                        {
                           if(_loc4_)
                           {
                              continue loop1;
                           }
                           addr102:
                           addr102:
                           while(true)
                           {
                              this.§^U§(_loc2_,true,true,true);
                              addr108:
                              while(true)
                              {
                              }
                           }
                        }
                        continue;
                        addr76:
                     }
                     §§goto(addr102);
                  }
               }
               while(true)
               {
                  §§push(_loc2_);
                  if(_loc4_)
                  {
                     §§push(§§pop() - 1);
                  }
                  _loc2_ = §§pop();
                  if(_loc4_)
                  {
                     if(true)
                     {
                        break;
                     }
                     §§goto(addr63);
                  }
                  §§goto(addr66);
               }
               continue;
            }
            §§goto(addr102);
         }
         if(!_loc5_)
         {
            this.§4E§(param1);
         }
      }
      
      protected function §4E§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§>4§(param1);
         }
         do
         {
            this.§6!Q§();
         }
         while(!(_loc3_ || param1));
         
      }
      
      private function §>4§(param1:Number) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:§;!@§ = null;
         var _loc5_:* = 0;
         var _loc6_:§&!r§ = null;
         if(_loc8_)
         {
            if(this.§[+§.length == 0)
            {
               if(!(_loc7_ && _loc2_))
               {
                  §§goto(addr39);
               }
            }
            var _loc2_:Vector.<§;!@§> = this.§[+§.concat();
            var _loc3_:* = int(_loc2_.length - 1);
            while(_loc3_ >= 0)
            {
               §§push((_loc4_ = _loc2_[_loc3_]).§>Z§);
               if(_loc8_ || _loc3_)
               {
                  §§push(Boolean(§§pop()));
                  if(!(_loc7_ && _loc3_))
                  {
                     if(§§pop())
                     {
                        if(_loc8_ || param1)
                        {
                           §§pop();
                           if(_loc8_ || _loc2_)
                           {
                              §§push(this.§[+§.indexOf(_loc4_) == -1);
                              if(_loc8_ || _loc2_)
                              {
                                 addr115:
                                 if(!§§pop())
                                 {
                                    if(!(_loc8_ || _loc2_))
                                    {
                                       continue;
                                    }
                                    §§push(_loc4_.update(param1));
                                    if(_loc8_ || _loc2_)
                                    {
                                       §§push(int(§§pop()));
                                       if(_loc8_)
                                       {
                                          §§push(§§pop());
                                          if(_loc8_)
                                          {
                                             _loc5_ = §§pop();
                                             if(_loc8_)
                                             {
                                                addr143:
                                                if(§§pop() != -1)
                                                {
                                                   if(_loc7_ && this)
                                                   {
                                                      continue;
                                                   }
                                                   addr151:
                                                   §§push(this);
                                                   §§push("");
                                                   if(!_loc7_)
                                                   {
                                                      §§push(§§pop() + _loc5_);
                                                   }
                                                   if(_loc6_ = §§pop().§%"%§(§§pop()))
                                                   {
                                                      if(!_loc7_)
                                                      {
                                                         this.§-!,§(_loc6_,true,true,true);
                                                         addr180:
                                                         §§push(_loc3_);
                                                         if(!(_loc7_ && _loc2_))
                                                         {
                                                            addr188:
                                                            §§push(§§pop() - 1);
                                                         }
                                                      }
                                                   }
                                                }
                                                §§goto(addr180);
                                             }
                                             _loc3_ = §§pop();
                                             continue;
                                          }
                                       }
                                       §§goto(addr143);
                                    }
                                    §§goto(addr188);
                                 }
                                 §§goto(addr180);
                              }
                              §§goto(addr115);
                           }
                           §§goto(addr151);
                        }
                        §§goto(addr115);
                     }
                  }
               }
               §§goto(addr115);
            }
            return;
         }
         addr39:
      }
      
      private function §6!Q§() : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc1_:§3";§ = null;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         loop0:
         for each(_loc1_ in this.§6'§)
         {
            if(!(_loc7_ && this))
            {
               §§push(_loc1_.type == §?!V§.§+&§);
               loop1:
               while(true)
               {
                  §§push(§§pop());
                  addr320:
                  while(true)
                  {
                     if(§§pop())
                     {
                        addr321:
                        while(true)
                        {
                           §§pop();
                           addr322:
                           while(true)
                           {
                              §§push(Boolean(_loc1_.§3U§));
                           }
                        }
                        addr321:
                     }
                     addr302:
                     while(true)
                     {
                        addr303:
                        while(§§pop())
                        {
                           while(!_loc7_)
                           {
                           }
                           §§goto(addr322);
                        }
                        continue loop0;
                     }
                  }
                  loop17:
                  while(true)
                  {
                     if(!(_loc6_ || _loc1_))
                     {
                        continue loop1;
                     }
                     §§push(§§pop());
                     loop18:
                     while(true)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              §§pop();
                              addr276:
                              while(true)
                              {
                                 §§push(Boolean(_loc1_.§!!F§));
                              }
                           }
                           addr275:
                        }
                        while(true)
                        {
                           while(true)
                           {
                              §§push(§§pop());
                              continue loop18;
                              loop40:
                              while(!(_loc7_ && this))
                              {
                                 if(_loc6_)
                                 {
                                    loop29:
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       loop30:
                                       while(_loc6_ || _loc3_)
                                       {
                                          if(!§§pop())
                                          {
                                             loop31:
                                             while(true)
                                             {
                                                §§pop();
                                                loop32:
                                                while(!(_loc7_ && _loc1_))
                                                {
                                                   if(!(_loc7_ && _loc3_))
                                                   {
                                                      if(!_loc7_)
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(_loc3_);
                                                            loop34:
                                                            while(_loc6_ || _loc2_)
                                                            {
                                                               if(!_loc7_)
                                                               {
                                                                  §§push(0);
                                                                  if(_loc6_)
                                                                  {
                                                                     §§push(§§pop() < §§pop());
                                                                     if(_loc6_ || _loc3_)
                                                                     {
                                                                        if(_loc7_)
                                                                        {
                                                                           continue loop17;
                                                                        }
                                                                        §§push(§§pop());
                                                                        if(_loc7_)
                                                                        {
                                                                           continue loop30;
                                                                        }
                                                                        if(_loc6_)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              loop35:
                                                                              while(true)
                                                                              {
                                                                                 if(_loc7_)
                                                                                 {
                                                                                    continue loop31;
                                                                                 }
                                                                                 if(_loc6_)
                                                                                 {
                                                                                    addr141:
                                                                                    if(!(_loc7_ && _loc2_))
                                                                                    {
                                                                                       if(_loc6_ || _loc2_)
                                                                                       {
                                                                                          §§pop();
                                                                                          loop36:
                                                                                          while(true)
                                                                                          {
                                                                                             if(!(_loc7_ && _loc3_))
                                                                                             {
                                                                                                §§push(_loc2_);
                                                                                                if(!_loc7_)
                                                                                                {
                                                                                                   if(!(_loc7_ && _loc3_))
                                                                                                   {
                                                                                                      if(_loc6_ || this)
                                                                                                      {
                                                                                                         continue loop35;
                                                                                                      }
                                                                                                      addr311:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(Number(§§pop()));
                                                                                                         addr312:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            _loc2_ = §§pop();
                                                                                                            addr313:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc1_.§0!i§);
                                                                                                               addr280:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push((§§pop() as b2PrismaticJoint).§6<§());
                                                                                                                  addr283:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                     break loop36;
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      addr311:
                                                                                                   }
                                                                                                   break;
                                                                                                }
                                                                                                continue loop34;
                                                                                             }
                                                                                             addr259:
                                                                                             while(_loc6_)
                                                                                             {
                                                                                                §§push(_loc3_);
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(0);
                                                                                                   addr221:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop() > §§pop());
                                                                                                      if(!_loc7_)
                                                                                                      {
                                                                                                         §§push(§§pop());
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               addr226:
                                                                                                               while(!_loc7_)
                                                                                                               {
                                                                                                                  §§pop();
                                                                                                                  break loop32;
                                                                                                               }
                                                                                                               break loop35;
                                                                                                               addr226:
                                                                                                            }
                                                                                                            continue loop29;
                                                                                                         }
                                                                                                         addr225:
                                                                                                      }
                                                                                                      §§goto(addr226);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr304);
                                                                                             §§goto(addr311);
                                                                                          }
                                                                                          while(!_loc7_)
                                                                                          {
                                                                                             _loc3_ = §§pop();
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(Boolean(_loc1_.§2!&§));
                                                                                                continue loop17;
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr312);
                                                                                          addr166:
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr275);
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          §§pop();
                                                                                          §§goto(addr141);
                                                                                       }
                                                                                       addr258:
                                                                                    }
                                                                                    §§goto(addr259);
                                                                                 }
                                                                                 §§goto(addr226);
                                                                              }
                                                                              §§goto(addr303);
                                                                              addr137:
                                                                           }
                                                                           §§goto(addr74);
                                                                        }
                                                                        §§goto(addr225);
                                                                     }
                                                                     §§goto(addr137);
                                                                  }
                                                                  §§goto(addr221);
                                                               }
                                                               §§goto(addr220);
                                                            }
                                                            addr176:
                                                            while(!_loc7_)
                                                            {
                                                               §§push(§§pop() >= _loc1_.upperLimit);
                                                               continue loop40;
                                                            }
                                                            §§goto(addr283);
                                                         }
                                                      }
                                                      §§goto(addr313);
                                                   }
                                                   §§goto(addr276);
                                                }
                                                while(!(_loc7_ && _loc3_))
                                                {
                                                   §§goto(addr176);
                                                   §§push(_loc2_);
                                                }
                                                §§goto(addr297);
                                             }
                                          }
                                          §§goto(addr74);
                                       }
                                       continue loop18;
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr321);
                                 }
                                 §§goto(addr322);
                              }
                           }
                        }
                     }
                  }
               }
            }
            while(true)
            {
               §§goto(addr308);
            }
         }
      }
      
      public function addExplosions(param1:int, param2:Number, param3:Number, param4:Vector.<§&!r§> = null) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || param1)
         {
            this.§ '§.push(§^!x§.createExplosion(param1,param2,param3,param4));
            do
            {
               §>!E§.§7N§("TntExplosions","ChannelExplosions");
            }
            while(_loc6_);
            
         }
      }
      
      public function §!"F§(param1:Number, param2:Number) : int
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:§&!r§ = null;
         var _loc3_:* = int(this.§=",§.length - 1);
         while(true)
         {
            §§push(_loc3_);
            if(!_loc6_)
            {
               if(§§pop() < 0)
               {
                  break;
               }
               if(_loc4_ = this.§=",§[_loc3_])
               {
                  if(!_loc6_)
                  {
                     if(_loc4_.isInCoordinates(param1,param2))
                     {
                        if(_loc6_)
                        {
                           continue;
                        }
                        §§push(_loc3_);
                        if(_loc5_)
                        {
                           return §§pop();
                        }
                        addr83:
                        §§push(§§pop() - 1);
                     }
                     else
                     {
                        addr75:
                        §§push(_loc3_);
                        if(_loc5_ || this)
                        {
                           §§goto(addr83);
                        }
                     }
                     _loc3_ = §§pop();
                  }
                  continue;
               }
               §§goto(addr75);
            }
            break;
         }
         return §§pop();
      }
      
      public function §%7§(param1:Number, param2:Number) : §&!r§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:§&!r§ = null;
         var _loc3_:* = int(this.§=",§.length - 1);
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§=",§[_loc3_])
            {
               if(!(_loc6_ && param1))
               {
                  if(_loc4_.isInCoordinates(param1,param2))
                  {
                     if(_loc5_)
                     {
                        return _loc4_;
                     }
                     continue;
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
      
      public function §>"0§(param1:Number, param2:Number) : Vector.<§&!r§>
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:§&!r§ = null;
         var _loc3_:Vector.<§&!r§> = new Vector.<§&!r§>();
         var _loc4_:* = int(this.§=",§.length - 1);
         while(_loc4_ >= 0)
         {
            §§push(Boolean(_loc5_ = this.§=",§[_loc4_]));
            if(_loc7_ || _loc3_)
            {
               if(§§pop())
               {
                  if(!_loc6_)
                  {
                     addr63:
                     §§pop();
                     if(_loc7_ || param1)
                     {
                        §§push(_loc5_.isInCoordinates(param1,param2));
                        if(_loc7_)
                        {
                           addr88:
                           if(§§pop())
                           {
                              if(_loc6_)
                              {
                                 continue;
                              }
                              _loc3_.push(_loc5_);
                              if(_loc6_)
                              {
                                 continue;
                              }
                           }
                        }
                        §§goto(addr88);
                     }
                     §§push(_loc4_);
                     if(!_loc6_)
                     {
                        §§push(§§pop() - 1);
                     }
                     _loc4_ = §§pop();
                     continue;
                  }
               }
               §§goto(addr88);
            }
            §§goto(addr63);
         }
         return _loc3_;
      }
      
      public function §!!A§(param1:int) : §&!r§
      {
         return this.§=",§[param1];
      }
      
      public function §="'§(param1:Number, param2:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:§&!r§ = null;
         var _loc3_:* = int(this.§=",§.length - 1);
         while(_loc3_ >= 0)
         {
            (_loc4_ = this.§=",§[_loc3_] as §&!r§).§="'§(param2,param1);
            if(_loc5_ || _loc3_)
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
      
      private function §^!<§(param1:§&!r§, param2:Number) : Boolean
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:§&!r§ = null;
         if(_loc8_ || this)
         {
            §§push(this.mSardineCanAdded);
            if(_loc8_)
            {
               if(!§§pop())
               {
                  if(!_loc9_)
                  {
                     §§push(true);
                     if(!_loc9_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr62:
                     §§push(false);
                     if(!_loc9_)
                     {
                        return §§pop();
                     }
                  }
               }
               else
               {
                  §§push(this.mMightyEagleAdded);
                  if(!(_loc9_ && this))
                  {
                     if(§§pop())
                     {
                        if(_loc8_ || param2)
                        {
                           §§goto(addr62);
                        }
                        else
                        {
                           addr66:
                           §§push(false);
                        }
                     }
                     §§goto(addr66);
                  }
               }
            }
            var _loc3_:* = §§pop();
            if(_loc8_ || _loc3_)
            {
               §§push(param1.§[" §);
               loop0:
               while(true)
               {
                  §§push(param1.§@!h§);
                  loop1:
                  while(true)
                  {
                     if(§§pop() == §§pop())
                     {
                        if(_loc8_)
                        {
                           §§push(this.§1"&§);
                           loop2:
                           while(true)
                           {
                              if(§§pop() < this.§4"F§.SARDINE_CAN_MAX_ROTATION_SPEED)
                              {
                                 loop3:
                                 while(true)
                                 {
                                    §§push(this);
                                    §§push(this.§1"&§);
                                    if(_loc8_ || param2)
                                    {
                                       §§push(param2);
                                       if(_loc8_)
                                       {
                                          §§push(§§pop() * this.§4"F§.SARDINE_CAN_ROTATION_ACCELERATION);
                                       }
                                       §§push(§§pop() + §§pop());
                                    }
                                    §§pop().§1"&§ = §§pop();
                                    loop4:
                                    while(true)
                                    {
                                       addr248:
                                       if(!(_loc8_ || param1))
                                       {
                                          continue;
                                       }
                                       §§push(param1.§=!y§());
                                       loop45:
                                       while(true)
                                       {
                                          §§push(§§pop().GetPosition());
                                          addr258:
                                          addr442:
                                          loop46:
                                          while(true)
                                          {
                                             §§push(§§pop().x);
                                             if(_loc8_)
                                             {
                                                if(!_loc8_)
                                                {
                                                   break;
                                                }
                                                continue loop0;
                                             }
                                             addr274:
                                             loop47:
                                             while(_loc8_)
                                             {
                                                §§push(Number(§§pop()));
                                                loop48:
                                                while(_loc8_)
                                                {
                                                   _loc5_ = §§pop();
                                                   loop49:
                                                   while(true)
                                                   {
                                                      continue loop45;
                                                      addr120:
                                                      if(_loc9_ && _loc3_)
                                                      {
                                                         continue;
                                                      }
                                                      if(_loc8_)
                                                      {
                                                         if(_loc8_)
                                                         {
                                                            if(false)
                                                            {
                                                               continue loop45;
                                                            }
                                                            _loc7_ = this.addObject("BIRD_MIGHTY_EAGLE",_loc5_,_loc6_,this.§4"F§.MIGHTY_EAGLE_FLYING_ANGLE * 1.2);
                                                            addr557:
                                                            if(_loc8_)
                                                            {
                                                               this.mMightyEagleAdded = true;
                                                            }
                                                            addr593:
                                                            this.§^c§ = 0;
                                                            _loc7_.§"!&§.setScale(1.82);
                                                            addr601:
                                                            if(!_loc9_)
                                                            {
                                                               if(_loc8_)
                                                               {
                                                                  if(false)
                                                                  {
                                                                     §§goto(addr593);
                                                                  }
                                                                  addr602:
                                                                  this.mMightyEagleTimer = _loc4_;
                                                                  return _loc3_;
                                                                  addr605:
                                                               }
                                                               §§goto(addr601);
                                                            }
                                                            addr597:
                                                            §§goto(addr597);
                                                         }
                                                         else
                                                         {
                                                            loop29:
                                                            while(true)
                                                            {
                                                               loop9:
                                                               while(true)
                                                               {
                                                                  §§push(param1.§>"?§());
                                                                  if(!(_loc9_ && _loc3_))
                                                                  {
                                                                     §§push(Boolean(§§pop()));
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop());
                                                                        addr490:
                                                                        while(true)
                                                                        {
                                                                           if(!§§pop())
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§pop();
                                                                                 addr492:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!_loc8_)
                                                                                    {
                                                                                       continue loop3;
                                                                                    }
                                                                                    §§push(this.§6B§(param1));
                                                                                    if(_loc8_ || _loc3_)
                                                                                    {
                                                                                       if(!_loc8_)
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       §§push(Boolean(§§pop()));
                                                                                       while(true)
                                                                                       {
                                                                                       }
                                                                                    }
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
                                                                                                addr477:
                                                                                                loop16:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(this.§^c§);
                                                                                                   if(!_loc9_)
                                                                                                   {
                                                                                                      §§push(0);
                                                                                                      if(!_loc8_)
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      §§push(§§pop() > §§pop());
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop());
                                                                                                         addr454:
                                                                                                         while(!_loc9_)
                                                                                                         {
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§pop();
                                                                                                                  addr458:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(this.§@O§.§,"<§);
                                                                                                                     break loop48;
                                                                                                                  }
                                                                                                               }
                                                                                                               addr457:
                                                                                                            }
                                                                                                         }
                                                                                                         continue loop14;
                                                                                                      }
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         break loop16;
                                                                                                      }
                                                                                                      addr500:
                                                                                                   }
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   if(§§pop() != §§pop())
                                                                                                   {
                                                                                                      continue loop9;
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      this.§^c§ = this.§@O§.§,"<§;
                                                                                                      continue loop29;
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             addr476:
                                                                                          }
                                                                                          addr401:
                                                                                          while(§§pop())
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(this.mMightyEagleTimer);
                                                                                                break loop47;
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr605);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 continue loop4;
                                                                              }
                                                                              addr491:
                                                                           }
                                                                           §§goto(addr473);
                                                                        }
                                                                        addr89:
                                                                        if(!(_loc8_ || this))
                                                                        {
                                                                           continue;
                                                                        }
                                                                        if(§§pop())
                                                                        {
                                                                           if(_loc8_)
                                                                           {
                                                                              addr99:
                                                                              if(_loc8_ || param1)
                                                                              {
                                                                                 if(!_loc9_)
                                                                                 {
                                                                                    if(!_loc9_)
                                                                                    {
                                                                                       §§push(true);
                                                                                       if(!_loc9_)
                                                                                       {
                                                                                          if(!_loc9_)
                                                                                          {
                                                                                             if(!_loc9_)
                                                                                             {
                                                                                                _loc3_ = §§pop();
                                                                                                if(_loc8_)
                                                                                                {
                                                                                                   §§goto(addr120);
                                                                                                }
                                                                                                §§goto(addr605);
                                                                                             }
                                                                                             §§goto(addr453);
                                                                                          }
                                                                                          addr303:
                                                                                          if(!(_loc9_ && param2))
                                                                                          {
                                                                                             addr310:
                                                                                             if(!(_loc9_ && param2))
                                                                                             {
                                                                                                loop38:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      loop39:
                                                                                                      while(!(_loc9_ && this))
                                                                                                      {
                                                                                                         if(_loc8_ || param2)
                                                                                                         {
                                                                                                            §>!E§.§7N§("Mighty_Eagle_Selected_1","ChannelBird");
                                                                                                            while(!(_loc9_ && _loc3_))
                                                                                                            {
                                                                                                               if(_loc8_)
                                                                                                               {
                                                                                                                  §>!E§.§7N§("Mighty_Eagle_Flying_1","ChannelBird");
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     addr226:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc4_);
                                                                                                                        while(!_loc9_)
                                                                                                                        {
                                                                                                                           if(§§pop() >= this.§4"F§.MIGHTY_EAGLE_WAIT_TIME)
                                                                                                                           {
                                                                                                                              if(!(_loc8_ || this))
                                                                                                                              {
                                                                                                                                 continue loop49;
                                                                                                                              }
                                                                                                                              addr241:
                                                                                                                              if(!(_loc9_ && param1))
                                                                                                                              {
                                                                                                                                 §§goto(addr248);
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    this.§^c§ = 0;
                                                                                                                                    §§goto(addr241);
                                                                                                                                 }
                                                                                                                                 addr523:
                                                                                                                              }
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§goto(addr602);
                                                                                                                           }
                                                                                                                           if(!(_loc8_ || this))
                                                                                                                           {
                                                                                                                              continue;
                                                                                                                           }
                                                                                                                           if(_loc9_)
                                                                                                                           {
                                                                                                                              continue loop2;
                                                                                                                           }
                                                                                                                           _loc6_ = §§pop();
                                                                                                                           if(_loc8_ || param2)
                                                                                                                           {
                                                                                                                              if(!_loc8_)
                                                                                                                              {
                                                                                                                                 continue loop39;
                                                                                                                              }
                                                                                                                              if(!(_loc9_ && this))
                                                                                                                              {
                                                                                                                                 §§push(this.§6B§(param1));
                                                                                                                                 if(_loc8_)
                                                                                                                                 {
                                                                                                                                    if(_loc8_ || param2)
                                                                                                                                    {
                                                                                                                                       §§goto(addr89);
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       §§goto(addr474);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr602);
                                                                                                                              }
                                                                                                                              §§goto(addr492);
                                                                                                                           }
                                                                                                                           §§goto(addr602);
                                                                                                                        }
                                                                                                                        addr299:
                                                                                                                        §§goto(addr303);
                                                                                                                     }
                                                                                                                     §§goto(addr99);
                                                                                                                  }
                                                                                                                  addr296:
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  continue loop9;
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr477);
                                                                                                            addr337:
                                                                                                         }
                                                                                                         §§goto(addr458);
                                                                                                      }
                                                                                                      loop42:
                                                                                                      while(_loc8_ || this)
                                                                                                      {
                                                                                                         §§goto(addr299);
                                                                                                         §§push(_loc4_);
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§pop();
                                                                                                            continue loop42;
                                                                                                         }
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(this.mMightyEagleTimer);
                                                                                                         addr350:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop() < this.§4"F§.MIGHTY_EAGLE_SOUND_DELAY);
                                                                                                            if(_loc8_)
                                                                                                            {
                                                                                                               if(_loc8_)
                                                                                                               {
                                                                                                                  §§push(§§pop());
                                                                                                                  if(_loc8_ || this)
                                                                                                                  {
                                                                                                                     if(_loc8_ || this)
                                                                                                                     {
                                                                                                                        if(!§§pop())
                                                                                                                        {
                                                                                                                           continue loop38;
                                                                                                                        }
                                                                                                                        §§goto(addr374);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§goto(addr490);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr454);
                                                                                                               }
                                                                                                               break;
                                                                                                            }
                                                                                                            §§goto(addr374);
                                                                                                         }
                                                                                                         §§goto(addr457);
                                                                                                      }
                                                                                                      addr443:
                                                                                                   }
                                                                                                   §§goto(addr226);
                                                                                                }
                                                                                             }
                                                                                             while(_loc8_ || param2)
                                                                                             {
                                                                                                §§goto(addr401);
                                                                                             }
                                                                                             §§goto(addr476);
                                                                                             addr394:
                                                                                          }
                                                                                          §§goto(addr374);
                                                                                       }
                                                                                       §§goto(addr602);
                                                                                    }
                                                                                    §§goto(addr403);
                                                                                 }
                                                                                 §§goto(addr337);
                                                                              }
                                                                              §§goto(addr296);
                                                                           }
                                                                           §§goto(addr602);
                                                                        }
                                                                        §§goto(addr557);
                                                                     }
                                                                  }
                                                                  §§goto(addr491);
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr602);
                                                      }
                                                      while(true)
                                                      {
                                                         if(_loc8_ || this)
                                                         {
                                                            §§push(this.mMightyEagleTimer);
                                                            if(_loc9_ && _loc3_)
                                                            {
                                                               break loop46;
                                                               addr426:
                                                            }
                                                            §§push(param2);
                                                            while(_loc8_ || param2)
                                                            {
                                                               §§push(§§pop() + §§pop());
                                                               continue loop2;
                                                            }
                                                            continue loop1;
                                                         }
                                                         §§goto(addr502);
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(param2);
                                                      if(!_loc9_)
                                                      {
                                                         §§push(§§pop() * this.§1"&§);
                                                      }
                                                      §§pop().§=!Q§(§§pop());
                                                      §§goto(addr523);
                                                      addr143:
                                                      if(!(_loc8_ || param1))
                                                      {
                                                         continue;
                                                      }
                                                      §§push(§§pop().GetPosition());
                                                      if(!(_loc8_ || param2))
                                                      {
                                                         continue loop46;
                                                      }
                                                      §§push(§§pop().y);
                                                      if(_loc8_ || this)
                                                      {
                                                         if(_loc9_)
                                                         {
                                                            continue loop48;
                                                         }
                                                         if(!_loc9_)
                                                         {
                                                            §§push(this.§4"F§.MIGHTY_EAGLE_STARTING_DISTANCE_Y * this.§4"F§.MIGHTY_EAGLE_Y_CHANGE);
                                                            if(!(_loc9_ && this))
                                                            {
                                                               if(_loc8_)
                                                               {
                                                                  addr188:
                                                                  §§push(§§pop() - §§pop() * 1.07);
                                                                  if(_loc8_ || param1)
                                                                  {
                                                                     addr196:
                                                                     if(!_loc8_)
                                                                     {
                                                                        continue loop47;
                                                                     }
                                                                     §§goto(addr198);
                                                                  }
                                                                  §§goto(addr208);
                                                               }
                                                               §§goto(addr426);
                                                            }
                                                            §§goto(addr188);
                                                         }
                                                         §§goto(addr350);
                                                      }
                                                      §§goto(addr196);
                                                   }
                                                }
                                                while(true)
                                                {
                                                   §§goto(addr394);
                                                }
                                             }
                                             while(true)
                                             {
                                                if(§§pop() < this.§4"F§.MIGHTY_EAGLE_WAIT_TIME)
                                                {
                                                   §§goto(addr409);
                                                }
                                                §§goto(addr602);
                                             }
                                          }
                                          while(true)
                                          {
                                             _loc4_ = §§pop();
                                             §§goto(addr443);
                                          }
                                       }
                                    }
                                 }
                              }
                              while(true)
                              {
                                 §§goto(addr516);
                              }
                           }
                        }
                        §§goto(addr602);
                     }
                     else
                     {
                        §§push(this.§^c§);
                     }
                     §§goto(addr500);
                  }
               }
            }
            §§goto(addr403);
         }
         §§goto(addr66);
      }
      
      private function §,=§(param1:§&!r§, param2:Number) : Boolean
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc5_:§&!r§ = null;
         if(!_loc9_)
         {
            §§push(Boolean(this.§4"F§.MIGHTY_EAGLE_USE_SHADE));
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
                           §§push(this.§3!q§);
                           if(_loc9_ && param2)
                           {
                              continue loop0;
                           }
                           §§push(!§§pop());
                           if(!(_loc9_ && param2))
                           {
                              if(!_loc8_)
                              {
                                 continue loop2;
                              }
                              §§push(Boolean(§§pop()));
                              if(!(_loc8_ || this))
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
                              if(_loc9_ && param2)
                              {
                                 break loop3;
                              }
                              if(§§pop())
                              {
                                 continue loop0;
                              }
                              loop4:
                              for(; §§pop(); §§push(§§pop() > this.§4"F§.MIGHTY_EAGLE_SHADING_DELAY),if(_loc8_ || this)
                              {
                                 continue;
                              },continue loop0)
                              {
                                 if(_loc8_)
                                 {
                                    while(true)
                                    {
                                       this.§3!q§ = true;
                                    }
                                    addr55:
                                 }
                                 while(!_loc9_)
                                 {
                                    this.§@O§.§?v§();
                                    if(_loc8_ || _loc3_)
                                    {
                                       if(true)
                                       {
                                          break loop4;
                                       }
                                       while(true)
                                       {
                                          §§push(this.mMightyEagleTimer);
                                          if(_loc8_)
                                          {
                                             continue loop4;
                                          }
                                          addr122:
                                          var _loc3_:* = §§pop();
                                          if(!_loc9_)
                                          {
                                             §§push(this);
                                             §§push(this.mMightyEagleTimer);
                                             if(_loc8_)
                                             {
                                                §§push(§§pop() + param2);
                                             }
                                             §§pop().mMightyEagleTimer = §§pop();
                                             if(_loc8_)
                                             {
                                                addr135:
                                                §§push(this.§@O§.particles);
                                                §§push(§'G§.§`!O§);
                                                §§push(§^!f§.§>"F§);
                                                §§push(§'G§.§+";§);
                                                §§push(param1.§=!y§().GetPosition().x);
                                                if(!_loc9_)
                                                {
                                                   §§push(_loc3_);
                                                   if(_loc8_ || param2)
                                                   {
                                                      §§push(§§pop() - §§pop());
                                                      if(_loc8_ || this)
                                                      {
                                                         addr186:
                                                         §§push(Math.random() * (_loc3_ * 2));
                                                         if(_loc8_)
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                         }
                                                         §§push(_loc3_);
                                                         if(!(_loc9_ && this))
                                                         {
                                                            §§push(§§pop() - §§pop());
                                                            if(!(_loc9_ && param1))
                                                            {
                                                               addr208:
                                                               §§push(§§pop() + Math.random() * (_loc3_ * 2));
                                                            }
                                                            §§pop().§;!u§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),3500,"",§'G§.§,">§(param1.§2!>§),0,0,1,0,4);
                                                            addr221:
                                                            var _loc4_:* = 1;
                                                            if(!_loc9_)
                                                            {
                                                               addr342:
                                                               if(this.mMightyEagleHasTouchedGround)
                                                               {
                                                                  addr343:
                                                                  param1.§<!!§(this.§4"F§.MIGHTY_EAGLE_ROTATION_SPEED * param2);
                                                                  addr350:
                                                                  §§push(-1);
                                                                  if(_loc8_ || this)
                                                                  {
                                                                     _loc4_ = §§pop();
                                                                     addr339:
                                                                     §§push(this.§@s§);
                                                                     if(_loc8_)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           if(!(_loc9_ && _loc3_))
                                                                           {
                                                                              this.§@s§ = false;
                                                                           }
                                                                           addr321:
                                                                           if(_loc8_ || param1)
                                                                           {
                                                                              this.§@O§.§`K§();
                                                                              param1.§&x§(§;!y§.§#!w§);
                                                                              addr294:
                                                                              if(!_loc9_)
                                                                              {
                                                                                 this.mSardineCanAdded = false;
                                                                                 addr267:
                                                                                 if(!(_loc9_ && param1))
                                                                                 {
                                                                                    if(!(_loc9_ && param1))
                                                                                    {
                                                                                       addr260:
                                                                                       param1.§"!&§.§&!u§ = true;
                                                                                       addr257:
                                                                                       addr262:
                                                                                       §§push(param1.§"!&§);
                                                                                       if(!(_loc9_ && _loc3_))
                                                                                       {
                                                                                          §§pop().§[!k§();
                                                                                          if(_loc8_)
                                                                                          {
                                                                                             if(_loc8_)
                                                                                             {
                                                                                                if(!(_loc9_ && this))
                                                                                                {
                                                                                                   if(_loc8_ || _loc3_)
                                                                                                   {
                                                                                                      if(false)
                                                                                                      {
                                                                                                         §§goto(addr257);
                                                                                                      }
                                                                                                      addr352:
                                                                                                      var _loc6_:int = 0;
                                                                                                      var _loc7_:* = this.§=",§;
                                                                                                      addr408:
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
                                                                                                                  if(!(_loc9_ && param2))
                                                                                                                  {
                                                                                                                     §§pop();
                                                                                                                     if(!_loc9_)
                                                                                                                     {
                                                                                                                        §§push(_loc5_.§^6§());
                                                                                                                        if(!_loc9_)
                                                                                                                        {
                                                                                                                           addr385:
                                                                                                                           if(§§pop())
                                                                                                                           {
                                                                                                                              if(_loc8_)
                                                                                                                              {
                                                                                                                                 addr388:
                                                                                                                                 §§push(_loc5_.§=!y§());
                                                                                                                                 if(!(_loc9_ && param1))
                                                                                                                                 {
                                                                                                                                    §§pop().SetAwake(true);
                                                                                                                                    if(!_loc9_)
                                                                                                                                    {
                                                                                                                                       §§push(_loc5_.§=!y§());
                                                                                                                                    }
                                                                                                                                    §§goto(addr408);
                                                                                                                                 }
                                                                                                                                 §§pop().SetLinearVelocity(new b2Vec2(0,-18));
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr408);
                                                                                                                        }
                                                                                                                        §§goto(addr385);
                                                                                                                     }
                                                                                                                     §§goto(addr388);
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr385);
                                                                                                         }
                                                                                                         if(_loc8_ || _loc3_)
                                                                                                         {
                                                                                                            if(!_loc9_)
                                                                                                            {
                                                                                                               if(!(_loc9_ && this))
                                                                                                               {
                                                                                                                  this.§+!T§();
                                                                                                                  if(!(_loc9_ && _loc3_))
                                                                                                                  {
                                                                                                                     addr439:
                                                                                                                     §§push(this.mMightyEagleTimer > 6000);
                                                                                                                     if(_loc8_ || _loc3_)
                                                                                                                     {
                                                                                                                        if(§§pop())
                                                                                                                        {
                                                                                                                           if(_loc8_ || this)
                                                                                                                           {
                                                                                                                              §§pop();
                                                                                                                              if(_loc8_)
                                                                                                                              {
                                                                                                                                 §§push(this.isPigsAlive());
                                                                                                                                 if(!(_loc9_ && param2))
                                                                                                                                 {
                                                                                                                                    addr471:
                                                                                                                                    §§push(Boolean(§§pop()));
                                                                                                                                    if(_loc8_ || _loc3_)
                                                                                                                                    {
                                                                                                                                       addr479:
                                                                                                                                       if(§§pop())
                                                                                                                                       {
                                                                                                                                          if(_loc8_)
                                                                                                                                          {
                                                                                                                                             addr482:
                                                                                                                                             _loc6_ = 0;
                                                                                                                                             if(_loc8_ || param1)
                                                                                                                                             {
                                                                                                                                                _loc7_ = this.§=",§;
                                                                                                                                                addr547:
                                                                                                                                                for each(_loc5_ in _loc7_)
                                                                                                                                                {
                                                                                                                                                   §§push(Boolean(_loc5_));
                                                                                                                                                   if(!(_loc9_ && param1))
                                                                                                                                                   {
                                                                                                                                                      if(§§pop())
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc9_ && _loc3_))
                                                                                                                                                         {
                                                                                                                                                            addr520:
                                                                                                                                                            §§pop();
                                                                                                                                                            if(!_loc9_)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc5_.§^6§());
                                                                                                                                                               if(!(_loc9_ && param2))
                                                                                                                                                               {
                                                                                                                                                                  addr533:
                                                                                                                                                                  if(§§pop())
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc8_)
                                                                                                                                                                     {
                                                                                                                                                                        addr536:
                                                                                                                                                                        §§push(_loc5_);
                                                                                                                                                                        §§push(_loc5_.§@!h§);
                                                                                                                                                                        if(!_loc9_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() * 2);
                                                                                                                                                                        }
                                                                                                                                                                        §§pop().applyDamage(§§pop(),true,true,true);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr547);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr533);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr536);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr533);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr520);
                                                                                                                                                }
                                                                                                                                                addr550:
                                                                                                                                                if(_loc8_)
                                                                                                                                                {
                                                                                                                                                   addr559:
                                                                                                                                                   param1.§^!M§(param2,new Point(this.§4"F§.MIGHTY_EAGLE_X_DIRECTION,_loc4_ * this.§4"F§.MIGHTY_EAGLE_Y_CHANGE),this.§4"F§.MIGHTY_EAGLE_FLYING_SPEED);
                                                                                                                                                   if(_loc8_ || param2)
                                                                                                                                                   {
                                                                                                                                                      if(_loc9_ && param2)
                                                                                                                                                      {
                                                                                                                                                         this.§@s§ = this.mMightyEagleHasTouchedGround;
                                                                                                                                                         addr606:
                                                                                                                                                         §§goto(addr559);
                                                                                                                                                         addr616:
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr606);
                                                                                                                                                   addr607:
                                                                                                                                                }
                                                                                                                                                return false;
                                                                                                                                                addr549:
                                                                                                                                             }
                                                                                                                                             §§goto(addr550);
                                                                                                                                          }
                                                                                                                                          §§goto(addr606);
                                                                                                                                       }
                                                                                                                                       §§goto(addr607);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr550);
                                                                                                                              }
                                                                                                                              §§goto(addr606);
                                                                                                                           }
                                                                                                                           §§goto(addr550);
                                                                                                                        }
                                                                                                                        §§goto(addr479);
                                                                                                                     }
                                                                                                                     §§goto(addr471);
                                                                                                                  }
                                                                                                                  §§goto(addr616);
                                                                                                               }
                                                                                                               §§goto(addr482);
                                                                                                            }
                                                                                                            §§goto(addr550);
                                                                                                         }
                                                                                                         §§goto(addr549);
                                                                                                      }
                                                                                                      §§goto(addr547);
                                                                                                   }
                                                                                                   §§goto(addr339);
                                                                                                }
                                                                                                §§goto(addr294);
                                                                                             }
                                                                                             §§goto(addr267);
                                                                                          }
                                                                                          §§goto(addr262);
                                                                                       }
                                                                                       §§goto(addr260);
                                                                                       addr281:
                                                                                    }
                                                                                    §§goto(addr343);
                                                                                 }
                                                                                 §§goto(addr294);
                                                                              }
                                                                              §§goto(addr321);
                                                                           }
                                                                           §§goto(addr350);
                                                                        }
                                                                        §§goto(addr439);
                                                                     }
                                                                     §§goto(addr342);
                                                                  }
                                                                  §§goto(addr352);
                                                               }
                                                               this.mMightyEagleHasTouchedGround = param1.§=!y§().GetPosition().y >= -5.5;
                                                               §§goto(addr606);
                                                            }
                                                            §§goto(addr281);
                                                         }
                                                         §§goto(addr208);
                                                      }
                                                      §§push(param1.§=!y§().GetPosition().y);
                                                      if(_loc8_ || _loc3_)
                                                      {
                                                         §§goto(addr186);
                                                      }
                                                      §§goto(addr208);
                                                   }
                                                }
                                                §§goto(addr186);
                                             }
                                             §§goto(addr221);
                                          }
                                          §§goto(addr135);
                                          addr110:
                                       }
                                       continue loop4;
                                    }
                                 }
                                 while(!_loc9_)
                                 {
                                    §§goto(addr110);
                                 }
                                 continue loop3;
                              }
                              §§goto(addr122);
                              §§push(Number(3));
                           }
                        }
                        continue loop1;
                     }
                  }
                  §§goto(addr90);
               }
            }
         }
         §§goto(addr55);
      }
      
      private function §0M§() : void
      {
         var _loc20_:Boolean = true;
         var _loc21_:Boolean = false;
         var _loc1_:§^!x§ = null;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc6_:§&!r§ = null;
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
         while(this.§ '§.length > 0)
         {
            _loc1_ = this.§ '§.shift();
            if(_loc20_)
            {
               §§push(_loc1_.§2!q§);
               if(_loc20_ || _loc2_)
               {
                  §§push(Number(§§pop()));
                  if(_loc20_ || _loc3_)
                  {
                     _loc2_ = §§pop();
                     if(_loc20_ || this)
                     {
                        §§push(_loc1_.x);
                        if(!(_loc21_ && this))
                        {
                           §§push(Number(§§pop()));
                           if(_loc20_)
                           {
                              _loc3_ = §§pop();
                              loop1:
                              while(true)
                              {
                                 loop2:
                                 while(true)
                                 {
                                    §§push(_loc1_.y);
                                    loop3:
                                    while(true)
                                    {
                                       §§push(Number(§§pop()));
                                       if(!(_loc20_ || _loc3_))
                                       {
                                          break;
                                       }
                                       _loc4_ = §§pop();
                                       if(!(_loc21_ && _loc2_))
                                       {
                                          §§push(_loc1_.damage);
                                          if(_loc21_ && _loc3_)
                                          {
                                             break loop1;
                                          }
                                          if(_loc20_)
                                          {
                                             §§push(Number(§§pop()));
                                             if(_loc20_ || _loc1_)
                                             {
                                                _loc5_ = §§pop();
                                                if(_loc20_ || this)
                                                {
                                                   if(_loc21_)
                                                   {
                                                      break loop2;
                                                   }
                                                   if(false)
                                                   {
                                                      continue loop2;
                                                   }
                                                   §§push(0);
                                                   if(!(_loc21_ && _loc2_))
                                                   {
                                                      var _loc18_:* = §§pop();
                                                      if(_loc20_ || _loc1_)
                                                      {
                                                         loop25:
                                                         for each(_loc6_ in this.§=",§)
                                                         {
                                                            if(_loc20_)
                                                            {
                                                               §§push(_loc1_.§<"F§ == null);
                                                               if(_loc20_ || _loc2_)
                                                               {
                                                                  §§push(!§§pop());
                                                                  if(!(_loc21_ && _loc1_))
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        loop83:
                                                                        while(true)
                                                                        {
                                                                           §§pop();
                                                                           loop84:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc1_.§<"F§.indexOf(_loc6_) == -1);
                                                                              if(_loc20_ || this)
                                                                              {
                                                                                 continue loop83;
                                                                              }
                                                                              addr572:
                                                                              while(true)
                                                                              {
                                                                                 if(!§§pop())
                                                                                 {
                                                                                    §§push(_loc6_.§=!y§());
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop().GetPosition());
                                                                                       loop29:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop().x);
                                                                                          loop30:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc3_);
                                                                                             loop31:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop() - §§pop());
                                                                                                loop32:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(Number(§§pop()));
                                                                                                   loop33:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      _loc8_ = §§pop();
                                                                                                      loop34:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc6_.§=!y§());
                                                                                                         loop35:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop().GetPosition());
                                                                                                            if(_loc21_ && _loc1_)
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            §§push(§§pop().y);
                                                                                                            loop36:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc4_);
                                                                                                               loop37:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop() - §§pop());
                                                                                                                  loop38:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                     loop39:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        _loc9_ = §§pop();
                                                                                                                        loop40:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(Number(Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_)));
                                                                                                                           loop41:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop());
                                                                                                                              loop42:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 _loc10_ = §§pop();
                                                                                                                                 loop43:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(_loc1_.§2!q§);
                                                                                                                                    loop44:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(§§pop() <= §§pop())
                                                                                                                                       {
                                                                                                                                          loop45:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(_loc1_.push);
                                                                                                                                             loop46:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                                loop47:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   _loc11_ = §§pop();
                                                                                                                                                   loop48:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc10_);
                                                                                                                                                      loop49:
                                                                                                                                                      while(!_loc21_)
                                                                                                                                                      {
                                                                                                                                                         §§push(1);
                                                                                                                                                         loop50:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(§§pop() > §§pop())
                                                                                                                                                            {
                                                                                                                                                               if(!_loc21_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc11_);
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc10_);
                                                                                                                                                                     addr500:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() / §§pop());
                                                                                                                                                                        addr501:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(Number(§§pop()));
                                                                                                                                                                           addr502:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              _loc11_ = §§pop();
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  addr499:
                                                                                                                                                               }
                                                                                                                                                               while(_loc20_ || _loc1_)
                                                                                                                                                               {
                                                                                                                                                               }
                                                                                                                                                               addr573:
                                                                                                                                                               continue loop25;
                                                                                                                                                               addr503:
                                                                                                                                                            }
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc10_);
                                                                                                                                                               loop57:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc21_ && _loc1_)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop46;
                                                                                                                                                                  }
                                                                                                                                                                  if(_loc21_)
                                                                                                                                                                  {
                                                                                                                                                                     break;
                                                                                                                                                                  }
                                                                                                                                                                  §§push(0);
                                                                                                                                                                  loop58:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(§§pop() <= §§pop())
                                                                                                                                                                     {
                                                                                                                                                                        loop74:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc10_);
                                                                                                                                                                           loop75:
                                                                                                                                                                           while(_loc20_)
                                                                                                                                                                           {
                                                                                                                                                                              if(!_loc21_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc1_.§[!F§);
                                                                                                                                                                                 loop76:
                                                                                                                                                                                 for(; !_loc21_; §§push(_loc10_),if(!(_loc20_ || _loc3_))
                                                                                                                                                                                 {
                                                                                                                                                                                    continue;
                                                                                                                                                                                 },§§goto(addr247))
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!_loc21_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr294:
                                                                                                                                                                                       if(!(_loc21_ && _loc2_))
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!(_loc21_ && _loc2_))
                                                                                                                                                                                          {
                                                                                                                                                                                             if(§§pop() > §§pop())
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop25;
                                                                                                                                                                                             }
                                                                                                                                                                                             if(_loc20_ || _loc3_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc20_ || _loc3_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!(_loc20_ || _loc3_))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop48;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§push(_loc5_);
                                                                                                                                                                                                   loop77:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                                                                      loop78:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         _loc14_ = §§pop();
                                                                                                                                                                                                         addr333:
                                                                                                                                                                                                         addr366:
                                                                                                                                                                                                         loop79:
                                                                                                                                                                                                         while(!(_loc21_ && this))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!_loc21_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!(_loc21_ && _loc2_))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  loop80:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(_loc10_);
                                                                                                                                                                                                                     if(!_loc21_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr205:
                                                                                                                                                                                                                        if(_loc20_ || this)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(1);
                                                                                                                                                                                                                           if(_loc21_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              continue loop58;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           if(_loc21_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              continue loop50;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           if(§§pop() > §§pop())
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(!_loc21_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(_loc14_);
                                                                                                                                                                                                                                 if(_loc20_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr223:
                                                                                                                                                                                                                                    if(!_loc21_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr225:
                                                                                                                                                                                                                                       if(_loc20_ || this)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(!(_loc21_ && _loc2_))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             continue loop76;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          continue loop38;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       loop60:
                                                                                                                                                                                                                                       while(!_loc21_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(_loc20_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(_loc8_);
                                                                                                                                                                                                                                             while(!(_loc21_ && this))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(_loc21_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   continue loop42;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                if(!(_loc20_ || _loc2_))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   continue loop31;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§push(_loc10_);
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                                   addr473:
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                      addr474:
                                                                                                                                                                                                                                                      while(!_loc21_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                                                                                                                         loop65:
                                                                                                                                                                                                                                                         while(_loc20_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(_loc20_ || _loc2_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               _loc12_ = §§pop();
                                                                                                                                                                                                                                                               while(!_loc21_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(_loc11_);
                                                                                                                                                                                                                                                                  continue loop65;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               continue loop40;
                                                                                                                                                                                                                                                               addr487:
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            continue loop39;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         continue loop41;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      continue loop30;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   loop68:
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(_loc10_);
                                                                                                                                                                                                                                                      if(_loc20_ || this)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                                         break loop76;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      break;
                                                                                                                                                                                                                                                      addr247:
                                                                                                                                                                                                                                                      if(!(_loc20_ || _loc1_))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         continue;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                                      if(_loc20_ || _loc3_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         continue loop77;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      addr272:
                                                                                                                                                                                                                                                      addr272:
                                                                                                                                                                                                                                                      if(!_loc20_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         continue loop75;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      if(!_loc21_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(_loc20_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            _loc14_ = §§pop();
                                                                                                                                                                                                                                                            loop81:
                                                                                                                                                                                                                                                            while(!_loc21_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  addr185:
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     this.applyExplosionDamage(_loc6_,_loc14_);
                                                                                                                                                                                                                                                                     if(!_loc21_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        break;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     continue loop81;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  if(_loc20_ || this)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(false)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        continue loop80;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     continue loop25;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  continue loop79;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            while(_loc20_ || _loc2_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(_loc11_);
                                                                                                                                                                                                                                                               §§goto(addr225);
                                                                                                                                                                                                                                                               continue loop60;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            continue loop34;
                                                                                                                                                                                                                                                            addr279:
                                                                                                                                                                                                                                                            addr432:
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         continue loop57;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      addr378:
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(_loc20_ || _loc3_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(!(_loc21_ && _loc2_))
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(_loc20_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(!_loc21_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(_loc9_);
                                                                                                                                                                                                                                                                     continue loop68;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr499);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               break;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr474);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr477);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr502);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr294);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             continue loop44;
                                                                                                                                                                                                                                             addr455:
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          continue loop36;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       continue loop43;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    continue loop78;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr272);
                                                                                                                                                                                                                                 §§goto(addr378);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr279);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr185);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        break;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr223);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  while(!(_loc21_ && _loc1_))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(Number(§§pop()));
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        _loc13_ = §§pop();
                                                                                                                                                                                                                        continue loop35;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr205);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  continue loop32;
                                                                                                                                                                                                                  addr409:
                                                                                                                                                                                                               }
                                                                                                                                                                                                               continue loop45;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            continue loop35;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         while(!(_loc21_ && this))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc20_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop74;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            continue loop84;
                                                                                                                                                                                                            §§goto(addr333);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr487);
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr503);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr333);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr500);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr455);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr473);
                                                                                                                                                                                 }
                                                                                                                                                                                 while(_loc20_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr409);
                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                 }
                                                                                                                                                                                 continue loop37;
                                                                                                                                                                              }
                                                                                                                                                                              continue loop49;
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr501);
                                                                                                                                                                        }
                                                                                                                                                                        addr282:
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr432);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               continue loop33;
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      continue loop47;
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr282);
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
                                                                                                         continue loop29;
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr573);
                                                                              }
                                                                           }
                                                                        }
                                                                        addr604:
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§goto(addr572);
                                                                        §§goto(addr570);
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr604);
                                                            }
                                                            §§goto(addr281);
                                                         }
                                                      }
                                                      if(!(_loc21_ && _loc2_))
                                                      {
                                                         §§push(this.§@O§);
                                                         while(true)
                                                         {
                                                            §§push(§§pop().particles);
                                                            addr864:
                                                            while(true)
                                                            {
                                                               §§push(this.§in §(_loc1_.type));
                                                               addr868:
                                                               while(true)
                                                               {
                                                                  §§push(§^!f§.§>"F§);
                                                                  addr870:
                                                                  while(true)
                                                                  {
                                                                     §§push(§'G§.§5!l§);
                                                                     addr872:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc3_);
                                                                        addr873:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc4_);
                                                                           addr884:
                                                                           while(true)
                                                                           {
                                                                              §§pop().§;!u§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),600,"",§'G§.§4!Q§,0,0,0,0,1,20,true);
                                                                              if(_loc21_ && this)
                                                                              {
                                                                                 continue loop0;
                                                                              }
                                                                              §§push(30);
                                                                              while(true)
                                                                              {
                                                                                 _loc7_ = §§pop();
                                                                                 addr860:
                                                                                 while(true)
                                                                                 {
                                                                                    addr904:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc7_);
                                                                                       addr905:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(150);
                                                                                          addr906:
                                                                                          while(true)
                                                                                          {
                                                                                             if(§§pop() >= §§pop())
                                                                                             {
                                                                                                continue loop0;
                                                                                             }
                                                                                             addr833:
                                                                                             addr831:
                                                                                             §§push(0.75);
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc2_);
                                                                                                if(_loc20_ || this)
                                                                                                {
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(Math.random() * _loc2_);
                                                                                                   }
                                                                                                   addr842:
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                   break loop1;
                                                                                                }
                                                                                                §§goto(addr831);
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
                                                         addr863:
                                                         addr617:
                                                      }
                                                      loop86:
                                                      while(true)
                                                      {
                                                         addr666:
                                                         addr664:
                                                         loop5:
                                                         while(true)
                                                         {
                                                            §§push(this.§@O§);
                                                            if(!(_loc21_ && _loc1_))
                                                            {
                                                               §§push(§§pop().particles);
                                                               if(!_loc21_)
                                                               {
                                                                  §§push(§'G§.§34§);
                                                                  if(_loc20_)
                                                                  {
                                                                     §§push(§^!f§.§>"F§);
                                                                     if(!(_loc21_ && _loc3_))
                                                                     {
                                                                        §§push(§'G§.§+";§);
                                                                        if(_loc20_ || _loc2_)
                                                                        {
                                                                           §§push(_loc3_);
                                                                           if(_loc20_ || _loc3_)
                                                                           {
                                                                              §§push(_loc4_);
                                                                              if(_loc20_ || _loc2_)
                                                                              {
                                                                                 §§push(_loc16_);
                                                                                 §§push("");
                                                                                 §§push(§'G§.§4!Q§);
                                                                                 §§push(_loc15_);
                                                                                 if(!(_loc21_ && _loc2_))
                                                                                 {
                                                                                    §§push(§§pop() * Math.cos(_loc17_));
                                                                                 }
                                                                                 §§push(_loc15_);
                                                                                 if(!(_loc21_ && _loc1_))
                                                                                 {
                                                                                    §§push(-§§pop());
                                                                                    if(!(_loc21_ && _loc1_))
                                                                                    {
                                                                                       addr749:
                                                                                       §§push(§§pop() * Math.sin(_loc17_));
                                                                                    }
                                                                                    §§pop().§;!u§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),20,0);
                                                                                    if(!(_loc20_ || this))
                                                                                    {
                                                                                       continue loop0;
                                                                                    }
                                                                                    if(!(_loc21_ && _loc1_))
                                                                                    {
                                                                                       if(_loc20_)
                                                                                       {
                                                                                          §§push(_loc7_);
                                                                                          if(_loc20_ || _loc1_)
                                                                                          {
                                                                                             if(_loc20_)
                                                                                             {
                                                                                                §§push(5);
                                                                                                if(!_loc21_)
                                                                                                {
                                                                                                   if(!_loc21_)
                                                                                                   {
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                      if(!_loc21_)
                                                                                                      {
                                                                                                         if(_loc20_)
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(int(§§pop()));
                                                                                                               if(_loc20_ || this)
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc20_)
                                                                                                                     {
                                                                                                                        _loc7_ = §§pop();
                                                                                                                        if(_loc20_ || _loc2_)
                                                                                                                        {
                                                                                                                           addr657:
                                                                                                                           if(!(_loc21_ && _loc3_))
                                                                                                                           {
                                                                                                                              break loop5;
                                                                                                                           }
                                                                                                                           continue loop86;
                                                                                                                        }
                                                                                                                        continue loop0;
                                                                                                                     }
                                                                                                                     addr812:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(!_loc21_)
                                                                                                                        {
                                                                                                                           §§push(Math.random() * 750);
                                                                                                                           loop15:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                              loop8:
                                                                                                                              for(; _loc20_ || _loc2_; continue loop15)
                                                                                                                              {
                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                 loop13:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    _loc16_ = §§pop();
                                                                                                                                    addr828:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(_loc7_);
                                                                                                                                       addr775:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(180);
                                                                                                                                          addr776:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() / Math.PI);
                                                                                                                                             if(_loc21_ && this)
                                                                                                                                             {
                                                                                                                                                continue loop15;
                                                                                                                                             }
                                                                                                                                             addr786:
                                                                                                                                             §§push(§§pop() / §§pop());
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(!(_loc20_ || _loc1_))
                                                                                                                                                {
                                                                                                                                                   continue loop8;
                                                                                                                                                }
                                                                                                                                                if(!_loc21_)
                                                                                                                                                {
                                                                                                                                                   addr796:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                      addr797:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(!_loc21_)
                                                                                                                                                         {
                                                                                                                                                            if(!(_loc21_ && _loc1_))
                                                                                                                                                            {
                                                                                                                                                               if(_loc20_)
                                                                                                                                                               {
                                                                                                                                                                  break;
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr842);
                                                                                                                                                            }
                                                                                                                                                            break loop1;
                                                                                                                                                         }
                                                                                                                                                         continue loop13;
                                                                                                                                                      }
                                                                                                                                                      _loc17_ = §§pop();
                                                                                                                                                      continue loop86;
                                                                                                                                                   }
                                                                                                                                                   addr796:
                                                                                                                                                }
                                                                                                                                                §§goto(addr786);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              break loop3;
                                                                                                                           }
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§goto(addr859);
                                                                                                                        }
                                                                                                                        §§goto(addr833);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr647:
                                                                                                               }
                                                                                                               §§goto(addr905);
                                                                                                            }
                                                                                                            addr639:
                                                                                                         }
                                                                                                         §§goto(addr787);
                                                                                                      }
                                                                                                      §§goto(addr797);
                                                                                                   }
                                                                                                   §§goto(addr776);
                                                                                                }
                                                                                                §§goto(addr906);
                                                                                             }
                                                                                             §§goto(addr775);
                                                                                          }
                                                                                          §§goto(addr647);
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc20_ || _loc1_)
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                §§goto(addr812);
                                                                                             }
                                                                                             addr856:
                                                                                          }
                                                                                          §§goto(addr860);
                                                                                       }
                                                                                       addr849:
                                                                                    }
                                                                                    §§goto(addr828);
                                                                                 }
                                                                                 §§goto(addr749);
                                                                              }
                                                                              §§goto(addr859);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr873);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr872);
                                                                        }
                                                                        §§goto(addr873);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr870);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr868);
                                                                  }
                                                                  §§goto(addr870);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr864);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr863);
                                                            }
                                                            §§goto(addr864);
                                                         }
                                                         while(true)
                                                         {
                                                            if(false)
                                                            {
                                                               §§goto(addr666);
                                                            }
                                                            §§goto(addr904);
                                                            §§goto(addr657);
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr859);
                                                }
                                                §§goto(addr664);
                                             }
                                             break;
                                          }
                                          continue;
                                       }
                                       continue loop0;
                                    }
                                    addr848:
                                    while(true)
                                    {
                                       _loc15_ = §§pop();
                                       §§goto(addr849);
                                    }
                                 }
                              }
                              while(true)
                              {
                                 §§goto(addr848);
                              }
                           }
                           §§goto(addr796);
                        }
                        §§goto(addr639);
                     }
                     §§goto(addr617);
                  }
                  §§goto(addr848);
               }
               §§goto(addr796);
            }
            §§goto(addr856);
         }
      }
      
      protected function applyExplosionDamage(param1:§&!r§, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            param1.applyDamage(param2,false,false,false,true);
         }
      }
      
      protected function §in §(param1:int) : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(param1);
         if(_loc4_ || param1)
         {
         }
         switch(§§pop())
         {
         }
         return §'G§.§,W§;
      }
      
      public function §6!5§(param1:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:§&!r§ = null;
         var _loc3_:* = int(this.§=",§.length - 1);
         loop0:
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§=",§[_loc3_];
            if(_loc4_ || this)
            {
               §§push(_loc2_.§[`§());
               loop1:
               while(true)
               {
                  if(!§§pop())
                  {
                     §§push(_loc2_.§9"7§());
                     continue;
                  }
                  loop21:
                  while(true)
                  {
                     §§push(this.§^!<§(_loc2_,param1));
                     loop22:
                     while(true)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              this.§^U§(_loc3_,false,false,false);
                              addr260:
                              while(true)
                              {
                              }
                           }
                           addr254:
                        }
                        while(true)
                        {
                           loop4:
                           while(true)
                           {
                              §§push(_loc3_);
                              if(_loc4_ || param1)
                              {
                                 §§push(§§pop() - 1);
                              }
                              _loc3_ = §§pop();
                              if(_loc4_ || param1)
                              {
                                 if(_loc4_)
                                 {
                                    if(true)
                                    {
                                       break;
                                    }
                                    loop5:
                                    while(true)
                                    {
                                       §§push(_loc2_.shouldUpdate());
                                       if(!_loc5_)
                                       {
                                          if(!_loc5_)
                                          {
                                             addr71:
                                             §§push(Boolean(§§pop()));
                                             if(_loc5_ && this)
                                             {
                                                loop7:
                                                while(true)
                                                {
                                                   if(_loc4_)
                                                   {
                                                      §§pop();
                                                      while(true)
                                                      {
                                                         if(!_loc5_)
                                                         {
                                                            if(!(_loc5_ && _loc2_))
                                                            {
                                                               continue loop5;
                                                            }
                                                            addr208:
                                                            loop16:
                                                            while(true)
                                                            {
                                                               if(!_loc5_)
                                                               {
                                                                  this.§^U§(_loc3_,false,false,false);
                                                                  while(true)
                                                                  {
                                                                     if(_loc4_)
                                                                     {
                                                                        continue loop4;
                                                                     }
                                                                     continue loop16;
                                                                  }
                                                                  addr194:
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr254);
                                                               }
                                                            }
                                                         }
                                                         else
                                                         {
                                                            while(true)
                                                            {
                                                               _loc2_.§&x§(§;!y§.§@v§);
                                                               addr186:
                                                               do
                                                               {
                                                                  this.§^U§(_loc3_,false,true,true);
                                                               }
                                                               while(!(_loc4_ || _loc3_));
                                                               
                                                               if(!_loc5_)
                                                               {
                                                                  if(!_loc4_)
                                                                  {
                                                                     continue loop21;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     continue loop4;
                                                                  }
                                                               }
                                                            }
                                                            addr182:
                                                         }
                                                         §§goto(addr260);
                                                      }
                                                      addr139:
                                                   }
                                                   else
                                                   {
                                                      while(true)
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            §§push(_loc2_.isReadyToBeRemoved(param1));
                                                            loop13:
                                                            while(true)
                                                            {
                                                               if(_loc5_ && _loc2_)
                                                               {
                                                                  continue loop1;
                                                               }
                                                               if(!§§pop())
                                                               {
                                                                  §§push(_loc2_.§ !c§());
                                                                  if(_loc4_ || _loc2_)
                                                                  {
                                                                     addr115:
                                                                     §§push(Boolean(§§pop()));
                                                                     while(true)
                                                                     {
                                                                        if(!(_loc4_ || _loc2_))
                                                                        {
                                                                           continue loop13;
                                                                        }
                                                                        if(_loc5_)
                                                                        {
                                                                           continue loop22;
                                                                        }
                                                                        if(!§§pop())
                                                                        {
                                                                           continue loop7;
                                                                        }
                                                                        addr78:
                                                                        if(!§§pop())
                                                                        {
                                                                           continue loop4;
                                                                        }
                                                                        while(_loc4_ || _loc2_)
                                                                        {
                                                                           _loc2_.update(param1);
                                                                           while(true)
                                                                           {
                                                                              if(!_loc5_)
                                                                              {
                                                                                 if(!(_loc5_ && this))
                                                                                 {
                                                                                    if(!_loc5_)
                                                                                    {
                                                                                       continue loop4;
                                                                                    }
                                                                                    §§goto(addr194);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr156);
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr139);
                                                                              }
                                                                              §§goto(addr208);
                                                                           }
                                                                           §§goto(addr186);
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           continue loop4;
                                                                           §§goto(addr80);
                                                                        }
                                                                        addr80:
                                                                     }
                                                                     continue loop22;
                                                                     addr115:
                                                                  }
                                                                  §§goto(addr115);
                                                               }
                                                               §§goto(addr182);
                                                            }
                                                            addr174:
                                                         }
                                                      }
                                                      addr203:
                                                   }
                                                   §§goto(addr204);
                                                }
                                             }
                                             §§goto(addr78);
                                          }
                                          §§goto(addr115);
                                       }
                                       §§goto(addr71);
                                    }
                                 }
                                 §§goto(addr80);
                              }
                              §§goto(addr90);
                           }
                           continue loop0;
                        }
                     }
                  }
               }
            }
            §§goto(addr167);
         }
         if(!(_loc5_ && _loc3_))
         {
            this.§0M§();
         }
      }
      
      private function §+!T§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§3";§ = null;
         var _loc2_:int = 0;
         var _loc3_:* = this.§6'§;
         for each(_loc1_ in _loc3_)
         {
            if(!(_loc5_ && _loc2_))
            {
               if(_loc1_.type == §?!V§.§3!x§)
               {
                  continue;
               }
               if(!(_loc4_ || _loc3_))
               {
                  continue;
               }
            }
            this.§@O§.mLevelEngine.mWorld.§7! §(_loc1_.§0!i§);
         }
      }
      
      public function §!"7§() : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§&!r§ = null;
         var _loc1_:int = 0;
         while(true)
         {
            if(_loc1_ >= this.§=",§.length)
            {
               return false;
            }
            _loc2_ = this.§=",§[_loc1_];
            if(!_loc4_)
            {
               §§push(_loc2_.explode());
               if(_loc4_ && this)
               {
                  break;
               }
               if(§§pop())
               {
                  if(_loc3_ || this)
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
      
      public function §6B§(param1:§&!r§) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            §§push(Boolean(param1));
            if(!_loc2_)
            {
               §§push(§§pop());
               loop0:
               while(true)
               {
                  if(§§pop())
                  {
                     addr130:
                     while(true)
                     {
                        §§pop();
                        addr131:
                        while(true)
                        {
                           §§push(param1.§3!4§.§^"9§() == §9!n§.§'f§);
                           if(_loc3_)
                           {
                              §§push(!§§pop());
                              if(_loc2_)
                              {
                                 continue loop0;
                              }
                           }
                           addr107:
                           §§push(Boolean(§§pop()));
                        }
                     }
                     addr130:
                  }
                  while(true)
                  {
                     continue loop0;
                  }
               }
            }
            §§goto(addr130);
         }
         §§goto(addr84);
      }
      
      public function §^U§(param1:int, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc6_:§3";§ = null;
         var _loc7_:§;!@§ = null;
         if(_loc13_)
         {
            if(param1 < 0)
            {
               if(_loc13_ || param1)
               {
                  §§goto(addr35);
               }
            }
            var _loc5_:§&!r§;
            §§push((_loc5_ = this.§=",§[param1]).§^6§());
            if(!_loc12_)
            {
               if(§§pop())
               {
                  if(_loc13_ || param1)
                  {
                     var _loc8_:*;
                     §§push((_loc8_ = this).get);
                     if(!_loc12_)
                     {
                        §§push(§§pop() + 1);
                     }
                     var _loc9_:* = §§pop();
                     if(!_loc12_)
                     {
                        _loc8_.get = _loc9_;
                     }
                     if(!_loc12_)
                     {
                        addr270:
                        if(_loc5_ == this.§@O§.activeObject)
                        {
                           loop22:
                           while(true)
                           {
                              §§push(this.§@O§);
                              loop4:
                              while(true)
                              {
                                 §§pop().activeObject = null;
                                 addr279:
                                 while(true)
                                 {
                                 }
                                 loop7:
                                 while(true)
                                 {
                                    §§push(this.§@O§);
                                    if(_loc12_ && param2)
                                    {
                                       continue loop4;
                                    }
                                    §§push(_loc5_.§3!4§.score);
                                    §§push(§?E§.§4!k§);
                                    §§push(true);
                                    §§push(_loc5_.§=!y§().GetPosition().x);
                                    §§push(_loc5_.§=!y§().GetPosition().y);
                                    if(_loc13_ || param2)
                                    {
                                       §§push(3);
                                       if(_loc13_)
                                       {
                                          addr264:
                                          §§push(§§pop() - §§pop());
                                          §§push(§'G§.§>!&§(_loc5_.§2!>§));
                                       }
                                       §§pop().addScore(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
                                       addr269:
                                       loop8:
                                       while(true)
                                       {
                                          §§push(param3);
                                          addr207:
                                          loop25:
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                loop17:
                                                while(true)
                                                {
                                                   this.addDestructionParticles(_loc5_,this.§@O§.particles);
                                                   loop11:
                                                   while(true)
                                                   {
                                                      if(_loc13_)
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(param4);
                                                            loop13:
                                                            while(true)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  while(true)
                                                                  {
                                                                     this.§`!I§(_loc5_);
                                                                     addr190:
                                                                     while(true)
                                                                     {
                                                                        if(!(_loc13_ || param3))
                                                                        {
                                                                           continue loop17;
                                                                        }
                                                                        if(!(_loc13_ || param1))
                                                                        {
                                                                           continue loop7;
                                                                        }
                                                                     }
                                                                  }
                                                                  addr187:
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(_loc5_.isTexture());
                                                                  if(_loc12_)
                                                                  {
                                                                     continue loop13;
                                                                  }
                                                                  if(!_loc13_)
                                                                  {
                                                                     continue loop25;
                                                                  }
                                                                  if(!(_loc12_ && this))
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        loop10:
                                                                        while(true)
                                                                        {
                                                                           if(!_loc12_)
                                                                           {
                                                                              if(!(_loc13_ || this))
                                                                              {
                                                                                 continue loop11;
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 this.removeChildFromMainSprite(_loc5_.sprite);
                                                                                 loop1:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!(_loc13_ || param2))
                                                                                    {
                                                                                       continue loop22;
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       loop2:
                                                                                       while(true)
                                                                                       {
                                                                                          this.§7!2§(_loc5_);
                                                                                          loop3:
                                                                                          while(!(_loc12_ && param2))
                                                                                          {
                                                                                             if(!_loc12_)
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   this.§9!o§(_loc5_);
                                                                                                   if(!(_loc12_ && param3))
                                                                                                   {
                                                                                                      if(!(_loc12_ && param3))
                                                                                                      {
                                                                                                         if(!_loc12_)
                                                                                                         {
                                                                                                            if(true)
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            continue loop2;
                                                                                                         }
                                                                                                         continue loop10;
                                                                                                      }
                                                                                                      continue loop1;
                                                                                                   }
                                                                                                   continue loop3;
                                                                                                }
                                                                                                _loc8_ = 0;
                                                                                                _loc9_ = this.§6'§;
                                                                                                loop18:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§hasnext(_loc9_,_loc8_));
                                                                                                   if(!(_loc12_ && param1))
                                                                                                   {
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         _loc6_ = §§nextvalue(_loc8_,_loc9_);
                                                                                                         if(_loc6_.index1 >= param1)
                                                                                                         {
                                                                                                            if(_loc13_)
                                                                                                            {
                                                                                                               var _loc10_:*;
                                                                                                               var _loc11_:* = (_loc10_ = _loc6_).index1 - 1;
                                                                                                               if(!_loc12_)
                                                                                                               {
                                                                                                                  _loc10_.index1 = _loc11_;
                                                                                                               }
                                                                                                               if(_loc12_)
                                                                                                               {
                                                                                                                  continue;
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         if(_loc6_.index2 >= param1)
                                                                                                         {
                                                                                                            if(!(_loc12_ && param1))
                                                                                                            {
                                                                                                               _loc11_ = (_loc10_ = _loc6_).index2 - 1;
                                                                                                               if(_loc13_ || this)
                                                                                                               {
                                                                                                                  _loc10_.index2 = _loc11_;
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         continue;
                                                                                                      }
                                                                                                      if(_loc13_ || param2)
                                                                                                      {
                                                                                                         if(!(_loc12_ && param2))
                                                                                                         {
                                                                                                            if(!_loc12_)
                                                                                                            {
                                                                                                               _loc8_ = 0;
                                                                                                               if(_loc13_)
                                                                                                               {
                                                                                                                  _loc9_ = this.§[+§;
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§hasnext(_loc9_,_loc8_));
                                                                                                                     break loop18;
                                                                                                                  }
                                                                                                                  addr444:
                                                                                                                  if(_loc13_ || param1)
                                                                                                                  {
                                                                                                                     _loc5_.dispose();
                                                                                                                     addr452:
                                                                                                                  }
                                                                                                                  _loc5_ = null;
                                                                                                                  if(_loc13_ || param1)
                                                                                                                  {
                                                                                                                     this.§=",§[param1] = null;
                                                                                                                     do
                                                                                                                     {
                                                                                                                        this.§=",§.splice(param1,1);
                                                                                                                     }
                                                                                                                     while(!_loc13_);
                                                                                                                     
                                                                                                                  }
                                                                                                                  return;
                                                                                                                  addr443:
                                                                                                                  addr441:
                                                                                                               }
                                                                                                               §§goto(addr444);
                                                                                                            }
                                                                                                            §§goto(addr452);
                                                                                                         }
                                                                                                         §§goto(addr444);
                                                                                                      }
                                                                                                      §§goto(addr443);
                                                                                                   }
                                                                                                   break;
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!§§pop())
                                                                                                   {
                                                                                                      §§goto(addr444);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      _loc7_ = §§nextvalue(_loc8_,_loc9_);
                                                                                                      §§push(_loc7_.§6>§);
                                                                                                      if(_loc13_ || param3)
                                                                                                      {
                                                                                                         §§push(param1);
                                                                                                         if(!_loc12_)
                                                                                                         {
                                                                                                            if(§§pop() == §§pop())
                                                                                                            {
                                                                                                               if(!(_loc12_ && param2))
                                                                                                               {
                                                                                                                  _loc7_.§>Z§ = true;
                                                                                                                  if(_loc12_)
                                                                                                                  {
                                                                                                                     continue;
                                                                                                                  }
                                                                                                                  addr410:
                                                                                                                  if(_loc7_.§6>§ < param1)
                                                                                                                  {
                                                                                                                     continue;
                                                                                                                  }
                                                                                                                  if(_loc12_ && param3)
                                                                                                                  {
                                                                                                                     continue;
                                                                                                                  }
                                                                                                               }
                                                                                                               §§push((_loc10_ = _loc7_).§6>§);
                                                                                                               if(_loc13_ || param2)
                                                                                                               {
                                                                                                                  §§push(§§pop() - 1);
                                                                                                               }
                                                                                                               _loc11_ = §§pop();
                                                                                                               if(!_loc12_)
                                                                                                               {
                                                                                                                  _loc10_.§6>§ = _loc11_;
                                                                                                               }
                                                                                                               continue;
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr410);
                                                                                                   }
                                                                                                }
                                                                                                addr147:
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr269);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr187);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 continue loop4;
                                                                              }
                                                                           }
                                                                           §§goto(addr190);
                                                                        }
                                                                     }
                                                                     §§goto(addr172);
                                                                  }
                                                               }
                                                               continue loop25;
                                                            }
                                                         }
                                                         addr184:
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr279);
                                                      }
                                                      addr219:
                                                      while(true)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            continue loop7;
                                                         }
                                                         continue loop8;
                                                         §§goto(addr155);
                                                      }
                                                   }
                                                }
                                             }
                                             §§goto(addr184);
                                          }
                                       }
                                    }
                                    §§goto(addr264);
                                 }
                              }
                           }
                        }
                        while(true)
                        {
                           §§goto(addr219);
                        }
                        addr71:
                     }
                     §§goto(addr183);
                  }
                  §§goto(addr71);
               }
               else
               {
                  §§push(_loc5_.§ !c§());
                  if(!(_loc12_ && param1))
                  {
                     if(§§pop())
                     {
                        if(!_loc12_)
                        {
                           §§push((_loc8_ = this).§&D§);
                           if(_loc13_ || param3)
                           {
                              §§push(§§pop() - 1);
                           }
                           _loc9_ = §§pop();
                           if(_loc13_)
                           {
                              _loc8_.§&D§ = _loc9_;
                           }
                           if(!(_loc12_ && param3))
                           {
                              §§goto(addr270);
                           }
                           §§goto(addr172);
                        }
                        §§goto(addr147);
                     }
                     §§goto(addr270);
                  }
               }
            }
            §§goto(addr207);
         }
         addr35:
      }
      
      protected function addDestructionParticles(param1:§&!r§, param2:§^!f§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            param1.addDestructionParticles(param2);
         }
      }
      
      protected function removeChildFromMainSprite(param1:Sprite) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.§7"C§);
            if(_loc2_ || this)
            {
               if(!§§pop().contains(param1))
               {
                  loop0:
                  while(true)
                  {
                     §§push(this.§,!&§);
                     if(_loc2_ || param1)
                     {
                        if(!§§pop().contains(param1))
                        {
                           loop1:
                           do
                           {
                              §§push(this.§#"3§);
                              if(!(_loc3_ && this))
                              {
                                 if(!§§pop().contains(param1))
                                 {
                                    while(true)
                                    {
                                       §§push(this.§]Q§);
                                       if(!_loc3_)
                                       {
                                          if(!§§pop().contains(param1))
                                          {
                                             return;
                                          }
                                          if(_loc2_)
                                          {
                                             if(_loc2_ || _loc2_)
                                             {
                                                if(!_loc3_)
                                                {
                                                   if(!(_loc2_ || _loc2_))
                                                   {
                                                      addr163:
                                                      this.§7"C§.removeChild(param1);
                                                      addr161:
                                                      break loop1;
                                                   }
                                                   addr54:
                                                   this.§]Q§.removeChild(param1);
                                                   addr56:
                                                   if(!(_loc3_ && this))
                                                   {
                                                      return;
                                                   }
                                                   if(!_loc3_)
                                                   {
                                                      if(!_loc2_)
                                                      {
                                                         break;
                                                      }
                                                      continue;
                                                   }
                                                   addr94:
                                                   if(!(_loc2_ || _loc3_))
                                                   {
                                                      continue loop0;
                                                   }
                                                   this.§#"3§.removeChild(param1);
                                                   return;
                                                   addr105:
                                                }
                                                return;
                                                addr145:
                                             }
                                             §§goto(addr105);
                                          }
                                          §§goto(addr56);
                                       }
                                       §§goto(addr54);
                                    }
                                    if(!(_loc2_ || _loc2_))
                                    {
                                       §§push(this.§,!&§);
                                       break loop0;
                                    }
                                    addr141:
                                    continue;
                                 }
                                 §§goto(addr94);
                              }
                              §§goto(addr103);
                           }
                           while(!_loc3_);
                           
                           return;
                        }
                        §§goto(addr141);
                     }
                     break;
                  }
                  §§pop().removeChild(param1);
                  §§goto(addr145);
               }
               §§goto(addr161);
            }
            §§goto(addr163);
         }
         §§goto(addr80);
      }
      
      protected function §`!I§(param1:§&!r§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            §§push(param1.§0!'§());
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
                        addr134:
                        do
                        {
                           §§push(param1.§5!P§());
                           if(!_loc2_)
                           {
                              §§push(Boolean(§§pop()));
                           }
                           if(!_loc3_)
                           {
                              continue loop2;
                           }
                        }
                        while(!_loc2_);
                        
                        continue loop1;
                     }
                  }
                  while(§§pop())
                  {
                     if(!(_loc2_ && _loc2_))
                     {
                        continue loop0;
                     }
                     addr111:
                     if(!_loc2_)
                     {
                        this.addExplosions(§^!x§.§7"A§,param1.§=!y§().GetPosition().x,param1.§=!y§().GetPosition().y);
                        break;
                        addr125:
                     }
                     §§goto(addr134);
                  }
                  addr25:
                  return;
               }
            }
         }
         §§goto(addr125);
      }
      
      public function §-!,§(param1:Object, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            this.§^U§(this.§=",§.indexOf(param1),param2,param3,param4);
         }
      }
      
      public function updateScrollAndScale(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §§push(this.§6"-§);
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
         var _loc3_:§&!r§ = null;
         var _loc2_:int = 0;
         loop0:
         while(_loc2_ < this.§=",§.length)
         {
            _loc3_ = this.§=",§[_loc2_] as §&!r§;
            if(_loc4_ || this)
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
                           loop4:
                           while(true)
                           {
                              §§push(_loc3_.§^6§());
                              while(true)
                              {
                                 §§push(Boolean(§§pop()));
                                 addr89:
                                 if(_loc4_ || param1)
                                 {
                                    loop18:
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          loop28:
                                          while(true)
                                          {
                                             if(_loc4_ || param1)
                                             {
                                                if(_loc4_)
                                                {
                                                   addr117:
                                                   if(!(_loc5_ && _loc3_))
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(true);
                                                         while(true)
                                                         {
                                                            if(_loc4_ || this)
                                                            {
                                                               return §§pop();
                                                            }
                                                            loop13:
                                                            while(_loc4_)
                                                            {
                                                               loop14:
                                                               while(true)
                                                               {
                                                                  if(!§§pop())
                                                                  {
                                                                     do
                                                                     {
                                                                        _loc2_++;
                                                                        if(!_loc4_)
                                                                        {
                                                                           continue;
                                                                        }
                                                                        if(_loc5_)
                                                                        {
                                                                           continue loop28;
                                                                        }
                                                                        if(!_loc4_)
                                                                        {
                                                                           continue loop4;
                                                                        }
                                                                     }
                                                                     while(false);
                                                                     
                                                                     continue loop0;
                                                                     addr39:
                                                                  }
                                                                  if(_loc4_ || _loc2_)
                                                                  {
                                                                     §§push(param1);
                                                                     if(_loc4_)
                                                                     {
                                                                        §§push(!§§pop());
                                                                     }
                                                                     loop15:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop());
                                                                        addr192:
                                                                        loop16:
                                                                        while(!_loc5_)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              continue loop18;
                                                                           }
                                                                           while(_loc4_ || this)
                                                                           {
                                                                              §§pop();
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc3_.§"!&§);
                                                                                 addr137:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop().mTryToBlink);
                                                                                    addr138:
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc4_)
                                                                                       {
                                                                                          §§push(0);
                                                                                          while(_loc4_)
                                                                                          {
                                                                                             §§push(§§pop() <= §§pop());
                                                                                             continue loop15;
                                                                                          }
                                                                                          addr141:
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(0);
                                                                                          }
                                                                                          addr174:
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          continue loop13;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              if(_loc5_ && this)
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              §§goto(addr89);
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop());
                                                                              break loop16;
                                                                              §§goto(addr195);
                                                                           }
                                                                           addr195:
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    continue loop3;
                                                                                 }
                                                                                 §§pop();
                                                                                 while(true)
                                                                                 {
                                                                                    §§goto(addr174);
                                                                                    §§goto(addr117);
                                                                                 }
                                                                              }
                                                                              continue loop4;
                                                                              addr222:
                                                                           }
                                                                           continue loop14;
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr213);
                                                                  §§goto(addr49);
                                                               }
                                                            }
                                                            continue loop1;
                                                         }
                                                      }
                                                      addr124:
                                                   }
                                                   §§goto(addr225);
                                                }
                                                §§goto(addr213);
                                             }
                                             §§goto(addr170);
                                          }
                                       }
                                       §§goto(addr39);
                                    }
                                 }
                              }
                           }
                        }
                     }
                     while(true)
                     {
                        §§goto(addr220);
                     }
                  }
               }
            }
            §§goto(addr124);
         }
         return false;
      }
      
      public function getPigCount(param1:Boolean = false) : int
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:§&!r§ = null;
         var _loc2_:int = 0;
         var _loc3_:* = int(this.§=",§.length - 1);
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
               §§push(Boolean(_loc4_ = this.§=",§[_loc3_] as §&!r§));
               if(!_loc6_)
               {
                  §§push(§§pop());
                  if(_loc5_ || _loc2_)
                  {
                     if(§§pop())
                     {
                        if(!_loc6_)
                        {
                           §§pop();
                           if(!_loc6_)
                           {
                              §§push(_loc4_.§^6§());
                              loop1:
                              while(true)
                              {
                                 §§push(Boolean(§§pop()));
                                 addr226:
                                 loop23:
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    loop22:
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          loop9:
                                          while(true)
                                          {
                                             §§pop();
                                             loop10:
                                             while(true)
                                             {
                                                §§push(_loc4_.§[" §);
                                                loop11:
                                                while(true)
                                                {
                                                   §§push(0);
                                                   loop13:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() > §§pop());
                                                      if(!_loc6_)
                                                      {
                                                         loop14:
                                                         while(§§pop())
                                                         {
                                                            loop18:
                                                            while(true)
                                                            {
                                                               if(_loc6_)
                                                               {
                                                                  continue loop10;
                                                               }
                                                               §§push(param1);
                                                               if(!(_loc6_ && _loc3_))
                                                               {
                                                                  if(_loc6_)
                                                                  {
                                                                     continue loop1;
                                                                  }
                                                                  §§push(!§§pop());
                                                                  loop12:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop());
                                                                     addr219:
                                                                     loop24:
                                                                     while(true)
                                                                     {
                                                                        if(!§§pop())
                                                                        {
                                                                           loop6:
                                                                           while(true)
                                                                           {
                                                                              §§pop();
                                                                              addr221:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc4_.§"!&§);
                                                                                 loop16:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop().mTryToBlink);
                                                                                    loop15:
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc6_ && _loc3_)
                                                                                       {
                                                                                          continue loop11;
                                                                                       }
                                                                                       §§push(0);
                                                                                       loop8:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!_loc5_)
                                                                                          {
                                                                                             continue loop13;
                                                                                          }
                                                                                          §§push(§§pop() <= §§pop());
                                                                                          if(_loc5_ || _loc3_)
                                                                                          {
                                                                                             if(!(_loc5_ || this))
                                                                                             {
                                                                                                continue loop12;
                                                                                             }
                                                                                             if(_loc6_)
                                                                                             {
                                                                                                continue loop9;
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop());
                                                                                                if(!_loc6_)
                                                                                                {
                                                                                                   if(_loc5_ || _loc3_)
                                                                                                   {
                                                                                                      if(!§§pop())
                                                                                                      {
                                                                                                      }
                                                                                                      loop21:
                                                                                                      while(§§pop())
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            _loc2_++;
                                                                                                            addr125:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc5_ || _loc3_)
                                                                                                               {
                                                                                                                  if(_loc5_ || this)
                                                                                                                  {
                                                                                                                     break loop14;
                                                                                                                  }
                                                                                                                  continue loop18;
                                                                                                               }
                                                                                                               addr185:
                                                                                                               loop19:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  addr81:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc4_.§"!&§);
                                                                                                                     if(_loc6_ && _loc3_)
                                                                                                                     {
                                                                                                                        continue loop16;
                                                                                                                     }
                                                                                                                     §§push(§§pop().mTryToScream);
                                                                                                                     if(!_loc5_)
                                                                                                                     {
                                                                                                                        continue loop15;
                                                                                                                     }
                                                                                                                     §§push(0);
                                                                                                                     if(!(_loc5_ || this))
                                                                                                                     {
                                                                                                                        continue loop8;
                                                                                                                     }
                                                                                                                     §§push(§§pop() <= §§pop());
                                                                                                                     if(!_loc6_)
                                                                                                                     {
                                                                                                                        if(!(_loc6_ && _loc3_))
                                                                                                                        {
                                                                                                                           continue loop21;
                                                                                                                        }
                                                                                                                        continue loop6;
                                                                                                                     }
                                                                                                                     continue loop19;
                                                                                                                  }
                                                                                                                  continue loop21;
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      break loop14;
                                                                                                      addr122:
                                                                                                   }
                                                                                                   continue loop22;
                                                                                                }
                                                                                                continue loop24;
                                                                                             }
                                                                                          }
                                                                                          while(_loc6_)
                                                                                          {
                                                                                             continue loop23;
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§pop();
                                                                                             §§goto(addr185);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr122);
                                                                     }
                                                                  }
                                                                  addr218:
                                                               }
                                                               §§goto(addr218);
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(_loc3_);
                                                            if(!(_loc6_ && _loc2_))
                                                            {
                                                               §§push(§§pop() - 1);
                                                            }
                                                            _loc3_ = §§pop();
                                                            if(_loc5_)
                                                            {
                                                               if(_loc5_)
                                                               {
                                                                  if(!(_loc6_ && _loc2_))
                                                                  {
                                                                     if(true)
                                                                     {
                                                                        continue loop0;
                                                                     }
                                                                     §§goto(addr81);
                                                                  }
                                                                  §§goto(addr221);
                                                               }
                                                               break;
                                                            }
                                                            §§goto(addr125);
                                                         }
                                                         §§goto(addr124);
                                                         addr193:
                                                      }
                                                      §§goto(addr218);
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       §§goto(addr193);
                                    }
                                 }
                              }
                           }
                           §§goto(addr124);
                        }
                        §§goto(addr171);
                     }
                     §§goto(addr226);
                  }
                  §§goto(addr219);
               }
               §§goto(addr184);
            }
            break;
         }
         return §§pop();
      }
      
      public function §<"9§() : int
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§&!r§ = null;
         var _loc1_:int = 0;
         loop0:
         for each(_loc2_ in this.§=",§)
         {
            if(_loc6_)
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
                                 §§push(_loc2_.§<!r§());
                                 if(!_loc5_)
                                 {
                                    §§push(Boolean(§§pop()));
                                    if(!_loc5_)
                                    {
                                       addr95:
                                       §§push(§§pop());
                                       if(_loc5_ && _loc1_)
                                       {
                                          break;
                                          addr68:
                                       }
                                       if(§§pop())
                                       {
                                       }
                                       loop8:
                                       while(§§pop())
                                       {
                                          addr70:
                                          if(_loc6_ || _loc1_)
                                          {
                                             _loc1_++;
                                          }
                                          if(!(_loc6_ || this))
                                          {
                                             while(!(_loc5_ && _loc1_))
                                             {
                                                §§push(_loc2_.§@!8§());
                                                if(_loc6_ || _loc1_)
                                                {
                                                   §§push(Boolean(§§pop()));
                                                }
                                                if(!(_loc5_ && _loc2_))
                                                {
                                                   if(!_loc5_)
                                                   {
                                                      continue loop8;
                                                   }
                                                   continue loop3;
                                                }
                                                §§goto(addr70);
                                             }
                                             continue loop4;
                                             addr117:
                                          }
                                          while(true)
                                          {
                                             if(true)
                                             {
                                                break loop8;
                                             }
                                             continue loop5;
                                          }
                                       }
                                       continue loop0;
                                    }
                                    while(!_loc5_)
                                    {
                                       §§pop();
                                       §§goto(addr117);
                                       §§goto(addr124);
                                    }
                                    continue loop1;
                                 }
                                 §§goto(addr95);
                              }
                              continue loop2;
                           }
                        }
                     }
                     §§goto(addr68);
                  }
               }
            }
            §§goto(addr85);
         }
         return _loc1_;
      }
      
      public function §+!r§() : int
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§&!r§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§=",§)
         {
            if(!_loc6_)
            {
               continue;
            }
            §§push(Boolean(_loc2_));
            if(!(_loc5_ && _loc1_))
            {
               if(§§pop())
               {
                  if(!(_loc5_ && _loc1_))
                  {
                     addr75:
                     §§pop();
                     if(!(_loc5_ && _loc2_))
                     {
                        §§push(_loc2_.isTexture());
                        if(_loc5_)
                        {
                        }
                        addr88:
                        if(§§pop())
                        {
                           if(!(_loc5_ && this))
                           {
                              _loc1_++;
                           }
                        }
                     }
                     continue;
                  }
                  §§push(Boolean(§§pop()));
               }
               §§goto(addr88);
            }
            §§goto(addr75);
         }
         return _loc1_;
      }
      
      public function makePigsSmile(param1:Number = 1) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§&!r§ = null;
         var _loc2_:int = this.§=",§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§=",§[_loc2_];
            if(_loc4_ || _loc2_)
            {
               §§push(Boolean(_loc3_));
               if(!_loc5_)
               {
                  §§push(§§pop());
                  loop1:
                  while(true)
                  {
                     if(§§pop())
                     {
                        addr146:
                        while(true)
                        {
                           §§pop();
                           addr147:
                           while(true)
                           {
                              §§push(_loc3_.§^6§());
                              addr125:
                              while(true)
                              {
                                 §§push(Boolean(§§pop()));
                              }
                           }
                        }
                        addr146:
                     }
                     while(true)
                     {
                        continue loop1;
                     }
                  }
               }
               §§goto(addr146);
            }
            §§goto(addr138);
         }
      }
      
      public function §[o§() : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§&!r§ = null;
         var _loc1_:int = this.§=",§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§=",§[_loc1_] as §&!r§;
            if(!_loc3_)
            {
               §§push(Boolean(_loc2_));
               if(_loc4_ || _loc2_)
               {
                  §§push(§§pop());
                  while(true)
                  {
                     if(!§§pop())
                     {
                        continue;
                     }
                  }
               }
               §§goto(addr139);
            }
            §§goto(addr47);
         }
         return false;
      }
      
      public function isWorldAtSleep() : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§&!r§ = null;
         var _loc1_:* = int(this.§=",§.length - 1);
         loop0:
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§=",§[_loc1_] as §&!r§;
            if(!(_loc3_ && _loc3_))
            {
               §§push(Boolean(_loc2_));
               if(!_loc3_)
               {
                  §§push(§§pop());
                  loop1:
                  while(true)
                  {
                     if(§§pop())
                     {
                        addr266:
                        while(true)
                        {
                           §§pop();
                           addr267:
                           while(true)
                           {
                              §§push(_loc2_.§[" §);
                              addr250:
                              while(true)
                              {
                                 §§push(0);
                                 addr251:
                                 while(true)
                                 {
                                    §§push(§§pop() > §§pop());
                                    addr252:
                                    while(true)
                                    {
                                       §§push(Boolean(§§pop()));
                                    }
                                 }
                              }
                           }
                        }
                        addr266:
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
                                 while(true)
                                 {
                                    §§pop();
                                    addr258:
                                    while(true)
                                    {
                                       §§push(_loc2_.§7[§);
                                       addr215:
                                       while(true)
                                       {
                                          §§push(§§pop() == §4u§.§1!B§);
                                          addr218:
                                          while(true)
                                          {
                                             §§push(!§§pop());
                                          }
                                       }
                                    }
                                 }
                                 addr257:
                              }
                              while(true)
                              {
                                 loop10:
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       loop11:
                                       while(_loc4_ || _loc1_)
                                       {
                                          §§push(_loc2_.§<! §());
                                          loop12:
                                          while(true)
                                          {
                                             §§push(Boolean(§§pop()));
                                             loop13:
                                             while(true)
                                             {
                                                §§push(§§pop());
                                                loop14:
                                                while(_loc4_)
                                                {
                                                   if(§§pop())
                                                   {
                                                      loop15:
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         addr246:
                                                         while(true)
                                                         {
                                                            §§push(_loc2_.§>"?§());
                                                            loop17:
                                                            for(; _loc4_ || _loc2_; while(_loc4_ || _loc3_)
                                                            {
                                                               continue loop15;
                                                            })
                                                            {
                                                               §§push(!§§pop());
                                                               if(!(_loc3_ && _loc3_))
                                                               {
                                                                  if(!_loc4_)
                                                                  {
                                                                     continue loop12;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        if(!_loc3_)
                                                                        {
                                                                           addr206:
                                                                           §§push(false);
                                                                           if(!_loc4_)
                                                                           {
                                                                              continue loop13;
                                                                           }
                                                                           if(_loc4_)
                                                                           {
                                                                              return §§pop();
                                                                           }
                                                                           §§goto(addr266);
                                                                        }
                                                                        else
                                                                        {
                                                                           addr211:
                                                                           while(true)
                                                                           {
                                                                           }
                                                                           addr211:
                                                                        }
                                                                        §§goto(addr206);
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc2_.§ !c§());
                                                                        if(_loc3_)
                                                                        {
                                                                           continue loop17;
                                                                        }
                                                                        if(_loc4_ || _loc3_)
                                                                        {
                                                                           §§push(Boolean(§§pop()));
                                                                           while(true)
                                                                           {
                                                                              if(_loc4_ || _loc2_)
                                                                              {
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    if(_loc3_ && _loc2_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    §§push(§§pop());
                                                                                    if(_loc4_)
                                                                                    {
                                                                                       continue loop1;
                                                                                    }
                                                                                    continue loop14;
                                                                                 }
                                                                                 continue loop3;
                                                                              }
                                                                              §§goto(addr257);
                                                                           }
                                                                           §§goto(addr252);
                                                                           addr136:
                                                                        }
                                                                        §§goto(addr211);
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr206);
                                                            }
                                                            §§goto(addr218);
                                                         }
                                                         if(_loc4_ || _loc1_)
                                                         {
                                                            §§pop();
                                                            loop25:
                                                            while(!_loc3_)
                                                            {
                                                               while(true)
                                                               {
                                                                  loop28:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc2_.§[" §);
                                                                     if(_loc4_)
                                                                     {
                                                                        §§push(0);
                                                                        if(!_loc3_)
                                                                        {
                                                                           addr80:
                                                                           §§push(§§pop() > §§pop());
                                                                           if(!(_loc3_ && _loc1_))
                                                                           {
                                                                              loop22:
                                                                              while(true)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       if(!(_loc4_ || _loc3_))
                                                                                       {
                                                                                          continue loop25;
                                                                                       }
                                                                                       §§push(false);
                                                                                       while(!(_loc4_ || _loc3_))
                                                                                       {
                                                                                          §§goto(addr163);
                                                                                          continue loop22;
                                                                                       }
                                                                                       if(_loc4_)
                                                                                       {
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             return §§pop();
                                                                                          }
                                                                                          continue loop10;
                                                                                       }
                                                                                       §§goto(addr136);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       loop23:
                                                                                       while(true)
                                                                                       {
                                                                                          addr44:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc1_);
                                                                                             if(_loc4_ || _loc2_)
                                                                                             {
                                                                                                if(!_loc3_)
                                                                                                {
                                                                                                   addr56:
                                                                                                   _loc1_ = §§pop() - 1;
                                                                                                   if(!_loc4_)
                                                                                                   {
                                                                                                      continue loop23;
                                                                                                   }
                                                                                                   if(_loc4_)
                                                                                                   {
                                                                                                      if(!(_loc4_ || _loc2_))
                                                                                                      {
                                                                                                         break loop22;
                                                                                                      }
                                                                                                      if(!_loc3_)
                                                                                                      {
                                                                                                         if(false)
                                                                                                         {
                                                                                                            continue loop28;
                                                                                                         }
                                                                                                         continue loop0;
                                                                                                      }
                                                                                                      §§goto(addr258);
                                                                                                   }
                                                                                                   §§goto(addr211);
                                                                                                }
                                                                                                break;
                                                                                             }
                                                                                             §§goto(addr56);
                                                                                          }
                                                                                          §§goto(addr215);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr211);
                                                                                 }
                                                                                 §§goto(addr44);
                                                                              }
                                                                              §§goto(addr246);
                                                                              addr88:
                                                                           }
                                                                           §§goto(addr100);
                                                                        }
                                                                        §§goto(addr251);
                                                                     }
                                                                     break;
                                                                  }
                                                                  §§goto(addr250);
                                                               }
                                                            }
                                                            continue loop11;
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr201);
                                                }
                                                continue loop4;
                                             }
                                          }
                                       }
                                       §§goto(addr267);
                                    }
                                    §§goto(addr44);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
               §§goto(addr266);
            }
            §§goto(addr180);
         }
         return true;
      }
      
      public function §;R§(param1:Boolean = false) : §&!r§
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc7_:§="$§ = null;
         if(!_loc9_)
         {
            if(!this.isPigsAlive())
            {
               if(!(_loc9_ && _loc3_))
               {
                  §§goto(addr31);
               }
            }
            var _loc2_:int = this.§=",§.length;
            §§push(this.getPigCount(param1));
            if(!(_loc9_ && _loc3_))
            {
               §§push(int(§§pop()));
            }
            var _loc3_:* = §§pop();
            if(!_loc9_)
            {
               §§push(_loc3_);
               if(!_loc9_)
               {
                  if(§§pop() == 0)
                  {
                     if(_loc8_ || this)
                     {
                        §§goto(addr64);
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
                  §§push(Boolean(_loc7_ = this.§=",§[_loc6_] as §="$§));
                  if(_loc8_ || _loc3_)
                  {
                     §§push(§§pop());
                     if(_loc8_)
                     {
                        if(§§pop())
                        {
                           if(_loc8_ || _loc3_)
                           {
                              §§pop();
                              if(!_loc9_)
                              {
                                 §§push(Boolean(_loc7_.§^6§()));
                                 loop18:
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    loop13:
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          loop17:
                                          while(true)
                                          {
                                             §§pop();
                                             loop10:
                                             while(true)
                                             {
                                                §§push(_loc7_.§[" § > 0);
                                                if(_loc8_)
                                                {
                                                   while(true)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         loop7:
                                                         while(true)
                                                         {
                                                            §§push(param1);
                                                            if(_loc8_)
                                                            {
                                                               if(_loc9_ && param1)
                                                               {
                                                                  continue loop17;
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(!§§pop());
                                                                  addr231:
                                                                  loop12:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop());
                                                                     loop15:
                                                                     while(true)
                                                                     {
                                                                        if(_loc9_)
                                                                        {
                                                                           continue loop13;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           if(!§§pop())
                                                                           {
                                                                              loop8:
                                                                              while(true)
                                                                              {
                                                                                 if(!_loc8_)
                                                                                 {
                                                                                    continue loop18;
                                                                                 }
                                                                                 §§pop();
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc9_ && _loc3_)
                                                                                    {
                                                                                       continue loop10;
                                                                                    }
                                                                                    §§push(_loc7_.§"!&§.mTryToBlink <= 0);
                                                                                    do
                                                                                    {
                                                                                       if(!_loc8_)
                                                                                       {
                                                                                          continue loop12;
                                                                                       }
                                                                                       §§push(§§pop());
                                                                                       if(!_loc8_)
                                                                                       {
                                                                                          continue loop15;
                                                                                       }
                                                                                    }
                                                                                    while(!§§pop());
                                                                                    
                                                                                    addr199:
                                                                                    §§pop();
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc7_.§"!&§.mTryToScream <= 0);
                                                                                       if(_loc9_ && param1)
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       if(!_loc9_)
                                                                                       {
                                                                                          if(!(_loc8_ || param1))
                                                                                          {
                                                                                             continue loop8;
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr193);
                                                                                       }
                                                                                    }
                                                                                    addr193:
                                                                                 }
                                                                              }
                                                                              addr235:
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 if(!(_loc9_ && this))
                                                                                 {
                                                                                    if(_loc9_ && this)
                                                                                    {
                                                                                       continue loop7;
                                                                                    }
                                                                                    if(_loc5_ >= _loc4_)
                                                                                    {
                                                                                       if(_loc8_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       loop16:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!(_loc9_ && this))
                                                                                          {
                                                                                             loop3:
                                                                                             while(true)
                                                                                             {
                                                                                                _loc5_++;
                                                                                                addr129:
                                                                                                addr133:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!_loc8_)
                                                                                                   {
                                                                                                      continue loop16;
                                                                                                   }
                                                                                                   if(_loc8_)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   §§goto(addr200);
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   addr121:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      _loc6_++;
                                                                                                      if(_loc8_)
                                                                                                      {
                                                                                                         if(true)
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         continue loop3;
                                                                                                      }
                                                                                                      §§goto(addr129);
                                                                                                   }
                                                                                                   continue loop0;
                                                                                                }
                                                                                             }
                                                                                             addr127:
                                                                                          }
                                                                                          §§goto(addr238);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr127);
                                                                                 }
                                                                                 break;
                                                                              }
                                                                              §§goto(addr121);
                                                                           }
                                                                           return _loc7_;
                                                                        }
                                                                     }
                                                                  }
                                                                  continue loop17;
                                                               }
                                                            }
                                                            §§goto(addr235);
                                                         }
                                                      }
                                                      §§goto(addr121);
                                                   }
                                                   addr208:
                                                }
                                                §§goto(addr231);
                                             }
                                          }
                                          addr252:
                                       }
                                       §§goto(addr208);
                                    }
                                 }
                                 addr250:
                              }
                              §§goto(addr133);
                           }
                           §§goto(addr252);
                        }
                        §§goto(addr250);
                     }
                     §§goto(addr234);
                  }
                  §§goto(addr230);
               }
               return null;
            }
            addr64:
            return null;
         }
         addr31:
         return null;
      }
      
      public function §@!F§() : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:* = 0;
         var _loc2_:* = int(this.§=",§.length - 1);
         loop0:
         while(true)
         {
            §§push(_loc2_);
            if(_loc3_)
            {
               if(!_loc4_)
               {
                  §§push(0);
                  if(_loc3_ || this)
                  {
                     if(§§pop() < §§pop())
                     {
                        if(!(_loc4_ && _loc2_))
                        {
                           if(_loc3_)
                           {
                              if(!_loc4_)
                              {
                                 §§push(_loc1_);
                                 if(_loc3_)
                                 {
                                    addr65:
                                    §§push(this.§@O§.slingshot.§@!F§());
                                    if(_loc3_ || this)
                                    {
                                       if(_loc3_ || _loc2_)
                                       {
                                          §§push(§§pop() + §§pop());
                                          if(!(_loc4_ && _loc2_))
                                          {
                                             §§push(int(§§pop()));
                                             loop13:
                                             while(!(_loc4_ && this))
                                             {
                                                if(_loc3_ || _loc3_)
                                                {
                                                   if(!_loc4_)
                                                   {
                                                      addr114:
                                                      _loc1_ = §§pop();
                                                      while(!(_loc4_ && _loc2_))
                                                      {
                                                         §§push(_loc1_);
                                                         if(_loc3_)
                                                         {
                                                            return §§pop();
                                                         }
                                                         continue loop13;
                                                         §§goto(addr114);
                                                      }
                                                      continue loop0;
                                                      addr115:
                                                   }
                                                   loop14:
                                                   while(true)
                                                   {
                                                      if(!(_loc4_ && _loc2_))
                                                      {
                                                         §§push(§9"3§.§0!Q§.getValue());
                                                         while(true)
                                                         {
                                                            §§push(§§pop() + §§pop() * int((this.§=",§[_loc2_] as §&!r§).§@!h§));
                                                            addr183:
                                                            while(true)
                                                            {
                                                               if(_loc3_)
                                                               {
                                                                  §§push(int(§§pop()));
                                                                  loop2:
                                                                  while(true)
                                                                  {
                                                                     _loc1_ = §§pop();
                                                                     addr187:
                                                                     while(true)
                                                                     {
                                                                     }
                                                                     addr125:
                                                                     while(true)
                                                                     {
                                                                        if(_loc3_ || _loc1_)
                                                                        {
                                                                           addr132:
                                                                           §§push(§§pop() - 1);
                                                                           break loop13;
                                                                        }
                                                                        continue loop2;
                                                                     }
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(int(§§pop()));
                                                                     addr201:
                                                                     while(true)
                                                                     {
                                                                        _loc1_ = §§pop();
                                                                        loop12:
                                                                        while(true)
                                                                        {
                                                                           if((this.§=",§[_loc2_] as §&!r§).§<! §())
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 if(!(_loc4_ && _loc1_))
                                                                                 {
                                                                                    §§push(_loc1_);
                                                                                    continue loop14;
                                                                                 }
                                                                                 continue loop12;
                                                                              }
                                                                              addr144:
                                                                           }
                                                                           §§goto(addr125);
                                                                        }
                                                                     }
                                                                  }
                                                                  addr200:
                                                               }
                                                               while(true)
                                                               {
                                                                  §§goto(addr125);
                                                               }
                                                               §§goto(addr132);
                                                            }
                                                         }
                                                         addr162:
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            §§push((this.§=",§[_loc2_] as §&!r§).§3!4§.score);
                                                            addr199:
                                                            while(true)
                                                            {
                                                            }
                                                         }
                                                         addr191:
                                                      }
                                                      §§goto(addr200);
                                                   }
                                                }
                                                §§goto(addr125);
                                             }
                                             _loc2_ = §§pop();
                                             addr98:
                                             continue;
                                             addr98:
                                          }
                                          §§goto(addr183);
                                       }
                                       §§goto(addr199);
                                    }
                                    §§goto(addr162);
                                 }
                                 §§goto(addr98);
                              }
                              §§goto(addr144);
                           }
                           §§goto(addr187);
                        }
                        §§goto(addr115);
                     }
                     else
                     {
                        §§push(_loc1_);
                     }
                     §§goto(addr191);
                  }
                  §§goto(addr65);
               }
               §§goto(addr201);
            }
            §§goto(addr98);
         }
      }
      
      public function §;T§(param1:§&!r§, param2:§&!r§) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §§push(param2 is §2"$§);
            if(!_loc3_)
            {
               §§push(§§pop());
               loop0:
               while(true)
               {
                  if(§§pop())
                  {
                     loop8:
                     while(true)
                     {
                        §§pop();
                        addr139:
                        loop9:
                        while(true)
                        {
                           §§push(param1 is §2"$§);
                           if(!_loc3_)
                           {
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    loop2:
                                    while(true)
                                    {
                                       §§push(param1.§,l§());
                                       if(!_loc3_)
                                       {
                                          if(!(_loc3_ && this))
                                          {
                                             §§push(!§§pop());
                                             loop3:
                                             while(true)
                                             {
                                                §§push(§§pop());
                                                if(_loc3_)
                                                {
                                                   break;
                                                }
                                                if(!§§pop())
                                                {
                                                   loop4:
                                                   while(true)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         if(_loc4_ || param2)
                                                         {
                                                            if(_loc3_)
                                                            {
                                                               if(!(_loc3_ && param2))
                                                               {
                                                                  continue loop2;
                                                               }
                                                               continue loop9;
                                                            }
                                                            §§push(true);
                                                         }
                                                         else
                                                         {
                                                            if(_loc4_)
                                                            {
                                                               addr20:
                                                               §§push(false);
                                                               if(_loc3_ && _loc3_)
                                                               {
                                                                  §§goto(addr78);
                                                               }
                                                               if(_loc3_ && param1)
                                                               {
                                                                  continue loop3;
                                                               }
                                                               if(_loc4_)
                                                               {
                                                                  if(!_loc3_)
                                                                  {
                                                                     return §§pop();
                                                                  }
                                                                  break;
                                                               }
                                                               addr109:
                                                               while(true)
                                                               {
                                                                  §§pop();
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               if(_loc3_)
                                                               {
                                                                  §§push(true);
                                                                  break loop4;
                                                               }
                                                               addr121:
                                                               §§push(param2.§,l§());
                                                               continue loop3;
                                                            }
                                                         }
                                                         §§goto(addr78);
                                                      }
                                                      §§goto(addr20);
                                                      addr53:
                                                      §§push(!§§pop());
                                                      if(_loc3_)
                                                      {
                                                         addr78:
                                                         return §§pop();
                                                      }
                                                   }
                                                   §§goto(addr122);
                                                }
                                             }
                                             continue loop0;
                                          }
                                          continue loop8;
                                       }
                                       §§goto(addr109);
                                    }
                                    continue loop9;
                                 }
                                 §§goto(addr121);
                              }
                              addr119:
                           }
                           addr122:
                           return §§pop();
                        }
                     }
                     addr138:
                  }
                  §§goto(addr119);
               }
            }
            §§goto(addr138);
         }
         §§goto(addr139);
      }
      
      public function §"s§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.mSardineCanAdded = true;
         }
         do
         {
            this.§&D§ = 0;
         }
         while(_loc2_);
         
      }
      
      public function §7!d§(param1:§&!r§, param2:§&!r§) : Boolean
      {
         var _loc20_:Boolean = false;
         var _loc21_:Boolean = true;
         var _loc18_:* = NaN;
         var _loc19_:* = NaN;
         if(_loc21_)
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
                              if(§§pop())
                              {
                                 loop4:
                                 while(true)
                                 {
                                    §§pop();
                                    loop5:
                                    while(true)
                                    {
                                       §§push(this.mMightyEagleTimer);
                                       if(!_loc21_)
                                       {
                                          break;
                                       }
                                       §§push(§§pop() == this.§4"F§.MIGHTY_EAGLE_WAIT_TIME);
                                       if(_loc21_ || param2)
                                       {
                                          if(_loc21_ || param2)
                                          {
                                             if(!(_loc20_ && _loc3_))
                                             {
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      loop31:
                                                      while(true)
                                                      {
                                                         if(_loc21_)
                                                         {
                                                            if(_loc21_)
                                                            {
                                                               §§push(param1.§[`§());
                                                               loop21:
                                                               while(_loc21_ || _loc3_)
                                                               {
                                                                  §§push(Boolean(§§pop()));
                                                                  loop22:
                                                                  while(true)
                                                                  {
                                                                     if(_loc21_)
                                                                     {
                                                                        §§push(§§pop());
                                                                        if(_loc21_)
                                                                        {
                                                                           if(!_loc20_)
                                                                           {
                                                                              if(!§§pop())
                                                                              {
                                                                                 addr192:
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop();
                                                                                    addr193:
                                                                                    while(_loc21_)
                                                                                    {
                                                                                       addr195:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(param2.§[`§());
                                                                                          continue loop1;
                                                                                          §§goto(addr195);
                                                                                       }
                                                                                    }
                                                                                    addr258:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(param2.§9"7§());
                                                                                       addr261:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(Boolean(§§pop()));
                                                                                          addr262:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop());
                                                                                             break loop22;
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 addr192:
                                                                              }
                                                                              loop23:
                                                                              while(§§pop())
                                                                              {
                                                                                 loop18:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!_loc20_)
                                                                                    {
                                                                                       if(!_loc20_)
                                                                                       {
                                                                                          if(!_loc20_)
                                                                                          {
                                                                                             addr116:
                                                                                             if(!(_loc20_ && param2))
                                                                                             {
                                                                                                this.mMightyEagleTimer = 0;
                                                                                                loop20:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!_loc20_)
                                                                                                   {
                                                                                                      if(_loc21_)
                                                                                                      {
                                                                                                         if(_loc21_ || param2)
                                                                                                         {
                                                                                                            break loop23;
                                                                                                         }
                                                                                                         addr233:
                                                                                                         if(!(_loc21_ || param2))
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(param2.§^6§());
                                                                                                               addr282:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(Boolean(§§pop()));
                                                                                                                  break loop20;
                                                                                                               }
                                                                                                            }
                                                                                                            addr307:
                                                                                                         }
                                                                                                         §§push(param1);
                                                                                                         §§push(param1.§@!h§);
                                                                                                         if(_loc21_ || _loc3_)
                                                                                                         {
                                                                                                            §§push(§§pop() * 2);
                                                                                                         }
                                                                                                         §§pop().applyDamage(§§pop(),true,true,true,false);
                                                                                                         break loop18;
                                                                                                      }
                                                                                                      continue loop5;
                                                                                                   }
                                                                                                   continue loop31;
                                                                                                }
                                                                                                loop28:
                                                                                                while(true)
                                                                                                {
                                                                                                   addr284:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         addr285:
                                                                                                         §§push(param2);
                                                                                                         §§push(param2.§@!h§);
                                                                                                         if(!_loc20_)
                                                                                                         {
                                                                                                            §§push(§§pop() * 2);
                                                                                                         }
                                                                                                         §§pop().applyDamage(§§pop(),true,true,true,false);
                                                                                                         return true;
                                                                                                         addr297:
                                                                                                      }
                                                                                                      §§goto(addr258);
                                                                                                      continue loop28;
                                                                                                   }
                                                                                                }
                                                                                                addr283:
                                                                                                addr126:
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(param1.§^6§());
                                                                                                break loop21;
                                                                                                §§goto(addr116);
                                                                                             }
                                                                                             addr274:
                                                                                          }
                                                                                          break;
                                                                                       }
                                                                                       addr196:
                                                                                       addr211:
                                                                                       while(true)
                                                                                       {
                                                                                          break loop23;
                                                                                          §§goto(addr211);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr193);
                                                                                 }
                                                                                 return true;
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.§;T§(param1,param2));
                                                                                 if(!_loc21_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 if(!(_loc20_ && param1))
                                                                                 {
                                                                                    if(_loc20_ && _loc3_)
                                                                                    {
                                                                                       continue loop1;
                                                                                    }
                                                                                    if(_loc21_ || param2)
                                                                                    {
                                                                                       continue loop2;
                                                                                    }
                                                                                    §§goto(addr192);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc20_ && _loc3_)
                                                                                       {
                                                                                          continue loop22;
                                                                                       }
                                                                                       if(_loc20_)
                                                                                       {
                                                                                          continue loop21;
                                                                                       }
                                                                                       §§goto(addr108);
                                                                                    }
                                                                                    addr99:
                                                                                 }
                                                                                 §§goto(addr193);
                                                                              }
                                                                              addr108:
                                                                              addr68:
                                                                              if(!_loc20_)
                                                                              {
                                                                                 return §§pop();
                                                                              }
                                                                              §§goto(addr210);
                                                                              addr24:
                                                                           }
                                                                           break;
                                                                        }
                                                                        continue loop3;
                                                                     }
                                                                     continue loop4;
                                                                  }
                                                                  while(!(_loc20_ && param1))
                                                                  {
                                                                     if(!§§pop())
                                                                     {
                                                                        while(_loc21_)
                                                                        {
                                                                           §§pop();
                                                                           §§goto(addr274);
                                                                        }
                                                                        continue loop0;
                                                                        addr271:
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        if(!§§pop())
                                                                        {
                                                                           §§goto(addr196);
                                                                        }
                                                                        §§goto(addr233);
                                                                     }
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     if(!§§pop())
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§pop();
                                                                           §§goto(addr307);
                                                                        }
                                                                        addr306:
                                                                     }
                                                                     §§goto(addr283);
                                                                  }
                                                               }
                                                               while(true)
                                                               {
                                                                  if(_loc21_)
                                                                  {
                                                                     if(_loc20_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     §§push(Boolean(§§pop()));
                                                                     while(true)
                                                                     {
                                                                        if(_loc21_)
                                                                        {
                                                                           if(!(_loc20_ && this))
                                                                           {
                                                                              if(_loc21_)
                                                                              {
                                                                                 §§goto(addr231);
                                                                              }
                                                                              §§goto(addr282);
                                                                           }
                                                                           §§goto(addr262);
                                                                        }
                                                                        §§goto(addr271);
                                                                     }
                                                                  }
                                                                  §§goto(addr261);
                                                                  §§goto(addr176);
                                                               }
                                                               addr176:
                                                            }
                                                            else
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(param1.§9"7§());
                                                                  addr303:
                                                                  while(true)
                                                                  {
                                                                     §§push(Boolean(§§pop()));
                                                                  }
                                                               }
                                                               addr301:
                                                            }
                                                            while(true)
                                                            {
                                                               §§goto(addr305);
                                                            }
                                                         }
                                                         §§goto(addr285);
                                                      }
                                                   }
                                                   §§goto(addr24);
                                                }
                                                addr168:
                                             }
                                             §§goto(addr284);
                                          }
                                          §§goto(addr220);
                                       }
                                       §§goto(addr192);
                                    }
                                    addr310:
                                    var _loc3_:* = §§pop();
                                    §§push(param1.§;"1§(param2.§0!'§()));
                                    if(_loc21_ || param1)
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                    var _loc4_:* = §§pop();
                                    §§push(param1.§5!S§(param2.§0!'§()));
                                    if(!(_loc20_ && _loc3_))
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                    var _loc5_:* = §§pop();
                                    §§push(param2.§;"1§(param1.§0!'§()));
                                    if(_loc21_ || param1)
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                    var _loc6_:* = §§pop();
                                    §§push(param2.§5!S§(param1.§0!'§()));
                                    if(_loc21_ || param1)
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                    var _loc7_:* = §§pop();
                                    §§push(param1.§=!y§().GetMass());
                                    if(!_loc20_)
                                    {
                                       §§push(param1.§=!y§());
                                       if(!_loc20_)
                                       {
                                          §§push(§§pop().GetLinearVelocity().x);
                                          if(!_loc20_)
                                          {
                                             addr398:
                                             §§push(§§pop() * §§pop());
                                             if(_loc21_ || param1)
                                             {
                                                addr386:
                                                §§push(param2.§=!y§().GetMass());
                                                if(!_loc20_)
                                                {
                                                   §§push(§§pop() * param2.§=!y§().GetLinearVelocity().x);
                                                }
                                             }
                                             var _loc8_:* = §§pop();
                                             §§push(param1.§=!y§().GetMass());
                                             if(!(_loc20_ && this))
                                             {
                                                §§push(param1.§=!y§());
                                                if(!(_loc20_ && this))
                                                {
                                                   §§push(§§pop().GetLinearVelocity().y);
                                                   if(_loc21_ || this)
                                                   {
                                                      addr448:
                                                      §§push(§§pop() * §§pop());
                                                      if(!_loc20_)
                                                      {
                                                         addr432:
                                                         §§push(param2.§=!y§().GetMass());
                                                         if(!(_loc20_ && this))
                                                         {
                                                            §§push(§§pop() * param2.§=!y§().GetLinearVelocity().y);
                                                         }
                                                      }
                                                      var _loc9_:Number = §§pop();
                                                      §§push(Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_) / _loc3_);
                                                      if(!_loc20_)
                                                      {
                                                         §§push(Number(§§pop()));
                                                      }
                                                      var _loc10_:* = §§pop();
                                                      §§push(_loc4_);
                                                      if(!_loc20_)
                                                      {
                                                         §§push(§§pop() * _loc10_);
                                                         if(_loc21_ || this)
                                                         {
                                                            addr477:
                                                            §§push(Number(§§pop()));
                                                         }
                                                         var _loc11_:* = §§pop();
                                                         §§push(_loc6_);
                                                         if(!_loc20_)
                                                         {
                                                            §§push(§§pop() * _loc10_);
                                                            if(_loc21_)
                                                            {
                                                               addr486:
                                                               §§push(Number(§§pop()));
                                                            }
                                                            var _loc12_:* = §§pop();
                                                            var _loc13_:Number = Math.max(0,param1.§[" §);
                                                            var _loc14_:Number = Math.max(0,param2.§[" §);
                                                            §§push(param1.applyDamage(_loc12_,true,param2.§ !c§(),_loc14_ == param2.§@!h§));
                                                            if(_loc21_ || _loc3_)
                                                            {
                                                               §§push(Number(§§pop()));
                                                            }
                                                            var _loc15_:* = §§pop();
                                                            §§push(param2.applyDamage(_loc11_,true,param1.§ !c§(),_loc13_ == param1.§@!h§));
                                                            if(!(_loc20_ && this))
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
                                                                  if(!(_loc20_ && param1))
                                                                  {
                                                                     §+!k§.log("--- NEW COLLISION ---");
                                                                     if(!(_loc20_ && param1))
                                                                     {
                                                                        §§push(§+!k§);
                                                                        §§push("Mat Dam Factor1 = ");
                                                                        if(!(_loc20_ && _loc3_))
                                                                        {
                                                                           §§push(_loc4_);
                                                                           if(!(_loc20_ && param1))
                                                                           {
                                                                              §§push(§§pop() + §§pop());
                                                                              if(_loc21_)
                                                                              {
                                                                                 §§push(" Mat Dam Factor2 = ");
                                                                                 if(!_loc20_)
                                                                                 {
                                                                                    §§push(§§pop() + §§pop());
                                                                                    if(!(_loc20_ && param1))
                                                                                    {
                                                                                       §§push(_loc6_);
                                                                                       if(_loc21_)
                                                                                       {
                                                                                          addr1232:
                                                                                          §§push(§§pop() + §§pop());
                                                                                          if(!_loc20_)
                                                                                          {
                                                                                             addr1235:
                                                                                             §§push(" Mat Vel Factor1 = ");
                                                                                             if(!(_loc20_ && _loc3_))
                                                                                             {
                                                                                                §§push(§§pop() + §§pop());
                                                                                                if(!_loc20_)
                                                                                                {
                                                                                                   §§push(_loc5_);
                                                                                                   if(!_loc20_)
                                                                                                   {
                                                                                                      addr1259:
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                      if(_loc21_ || _loc3_)
                                                                                                      {
                                                                                                         addr1278:
                                                                                                         addr1268:
                                                                                                         addr1267:
                                                                                                         §§push(§§pop() + " Mat Vel Factor2 = ");
                                                                                                         if(!(_loc20_ && this))
                                                                                                         {
                                                                                                            addr1276:
                                                                                                            §§push(_loc7_);
                                                                                                         }
                                                                                                         §§pop().log(§§pop());
                                                                                                         addr1279:
                                                                                                         §§push(§+!k§);
                                                                                                         §§push("Object1: ");
                                                                                                         if(_loc21_)
                                                                                                         {
                                                                                                            §§push(§§pop() + param1.§2!>§);
                                                                                                            if(_loc21_ || this)
                                                                                                            {
                                                                                                               §§push(" force1 = ");
                                                                                                               if(_loc21_)
                                                                                                               {
                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                  if(!(_loc20_ && _loc3_))
                                                                                                                  {
                                                                                                                     §§push(_loc11_);
                                                                                                                     if(!_loc20_)
                                                                                                                     {
                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                        if(_loc21_)
                                                                                                                        {
                                                                                                                           addr1173:
                                                                                                                           §§push(" obj health1 = ");
                                                                                                                           if(_loc21_)
                                                                                                                           {
                                                                                                                              addr1176:
                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                              if(!_loc20_)
                                                                                                                              {
                                                                                                                                 §§push(_loc13_);
                                                                                                                                 if(_loc21_)
                                                                                                                                 {
                                                                                                                                    addr1182:
                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                    if(_loc21_)
                                                                                                                                    {
                                                                                                                                       addr1186:
                                                                                                                                       §§push(§§pop() + " new health1 = ");
                                                                                                                                       if(!(_loc20_ && this))
                                                                                                                                       {
                                                                                                                                          addr1195:
                                                                                                                                          §§push(§§pop() + _loc15_);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§pop().log(§§pop());
                                                                                                                                    addr1197:
                                                                                                                                    §§push(§+!k§);
                                                                                                                                    §§push("Object2: ");
                                                                                                                                    if(!_loc20_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() + param2.§2!>§);
                                                                                                                                       if(_loc21_)
                                                                                                                                       {
                                                                                                                                          addr1089:
                                                                                                                                          §§push(" force2 = ");
                                                                                                                                          if(!_loc20_)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                             if(_loc21_ || _loc3_)
                                                                                                                                             {
                                                                                                                                                addr1100:
                                                                                                                                                §§push(_loc12_);
                                                                                                                                                if(!_loc20_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                   if(_loc21_ || this)
                                                                                                                                                   {
                                                                                                                                                      §§push(" obj health2 = ");
                                                                                                                                                      if(_loc21_ || param1)
                                                                                                                                                      {
                                                                                                                                                         addr1119:
                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                         if(_loc21_)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc14_);
                                                                                                                                                            if(!(_loc20_ && param2))
                                                                                                                                                            {
                                                                                                                                                               addr1138:
                                                                                                                                                               addr1137:
                                                                                                                                                               addr1139:
                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                               if(_loc21_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(" new health2 = ");
                                                                                                                                                               }
                                                                                                                                                               §§pop().log(§§pop() + _loc16_);
                                                                                                                                                               addr1072:
                                                                                                                                                               addr1140:
                                                                                                                                                               §§push(_loc15_ <= 0);
                                                                                                                                                               if(_loc21_)
                                                                                                                                                               {
                                                                                                                                                                  addr1076:
                                                                                                                                                                  if(§§pop())
                                                                                                                                                                  {
                                                                                                                                                                     addr1077:
                                                                                                                                                                     §§pop();
                                                                                                                                                                     addr1078:
                                                                                                                                                                     §§push(_loc12_);
                                                                                                                                                                     if(!(_loc20_ && param1))
                                                                                                                                                                     {
                                                                                                                                                                        addr1016:
                                                                                                                                                                        if(§§pop() != 0)
                                                                                                                                                                        {
                                                                                                                                                                           addr1017:
                                                                                                                                                                           §§push(_loc12_);
                                                                                                                                                                           if(_loc21_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc13_);
                                                                                                                                                                              if(_loc21_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() - §§pop());
                                                                                                                                                                                 if(!_loc20_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc21_ || this)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr1053:
                                                                                                                                                                                       §§push(Number(§§pop() / _loc12_));
                                                                                                                                                                                       if(!(_loc20_ && _loc3_))
                                                                                                                                                                                       {
                                                                                                                                                                                          addr1044:
                                                                                                                                                                                          §§push(_loc18_ = §§pop());
                                                                                                                                                                                          if(!_loc20_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr1048:
                                                                                                                                                                                             §§push(§§pop() * _loc7_);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       if((_loc18_ = Number(§§pop())) > 1)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr1054:
                                                                                                                                                                                          if(_loc21_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!(_loc20_ && _loc3_))
                                                                                                                                                                                             {
                                                                                                                                                                                                addr1065:
                                                                                                                                                                                                _loc18_ = Number(1);
                                                                                                                                                                                                addr1064:
                                                                                                                                                                                                if(_loc21_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr970:
                                                                                                                                                                                                   if(_loc17_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr971:
                                                                                                                                                                                                      §§push(§+!k§);
                                                                                                                                                                                                      §§push(param1.§2!>§ + " is killed. Speed Multiplier for ");
                                                                                                                                                                                                      if(!(_loc20_ && this))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop() + param2.§2!>§);
                                                                                                                                                                                                         if(_loc21_ || _loc3_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr993:
                                                                                                                                                                                                            §§push(§§pop() + " is ");
                                                                                                                                                                                                            if(_loc21_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr997:
                                                                                                                                                                                                               §§push(§§pop() + _loc18_);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§pop().log(§§pop());
                                                                                                                                                                                                            addr1000:
                                                                                                                                                                                                            if(!_loc20_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr932:
                                                                                                                                                                                                               §§push(param2);
                                                                                                                                                                                                               §§push(§§findproperty(b2Vec2));
                                                                                                                                                                                                               §§push(param2.§=!y§().GetLinearVelocity().x);
                                                                                                                                                                                                               if(!_loc20_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(_loc18_);
                                                                                                                                                                                                                  if(!(_loc20_ && _loc3_))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr950:
                                                                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                                                                     §§push(param2.§=!y§().GetLinearVelocity().y);
                                                                                                                                                                                                                     if(_loc21_ || this)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr961:
                                                                                                                                                                                                                        §§push(§§pop() * _loc18_);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§pop().§#!k§(new §§pop().b2Vec2(§§pop(),§§pop()));
                                                                                                                                                                                                                     addr965:
                                                                                                                                                                                                                     if(_loc21_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr913:
                                                                                                                                                                                                                        §§push(_loc16_);
                                                                                                                                                                                                                        if(!_loc20_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr917:
                                                                                                                                                                                                                           §§push(§§pop() <= 0);
                                                                                                                                                                                                                           §§push(§§pop() <= 0);
                                                                                                                                                                                                                           if(!_loc20_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(§§pop())
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr921:
                                                                                                                                                                                                                                 §§pop();
                                                                                                                                                                                                                                 if(!(_loc20_ && param2))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(_loc21_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr783:
                                                                                                                                                                                                                                       §§push(_loc11_);
                                                                                                                                                                                                                                       §§push(0);
                                                                                                                                                                                                                                       if(!(_loc20_ && param1))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr794:
                                                                                                                                                                                                                                          §§push(§§pop() == §§pop());
                                                                                                                                                                                                                                          if(!_loc20_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(!§§pop());
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          if(!_loc20_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             addr796:
                                                                                                                                                                                                                                             if(§§pop())
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr798:
                                                                                                                                                                                                                                                if(!_loc20_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(_loc11_);
                                                                                                                                                                                                                                                   if(_loc21_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(_loc14_);
                                                                                                                                                                                                                                                      if(_loc21_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(!_loc20_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                            if(_loc21_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(_loc11_);
                                                                                                                                                                                                                                                               if(_loc21_ || param1)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(!_loc20_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(_loc21_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(!_loc20_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                                                           if(!(_loc20_ && this))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(_loc21_ || param1)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                 if(_loc21_ || param1)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    addr848:
                                                                                                                                                                                                                                                                                    if(!(_loc20_ && param1))
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(_loc21_ || _loc3_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(§§pop());
                                                                                                                                                                                                                                                                                          if(!(_loc20_ && param2))
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             addr870:
                                                                                                                                                                                                                                                                                             _loc19_ = §§pop();
                                                                                                                                                                                                                                                                                             addr871:
                                                                                                                                                                                                                                                                                             §§push(_loc5_);
                                                                                                                                                                                                                                                                                             if(_loc21_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                addr874:
                                                                                                                                                                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                if(_loc21_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   addr877:
                                                                                                                                                                                                                                                                                                   if(!_loc20_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                      if(!(_loc20_ && _loc3_))
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         addr890:
                                                                                                                                                                                                                                                                                                         §§push(_loc19_ = §§pop());
                                                                                                                                                                                                                                                                                                         §§push(1);
                                                                                                                                                                                                                                                                                                         if(!(_loc20_ && this))
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            if(§§pop() > §§pop())
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               addr898:
                                                                                                                                                                                                                                                                                                               if(!_loc20_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§push(1);
                                                                                                                                                                                                                                                                                                                  if(_loc21_ || _loc3_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     addr909:
                                                                                                                                                                                                                                                                                                                     _loc19_ = Number(§§pop());
                                                                                                                                                                                                                                                                                                                     addr910:
                                                                                                                                                                                                                                                                                                                     §§push(_loc17_);
                                                                                                                                                                                                                                                                                                                     if(_loc21_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        addr731:
                                                                                                                                                                                                                                                                                                                        if(§§pop())
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           if(!_loc20_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              if(_loc21_)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 addr736:
                                                                                                                                                                                                                                                                                                                                 §§push(§+!k§);
                                                                                                                                                                                                                                                                                                                                 §§push(param2.§2!>§ + " is killed. Speed Multiplier for ");
                                                                                                                                                                                                                                                                                                                                 if(_loc21_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    §§push(§§pop() + param1.§2!>§);
                                                                                                                                                                                                                                                                                                                                    if(_loc21_ || param2)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       addr758:
                                                                                                                                                                                                                                                                                                                                       §§push(§§pop() + " is ");
                                                                                                                                                                                                                                                                                                                                       if(!(_loc20_ && this))
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          addr767:
                                                                                                                                                                                                                                                                                                                                          §§push(§§pop() + _loc19_);
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       §§pop().log(§§pop());
                                                                                                                                                                                                                                                                                                                                       addr770:
                                                                                                                                                                                                                                                                                                                                       if(_loc21_)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          if(!(_loc20_ && this))
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             addr686:
                                                                                                                                                                                                                                                                                                                                             §§push(param1);
                                                                                                                                                                                                                                                                                                                                             §§push(§§findproperty(b2Vec2));
                                                                                                                                                                                                                                                                                                                                             §§push(param1.§=!y§().GetLinearVelocity().x);
                                                                                                                                                                                                                                                                                                                                             if(_loc21_)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                §§push(_loc19_);
                                                                                                                                                                                                                                                                                                                                                if(!(_loc20_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   addr704:
                                                                                                                                                                                                                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                   §§push(param1.§=!y§().GetLinearVelocity().y);
                                                                                                                                                                                                                                                                                                                                                   if(_loc21_ || param2)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      §§push(§§pop() * _loc19_);
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                §§pop().§#!k§(new §§pop().b2Vec2(§§pop(),§§pop()));
                                                                                                                                                                                                                                                                                                                                                addr719:
                                                                                                                                                                                                                                                                                                                                                if(_loc21_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   addr613:
                                                                                                                                                                                                                                                                                                                                                   §§push(_loc15_);
                                                                                                                                                                                                                                                                                                                                                   if(!(_loc20_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      addr621:
                                                                                                                                                                                                                                                                                                                                                      §§push(0);
                                                                                                                                                                                                                                                                                                                                                      if(_loc21_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         §§push(§§pop() <= §§pop());
                                                                                                                                                                                                                                                                                                                                                         if(!_loc20_)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            §§push(§§pop());
                                                                                                                                                                                                                                                                                                                                                            if(_loc21_)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               if(§§pop())
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  addr645:
                                                                                                                                                                                                                                                                                                                                                                  if(!(_loc20_ && this))
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     if(_loc21_)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        if(_loc21_ || param1)
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           if(!(_loc20_ && this))
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              §§pop();
                                                                                                                                                                                                                                                                                                                                                                              if(!(_loc20_ && param1))
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 if(!(_loc20_ && param1))
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    if(_loc21_)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       §§push(_loc16_);
                                                                                                                                                                                                                                                                                                                                                                                       if(_loc21_)
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          if(_loc21_)
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             if(!(_loc20_ && this))
                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                if(_loc21_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                   if(!_loc20_)
                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                      §§push(0);
                                                                                                                                                                                                                                                                                                                                                                                                      if(!_loc20_)
                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                         if(_loc21_)
                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                            if(!_loc20_)
                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                               if(!_loc20_)
                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                  §§push(§§pop() <= §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                  if(!_loc20_)
                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                     if(!(_loc20_ && param2))
                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                        if(_loc20_)
                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr1016);
                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr607);
                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr794);
                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr645);
                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                               §§goto(addr1072);
                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                            §§goto(addr1053);
                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                         §§goto(addr890);
                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                      §§goto(addr621);
                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                   §§goto(addr1053);
                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                §§goto(addr871);
                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr890);
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr909);
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr613);
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr1197);
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr898);
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr719);
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr1077);
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr917);
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr921);
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr909);
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               addr607:
                                                                                                                                                                                                                                                                                                                                                               return §§pop();
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            §§goto(addr917);
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         §§goto(addr645);
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   §§goto(addr783);
                                                                                                                                                                                                                                                                                                                                                   addr726:
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                §§goto(addr770);
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             §§goto(addr704);
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          §§goto(addr965);
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       §§goto(addr910);
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    §§goto(addr767);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§goto(addr758);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§goto(addr798);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§goto(addr758);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§goto(addr686);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr1016);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr1064);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr921);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr909);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr1016);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr890);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr913);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr890);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr890);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr1053);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr1065);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr871);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr1053);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr848);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr1053);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr1044);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr1053);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr874);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr877);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr1048);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr870);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr877);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr971);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr613);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr970);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr917);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1017);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1000);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr796);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr1076);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1053);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1054);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr961);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr950);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1065);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr997);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr993);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr932);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1140);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1279);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1078);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr970);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1072);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1053);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr913);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1065);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1016);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1077);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1138);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1137);
                                                                                                                                                      }
                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                      if(!_loc20_)
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr1138);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1139);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr1138);
                                                                                                                                          }
                                                                                                                                          §§goto(addr1119);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1100);
                                                                                                                                    }
                                                                                                                                    §§goto(addr1089);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr1195);
                                                                                                                           }
                                                                                                                           §§goto(addr1186);
                                                                                                                        }
                                                                                                                        §§goto(addr1195);
                                                                                                                     }
                                                                                                                     §§goto(addr1182);
                                                                                                                  }
                                                                                                                  §§goto(addr1195);
                                                                                                               }
                                                                                                               §§goto(addr1176);
                                                                                                            }
                                                                                                            §§goto(addr1173);
                                                                                                         }
                                                                                                         §§goto(addr1195);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr1278);
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                }
                                                                                                §§goto(addr1276);
                                                                                             }
                                                                                             §§goto(addr1268);
                                                                                          }
                                                                                          §§goto(addr1267);
                                                                                       }
                                                                                       §§goto(addr1259);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr1278);
                                                                              }
                                                                              §§goto(addr1235);
                                                                           }
                                                                           §§goto(addr1232);
                                                                        }
                                                                        §§goto(addr1278);
                                                                     }
                                                                     §§goto(addr736);
                                                                  }
                                                                  §§goto(addr726);
                                                               }
                                                               §§goto(addr1138);
                                                            }
                                                            §§goto(addr731);
                                                         }
                                                         §§goto(addr486);
                                                      }
                                                      §§goto(addr477);
                                                   }
                                                   §§push(§§pop() - §§pop());
                                                   if(!_loc21_)
                                                   {
                                                   }
                                                   §§goto(addr448);
                                                }
                                                §§goto(addr432);
                                             }
                                             §§goto(addr448);
                                          }
                                          §§push(§§pop() - §§pop());
                                          if(!_loc20_)
                                          {
                                             §§goto(addr398);
                                             §§push(Number(§§pop()));
                                          }
                                          §§goto(addr398);
                                       }
                                       §§goto(addr386);
                                    }
                                    §§goto(addr398);
                                 }
                              }
                              §§goto(addr168);
                           }
                        }
                     }
                     §§goto(addr303);
                  }
               }
               §§goto(addr301);
            }
         }
         §§goto(addr257);
      }
      
      public function §>"B§(param1:§&!r§, param2:§&!r§) : void
      {
      }
      
      public function §<<§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§&!r§ = null;
         var _loc1_:* = int(this.§=",§.length - 1);
         loop0:
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§=",§[_loc1_] as §&!r§;
            if(!_loc4_)
            {
               §§push(_loc2_ == null);
               if(!(_loc4_ && _loc2_))
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
                        addr115:
                        while(true)
                        {
                           addr63:
                           while(true)
                           {
                              §§push(_loc2_.§^6§());
                              if(_loc3_)
                              {
                                 if(_loc4_)
                                 {
                                    break;
                                 }
                                 §§push(Boolean(§§pop()));
                              }
                              if(!(_loc3_ || _loc1_))
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
                        if(_loc3_)
                        {
                           this.§^U§(_loc1_,true,true,true);
                        }
                        loop6:
                        while(!_loc4_)
                        {
                           while(true)
                           {
                              continue loop6;
                           }
                        }
                        §§goto(addr115);
                        addr98:
                     }
                     while(true)
                     {
                        §§push(_loc1_);
                        if(!_loc4_)
                        {
                           §§push(§§pop() - 1);
                        }
                        _loc1_ = §§pop();
                        if(_loc3_ || _loc2_)
                        {
                           if(true)
                           {
                              break loop5;
                           }
                           §§goto(addr63);
                        }
                        else
                        {
                           §§goto(addr98);
                        }
                     }
                  }
                  continue loop0;
               }
            }
            §§goto(addr100);
         }
      }
      
      public function §3!V§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§&!r§ = null;
         var _loc1_:* = int(this.§=",§.length - 1);
         loop0:
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§=",§[_loc1_] as §&!r§;
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
                           addr126:
                           while(true)
                           {
                              addr69:
                              while(true)
                              {
                                 §§push(_loc2_.§5!P§());
                                 if(_loc4_ || _loc2_)
                                 {
                                    §§push(Boolean(§§pop()));
                                 }
                                 if(!(_loc4_ || _loc2_))
                                 {
                                    break;
                                 }
                                 if(_loc3_ && _loc3_)
                                 {
                                    continue loop2;
                                 }
                                 if(!_loc4_)
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
                              this.§^U§(_loc1_,true,true,true);
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
                           if(_loc4_ || _loc3_)
                           {
                              §§push(§§pop() - 1);
                           }
                           _loc1_ = §§pop();
                           if(!(_loc3_ && _loc3_))
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
      
      public function §'1§() : int
      {
         return this.§=",§.length;
      }
      
      public function §>"<§(param1:§1"B§) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc4_:§&!r§ = null;
         var _loc5_:§3"6§ = null;
         var _loc6_:§?!V§ = null;
         var _loc7_:§3";§ = null;
         var _loc2_:* = Number(0);
         loop0:
         while(true)
         {
            §§push(_loc2_);
            if(_loc8_)
            {
               if(§§pop() >= this.§=",§.length)
               {
                  §§push(Number(0));
                  break;
               }
               if((_loc4_ = this.§=",§[_loc2_]).isGround())
               {
                  if(_loc9_)
                  {
                     continue;
                  }
               }
               else
               {
                  (_loc5_ = new §3"6§()).angle = _loc4_.§,!G§();
                  if(_loc8_)
                  {
                     _loc5_.id = _loc4_.§2!>§;
                     while(true)
                     {
                        _loc5_.x = _loc4_.§=!y§().GetPosition().x;
                        while(!(_loc9_ && _loc3_))
                        {
                           _loc5_.y = _loc4_.§=!y§().GetPosition().y;
                           loop3:
                           for(; !_loc9_; loop5:
                           while(!(_loc9_ && _loc2_))
                           {
                              while(true)
                              {
                                 param1.addObject(_loc5_);
                                 if(_loc9_ && _loc3_)
                                 {
                                    continue loop5;
                                 }
                                 if(true)
                                 {
                                    break;
                                 }
                                 §§goto(addr69);
                              }
                              §§push(_loc2_);
                              if(_loc8_)
                              {
                                 §§push(§§pop() + 1);
                                 if(_loc8_)
                                 {
                                    §§push(Number(§§pop()));
                                 }
                              }
                              _loc2_ = §§pop();
                              continue loop0;
                           })
                           {
                              while(true)
                              {
                                 _loc5_.uniqueID = _loc4_.uniqueID;
                                 continue loop3;
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr81);
               }
               §§goto(addr122);
            }
            break;
         }
         var _loc3_:* = §§pop();
         if(!(_loc9_ && _loc2_))
         {
            while(_loc3_ < this.§6'§.length)
            {
               _loc7_ = this.§6'§[_loc3_];
               _loc6_ = new §?!V§(_loc7_.type,_loc7_.index1,_loc7_.index2,_loc7_.point1,_loc7_.point2,_loc7_.§;i§,_loc7_.§2!&§,_loc7_.lowerLimit,_loc7_.upperLimit,_loc7_.§!!F§,_loc7_.motorSpeed,_loc7_.§3U§,_loc7_.maxTorque);
               if(_loc8_)
               {
                  param1.§#v§(_loc6_);
                  if(!(_loc9_ && param1))
                  {
                     §§push(_loc3_);
                     if(_loc8_ || this)
                     {
                        §§push(§§pop() + 1);
                        if(_loc8_)
                        {
                           §§push(Number(§§pop()));
                        }
                     }
                     _loc3_ = §§pop();
                  }
               }
            }
         }
      }
      
      public function §,!<§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:int = 0;
         while(true)
         {
            if(this.§=",§.length <= _loc1_)
            {
               if(!_loc2_)
               {
                  if(!(_loc2_ && this))
                  {
                     if(_loc3_ || this)
                     {
                        break;
                     }
                     addr83:
                     _loc1_++;
                  }
               }
               else
               {
                  addr74:
               }
               continue;
            }
            if(!this.§=",§[_loc1_].isGround())
            {
               this.§-!,§(this.§=",§[_loc1_]);
               §§goto(addr74);
            }
            §§goto(addr83);
         }
      }
      
      public function static(param1:Point, param2:Point) : Array
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:Array = new Array();
         var _loc4_:* = Number(0);
         while(true)
         {
            §§push(_loc4_);
            if(!_loc5_)
            {
               if(§§pop() >= this.§=",§.length)
               {
                  if(_loc6_ || this)
                  {
                     break;
                  }
                  while(true)
                  {
                     if(!(_loc5_ && _loc3_))
                     {
                        addr75:
                        if(_loc6_ || _loc3_)
                        {
                           break;
                        }
                        addr109:
                        while(true)
                        {
                           _loc3_.push(this.§=",§[_loc4_]);
                           §§goto(addr75);
                        }
                     }
                     while(true)
                     {
                     }
                  }
                  continue;
                  addr68:
               }
               else if(this.§=",§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
               {
                  §§goto(addr109);
               }
               while(true)
               {
                  §§push(_loc4_);
                  if(_loc6_ || param2)
                  {
                     §§push(§§pop() + 1);
                     if(_loc5_)
                     {
                     }
                     while(true)
                     {
                        _loc4_ = §§pop();
                        §§goto(addr68);
                     }
                     addr67:
                  }
               }
            }
            §§goto(addr67);
         }
         return _loc3_;
      }
      
      public function setGroundTextureEnabled(param1:Boolean) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§3!e§ = param1;
            if(_loc3_ || _loc3_)
            {
               this.§ !C§(param1);
            }
         }
         var _loc2_:* = Number(0);
         while(true)
         {
            §§push(_loc2_);
            if(_loc3_ || _loc2_)
            {
               if(_loc3_)
               {
                  if(§§pop() >= this.§=",§.length)
                  {
                     if(!(_loc4_ && param1))
                     {
                        break;
                     }
                     while(_loc4_)
                     {
                        while(true)
                        {
                        }
                     }
                     continue;
                     addr92:
                  }
                  else if(this.§=",§[_loc2_].isTexture())
                  {
                     if(_loc3_ || _loc3_)
                     {
                        this.§=",§[_loc2_].sprite.visible = !this.§3!e§;
                     }
                     §§goto(addr119);
                  }
                  while(true)
                  {
                     §§push(_loc2_);
                  }
               }
               while(true)
               {
                  §§push(§§pop() + 1);
                  if(_loc3_ || _loc2_)
                  {
                     §§push(Number(§§pop()));
                  }
               }
            }
            while(true)
            {
               _loc2_ = §§pop();
               §§goto(addr92);
            }
         }
      }
      
      public function setDamageEnabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§^R§ = param1;
         }
      }
      
      public function §0!?§() : Boolean
      {
         return this.§^R§;
      }
      
      public function §!V§() : int
      {
         return this.§ !U§;
      }
      
      public function §=!8§() : int
      {
         return this.get;
      }
      
      public function §%"%§(param1:String) : §&!r§
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§&!r§ = null;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= this.§=",§.length)
            {
               return null;
            }
            _loc3_ = this.§=",§[_loc2_] as §&!r§;
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
