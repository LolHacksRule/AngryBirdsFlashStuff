package §,h§
{
   import § !G§.§ #§;
   import § `§.§6!=§;
   import §!X§.§ 6§;
   import §!X§.§!j§;
   import §!X§.§7@§;
   import §!X§.§86§;
   import §%J§.§"!%§;
   import §%J§.§8C§;
   import §%J§.§8U§;
   import §%J§.§`u§;
   import §+3§.§ 7§;
   import §0! §.§7o§;
   import §0! §.§<2§;
   import §0!G§.b2Vec2;
   import §[!8§.b2PrismaticJoint;
   import §[!8§.b2WeldJoint;
   import §]!B§.Texture;
   import §]!F§.§&!]§;
   import §]@§.Sprite;
   import §]@§.§`!C§;
   import §`!K§.§!!>§;
   import §default§.§!A§;
   import §default§.§%<§;
   import §default§.§-g§;
   import §default§.§-r§;
   import §default§.§<A§;
   import flash.display.BitmapData;
   import flash.display.BitmapDataChannel;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §6M§
   {
       
      
      protected var §=U§:Vector.<§+0§>;
      
      protected var §;!W§:int;
      
      public var §>`§:§86§;
      
      public var §=! §:Vector.<§1!T§>;
      
      protected var §9!S§:Sprite;
      
      protected var §<!X§:Sprite;
      
      private var §3,§:Sprite;
      
      private var §[e§:Sprite;
      
      private var §8&§:Sprite;
      
      protected var §>!>§:Vector.<Texture>;
      
      protected var §[%§:Vector.<§8U§>;
      
      protected var §"p§:int = 1;
      
      public var mMightyEagleAdded:Boolean = false;
      
      public var mMightyEagleHasTouchedGround:Boolean = false;
      
      public var §2@§:Boolean = false;
      
      public var mSardineCanAdded:Boolean = false;
      
      public var mMightyEagleTimer:Number = 0;
      
      protected var §`!8§:Boolean = false;
      
      protected var §!q§:Number = 0.07;
      
      protected var §7!1§:int;
      
      protected var §'!-§:Vector.<§"!%§>;
      
      protected var §-`§:int = 0;
      
      private var §%!A§:int = 0;
      
      private var §&! §:int = 0;
      
      private var §[h§:int;
      
      private var §2Z§:Boolean = true;
      
      private var §4! §:Boolean = true;
      
      public function §6M§(param1:§86§, param2:§&!]§, param3:Sprite)
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         var _loc5_:§8U§ = null;
         var _loc6_:§`u§ = null;
         var _loc7_:§+0§ = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:§+0§ = null;
         var _loc11_:§+0§ = null;
         if(_loc14_)
         {
            this.§=U§ = new Vector.<§+0§>();
            loop0:
            while(true)
            {
               this.§=! § = new Vector.<§1!T§>();
               loop1:
               while(true)
               {
                  this.§>!>§ = new Vector.<Texture>();
                  loop2:
                  while(true)
                  {
                     this.§'!-§ = new Vector.<§"!%§>();
                     while(true)
                     {
                        super();
                        while(true)
                        {
                           this.§>`§ = param1;
                           loop5:
                           while(true)
                           {
                              this.§;!W§ = 0;
                              loop6:
                              while(true)
                              {
                                 this.§<!X§ = param3;
                                 while(_loc14_)
                                 {
                                    while(_loc14_ || param3)
                                    {
                                       if(_loc14_)
                                       {
                                          this.§2Z§ = true;
                                          continue loop1;
                                       }
                                       continue loop6;
                                       loop14:
                                       while(!(_loc15_ && param1))
                                       {
                                          this.§[e§ = new Sprite();
                                          loop15:
                                          while(!(_loc15_ && param2))
                                          {
                                             this.§8&§ = new Sprite();
                                             loop16:
                                             while(_loc14_)
                                             {
                                                §§push(this.§<!X§);
                                                loop17:
                                                for(; !(_loc15_ && param1); if(!(_loc15_ && param3))
                                                {
                                                   §§pop().addChild(this.§8&§);
                                                   loop23:
                                                   while(true)
                                                   {
                                                      if(_loc14_)
                                                      {
                                                         if(!_loc14_)
                                                         {
                                                            break;
                                                            addr61:
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(this);
                                                            §§push(§ 7§.§[!>§(param2.theme).§&u§);
                                                            §§push(this.§>`§.§%-§.§3!9§);
                                                            if(_loc14_ || param3)
                                                            {
                                                               §§push(this.§>`§);
                                                               if(!_loc15_)
                                                               {
                                                                  §§push(§§pop().§%-§);
                                                                  if(!(_loc15_ && this))
                                                                  {
                                                                     §§push(§§pop().§3!J§);
                                                                     if(!(_loc15_ && param3))
                                                                     {
                                                                        addr112:
                                                                        §§push(§§pop() + §§pop());
                                                                        if(!(_loc15_ && this))
                                                                        {
                                                                           addr107:
                                                                           §§push(§§pop() / 2);
                                                                        }
                                                                        §§push(this.§>`§.§%-§.§[w§);
                                                                        if(!(_loc15_ && this))
                                                                        {
                                                                           §§push(§§pop() + § 6§.§ +§);
                                                                        }
                                                                     }
                                                                     §§pop().addObject(§§pop(),§§pop(),§§pop());
                                                                     continue loop23;
                                                                  }
                                                               }
                                                               §§goto(addr112);
                                                            }
                                                            §§goto(addr107);
                                                         }
                                                         continue loop2;
                                                      }
                                                      §§goto(addr174);
                                                   }
                                                   continue loop1;
                                                })
                                                {
                                                   §§pop().addChild(this.§9!S§);
                                                   while(_loc14_)
                                                   {
                                                      §§push(this.§<!X§);
                                                      loop19:
                                                      while(true)
                                                      {
                                                         §§pop().addChild(this.§3,§);
                                                         addr181:
                                                         while(!_loc15_)
                                                         {
                                                            §§push(this.§<!X§);
                                                            loop21:
                                                            while(_loc14_)
                                                            {
                                                               §§pop().addChild(this.§[e§);
                                                               while(true)
                                                               {
                                                                  §§push(this.§<!X§);
                                                                  if(_loc14_)
                                                                  {
                                                                     continue loop17;
                                                                  }
                                                                  continue loop21;
                                                               }
                                                               continue loop17;
                                                            }
                                                            continue loop19;
                                                         }
                                                         continue loop16;
                                                      }
                                                   }
                                                   continue loop15;
                                                }
                                                while(true)
                                                {
                                                   §§pop().§^f§ = false;
                                                   break loop15;
                                                   §§goto(addr187);
                                                }
                                                addr187:
                                             }
                                             continue loop14;
                                          }
                                          while(true)
                                          {
                                             this.§4! § = true;
                                             break loop14;
                                          }
                                       }
                                    }
                                 }
                                 continue loop5;
                              }
                           }
                        }
                        if(_loc14_ || param3)
                        {
                           continue loop0;
                        }
                     }
                     addr239:
                     while(_loc14_ || param3)
                     {
                        this.§3,§ = new Sprite();
                        §§goto(addr226);
                     }
                  }
               }
            }
         }
         while(true)
         {
            §§goto(addr276);
         }
      }
      
      public function get §%!1§() : Sprite
      {
         return this.§8&§;
      }
      
      public function get §;!C§() : Sprite
      {
         return this.§<!X§;
      }
      
      public function dispose() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:Texture = null;
         loop0:
         while(true)
         {
            if(this.§=U§.length > 0)
            {
               this.removeObjectWithIndex(0);
               continue;
            }
            while(true)
            {
               this.§=U§ = null;
               if(!_loc3_)
               {
                  this.§'!-§ = null;
                  loop2:
                  while(_loc2_)
                  {
                     §§push(this.§<!X§);
                     if(_loc2_)
                     {
                        if(§§pop())
                        {
                           loop3:
                           while(true)
                           {
                              §§push(this.§<!X§);
                              addr102:
                              loop4:
                              while(true)
                              {
                                 §§pop().dispose();
                                 loop5:
                                 while(true)
                                 {
                                    this.§<!X§ = null;
                                    while(!(_loc3_ && _loc2_))
                                    {
                                       this.§9!S§ = null;
                                       loop7:
                                       for(; !(_loc3_ && _loc3_); if(!(_loc2_ || _loc2_))
                                       {
                                          continue;
                                       },if(!_loc2_)
                                       {
                                          continue loop4;
                                       },if(_loc3_)
                                       {
                                          continue loop2;
                                       },this.§[e§ = null,if(!_loc3_)
                                       {
                                          §§goto(addr26);
                                       },§§goto(addr158))
                                       {
                                          this.§8&§ = null;
                                          while(true)
                                          {
                                             addr37:
                                             addr158:
                                             addr26:
                                             while(true)
                                             {
                                                this.§3,§ = null;
                                                if(_loc3_)
                                                {
                                                   break;
                                                }
                                                continue loop7;
                                             }
                                             return;
                                             if(_loc3_ && _loc2_)
                                             {
                                                continue;
                                             }
                                             if(!_loc2_)
                                             {
                                                continue loop5;
                                             }
                                             if(false)
                                             {
                                                §§goto(addr37);
                                             }
                                             else
                                             {
                                                addr153:
                                                if(this.§>!>§.length > 0)
                                                {
                                                   _loc1_ = this.§>!>§.pop();
                                                   if(_loc2_)
                                                   {
                                                      this.§>`§.§=]§.§'!Y§(_loc1_);
                                                   }
                                                   §§goto(addr153);
                                                }
                                                addr129:
                                             }
                                             §§goto(addr158);
                                          }
                                       }
                                    }
                                    continue loop0;
                                 }
                                 continue loop3;
                              }
                           }
                        }
                        §§goto(addr129);
                     }
                     §§goto(addr102);
                  }
                  continue;
               }
               §§goto(addr158);
            }
         }
      }
      
      private function §0!§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§9!S§.visible = param1;
         }
      }
      
      private function § var§() : void
      {
         var _loc16_:Boolean = true;
         var _loc17_:Boolean = false;
         var _loc3_:§+0§ = null;
         var _loc4_:Rectangle = null;
         var _loc5_:* = NaN;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         var _loc8_:* = 0;
         var _loc9_:* = 0;
         var _loc10_:BitmapData = null;
         var _loc11_:BitmapData = null;
         var _loc12_:Texture = null;
         var _loc13_:§`!C§ = null;
         var _loc1_:Rectangle = null;
         var _loc2_:Vector.<§+0§> = new Vector.<§+0§>();
         for each(_loc3_ in this.§=U§)
         {
            if(!_loc17_)
            {
               if(!_loc3_.isTexture())
               {
                  continue;
               }
               if(_loc16_)
               {
                  _loc2_.push(_loc3_);
               }
            }
            _loc4_ = _loc3_.sprite.getBounds(this.§<!X§);
            if(_loc16_)
            {
               if(_loc1_ != null)
               {
                  _loc1_ = _loc1_.union(_loc4_);
                  continue;
               }
            }
            _loc1_ = new Rectangle(_loc4_.x,_loc4_.y,_loc4_.width,_loc4_.height);
         }
         if(!(_loc17_ && _loc1_))
         {
            if(_loc1_)
            {
               if(!(_loc17_ && _loc2_))
               {
                  §§push(1);
                  loop1:
                  while(true)
                  {
                     §§push(Number(§§pop()));
                     addr320:
                     while(true)
                     {
                        _loc5_ = §§pop();
                     }
                     loop12:
                     while(true)
                     {
                        if(_loc17_ && this)
                        {
                           continue loop1;
                        }
                        _loc7_ = §§pop();
                        loop13:
                        while(_loc16_)
                        {
                           loop14:
                           while(true)
                           {
                              §§push(int(_loc1_.left));
                              loop15:
                              while(true)
                              {
                                 _loc8_ = §§pop();
                                 loop16:
                                 while(true)
                                 {
                                    if(!_loc16_)
                                    {
                                       continue loop13;
                                    }
                                    if(_loc16_ || _loc3_)
                                    {
                                       if(_loc16_ || _loc3_)
                                       {
                                          while(true)
                                          {
                                             §§push(int(_loc1_.top));
                                             if(!(_loc16_ || _loc1_))
                                             {
                                                continue loop15;
                                             }
                                             if(_loc17_)
                                             {
                                                continue loop12;
                                             }
                                             addr131:
                                             if(!(_loc17_ && _loc2_))
                                             {
                                                _loc9_ = §§pop();
                                                if(_loc17_)
                                                {
                                                   continue loop16;
                                                }
                                                if(_loc16_ || _loc2_)
                                                {
                                                   if(!(_loc17_ && _loc3_))
                                                   {
                                                      if(true)
                                                      {
                                                         break;
                                                      }
                                                      continue loop14;
                                                   }
                                                   while(true)
                                                   {
                                                      if(!_loc17_)
                                                      {
                                                         addr267:
                                                         loop4:
                                                         while(true)
                                                         {
                                                            §§push(_loc1_.width > 2048);
                                                            loop5:
                                                            while(true)
                                                            {
                                                               if(!§§pop())
                                                               {
                                                                  loop6:
                                                                  while(true)
                                                                  {
                                                                     §§pop();
                                                                     addr242:
                                                                     do
                                                                     {
                                                                        §§push(_loc1_.height > 2048);
                                                                        if(_loc17_ && _loc2_)
                                                                        {
                                                                           continue loop6;
                                                                        }
                                                                     }
                                                                     while(_loc16_);
                                                                     
                                                                     continue loop5;
                                                                  }
                                                               }
                                                               while(true)
                                                               {
                                                                  if(!§§pop())
                                                                  {
                                                                     break loop13;
                                                                  }
                                                                  addr321:
                                                                  addr301:
                                                                  _loc1_.left /= 2;
                                                                  if(!(_loc17_ && _loc3_))
                                                                  {
                                                                     _loc1_.top /= 2;
                                                                     _loc1_.right /= 2;
                                                                     _loc1_.bottom /= 2;
                                                                     break loop16;
                                                                     addr291:
                                                                     addr283:
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     continue loop4;
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                      break loop16;
                                                      addr264:
                                                      _loc5_ = §§pop();
                                                   }
                                                }
                                                while(true)
                                                {
                                                   if(!_loc17_)
                                                   {
                                                      §§push(int(_loc1_.height));
                                                      continue loop12;
                                                   }
                                                   §§goto(addr291);
                                                }
                                                addr231:
                                             }
                                             while(true)
                                             {
                                                _loc6_ = §§pop();
                                                §§goto(addr231);
                                                §§goto(addr131);
                                             }
                                          }
                                          _loc10_ = new BitmapData(_loc6_,_loc7_,true,0);
                                          if(!_loc17_)
                                          {
                                             this.§'&§(_loc10_.rect,_loc10_,_loc5_);
                                          }
                                          _loc11_ = this.§=f§(_loc2_,_loc6_,_loc7_,_loc8_,_loc9_,_loc5_);
                                          if(!_loc17_)
                                          {
                                             _loc10_.copyChannel(_loc11_,_loc11_.rect,new Point(0,0),BitmapDataChannel.ALPHA,BitmapDataChannel.ALPHA);
                                          }
                                          _loc12_ = this.§>`§.§=]§.§1u§(_loc10_);
                                          if(_loc16_)
                                          {
                                             this.§>!>§.push(_loc12_);
                                          }
                                          (_loc13_ = new §`!C§(_loc12_)).x = _loc8_ / _loc5_;
                                          if(!_loc17_)
                                          {
                                             _loc13_.y = _loc9_ / _loc5_;
                                             loop20:
                                             while(true)
                                             {
                                                _loc13_.scaleX = 1 / _loc5_;
                                                while(true)
                                                {
                                                   _loc13_.scaleY = 1 / _loc5_;
                                                   while(_loc16_ || this)
                                                   {
                                                      continue loop20;
                                                      loop25:
                                                      while(_loc16_ || this)
                                                      {
                                                         _loc11_.dispose();
                                                         if(!_loc17_)
                                                         {
                                                            addr394:
                                                            if(false)
                                                            {
                                                               while(true)
                                                               {
                                                                  this.§9!S§.addChild(_loc13_);
                                                                  continue loop25;
                                                                  §§goto(addr394);
                                                               }
                                                               addr396:
                                                            }
                                                            §§goto(addr453);
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          while(true)
                                          {
                                             §§goto(addr396);
                                          }
                                          addr178:
                                       }
                                       §§goto(addr283);
                                    }
                                    §§goto(addr242);
                                 }
                                 while(true)
                                 {
                                    §§push(_loc5_);
                                    if(!(_loc17_ && _loc2_))
                                    {
                                       §§push(§§pop() / 2);
                                       if(_loc16_ || _loc3_)
                                       {
                                          if(!_loc17_)
                                          {
                                             §§push(Number(§§pop()));
                                             break;
                                          }
                                          break loop12;
                                       }
                                       break;
                                    }
                                    break;
                                 }
                                 §§goto(addr264);
                              }
                           }
                        }
                        while(true)
                        {
                           if(!(_loc17_ && this))
                           {
                              §§goto(addr230);
                              §§push(int(_loc1_.width));
                           }
                           §§goto(addr301);
                        }
                     }
                     §§goto(addr320);
                  }
               }
               §§goto(addr321);
            }
            addr453:
            return;
         }
         §§goto(addr178);
      }
      
      private function §=f§(param1:Vector.<§+0§>, param2:int, param3:int, param4:int, param5:int, param6:Number) : BitmapData
      {
         var _loc16_:Boolean = false;
         var _loc17_:Boolean = true;
         var _loc7_:§+0§ = null;
         var _loc11_:§<A§ = null;
         var _loc12_:Array = null;
         var _loc13_:Rectangle = null;
         var _loc8_:BitmapData = new BitmapData(param2,param3,true,0);
         var _loc9_:BitmapData = new BitmapData(1,1,true,4294967295);
         var _loc10_:Matrix = new Matrix();
         loop0:
         for each(_loc7_ in param1)
         {
            _loc12_ = (_loc11_ = _loc7_.§7Z§.shape).§%!8§();
            _loc13_ = new Rectangle(_loc12_[0].x / §86§.§7!4§ * param6,_loc12_[0].y / §86§.§7!4§ * param6,(_loc12_[1].x - _loc12_[0].x) / §86§.§7!4§ * param6,(_loc12_[1].y - _loc12_[0].y) / §86§.§7!4§ * param6);
            if(_loc17_ || param3)
            {
               _loc10_.identity();
               loop1:
               while(true)
               {
                  _loc10_.scale(_loc13_.width,_loc13_.height);
                  while(true)
                  {
                     _loc10_.translate(-_loc13_.width / 2,-_loc13_.height / 2);
                     while(_loc17_ || param2)
                     {
                        continue loop1;
                        addr166:
                        if(_loc17_ || param2)
                        {
                           while(true)
                           {
                              _loc8_.draw(_loc9_,_loc10_);
                              if(_loc17_)
                              {
                                 if(true)
                                 {
                                    break;
                                 }
                                 while(true)
                                 {
                                    _loc10_.translate(_loc7_.sprite.x * param6 - param4,_loc7_.sprite.y * param6 - param5);
                                 }
                                 addr147:
                              }
                              while(!_loc16_)
                              {
                                 §§goto(addr166);
                              }
                              addr186:
                              while(true)
                              {
                                 §§goto(addr147);
                              }
                           }
                           continue loop0;
                           addr173:
                        }
                     }
                  }
               }
            }
            §§goto(addr173);
         }
         if(_loc17_ || param3)
         {
            _loc9_.dispose();
         }
         return _loc8_;
      }
      
      private function §'&§(param1:Rectangle, param2:BitmapData, param3:Number) : void
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
         var _loc15_:int = 0;
         §§push(this.§>`§.background.§0!!§());
         if(_loc16_)
         {
            §§push(§§pop());
         }
         var _loc4_:* = §§pop();
         var _loc5_:§6!=§;
         if(_loc5_ = this.§>`§.§7!_§.§4!,§(_loc4_))
         {
            _loc6_ = new BitmapData(_loc5_.bitmapData.width * param3,_loc5_.bitmapData.height * param3);
            (_loc7_ = new Matrix()).scale(param3,param3);
            if(!(_loc17_ && param2))
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
                           while(true)
                           {
                              §§push(int(§§pop()));
                              loop5:
                              while(true)
                              {
                                 _loc9_ = §§pop();
                                 loop6:
                                 while(true)
                                 {
                                    §§push(param1.top / _loc9_);
                                    loop7:
                                    while(true)
                                    {
                                       §§push(int(§§pop()));
                                       loop8:
                                       while(true)
                                       {
                                          _loc10_ = §§pop();
                                          loop9:
                                          while(true)
                                          {
                                             if(param1.top < 0)
                                             {
                                                while(true)
                                                {
                                                   §§push(_loc10_);
                                                   addr390:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() - 1);
                                                      addr391:
                                                      while(true)
                                                      {
                                                         _loc10_ = §§pop();
                                                         addr392:
                                                         while(true)
                                                         {
                                                         }
                                                      }
                                                   }
                                                   addr206:
                                                   if(!(_loc16_ || param1))
                                                   {
                                                      continue;
                                                   }
                                                   if(_loc17_ && param3)
                                                   {
                                                      continue loop9;
                                                   }
                                                   addr85:
                                                   §§push(_loc14_);
                                                   if(!_loc17_)
                                                   {
                                                      if(_loc16_ || param2)
                                                      {
                                                         if(!(_loc17_ && this))
                                                         {
                                                            §§push(_loc13_);
                                                            if(_loc16_)
                                                            {
                                                               if(§§pop() >= §§pop())
                                                               {
                                                                  if(!_loc17_)
                                                                  {
                                                                     if(!(_loc17_ && param1))
                                                                     {
                                                                        if(!_loc17_)
                                                                        {
                                                                           _loc6_.dispose();
                                                                           addr120:
                                                                           if(_loc16_ || param1)
                                                                           {
                                                                              if(!(_loc17_ && param3))
                                                                              {
                                                                                 if(false)
                                                                                 {
                                                                                    addr136:
                                                                                    addr139:
                                                                                    addr138:
                                                                                    if(_loc15_ >= _loc11_)
                                                                                    {
                                                                                       addr140:
                                                                                       _loc14_++;
                                                                                       §§goto(addr85);
                                                                                    }
                                                                                    param2.copyPixels(_loc6_,_loc6_.rect,new Point(_loc14_ * _loc8_,_loc15_ * _loc9_));
                                                                                    _loc15_++;
                                                                                    if(_loc17_)
                                                                                    {
                                                                                    }
                                                                                    §§goto(addr136);
                                                                                    addr163:
                                                                                    addr170:
                                                                                 }
                                                                                 §§goto(addr433);
                                                                              }
                                                                              §§goto(addr163);
                                                                           }
                                                                           §§goto(addr140);
                                                                        }
                                                                        §§goto(addr136);
                                                                     }
                                                                     §§goto(addr140);
                                                                  }
                                                                  §§goto(addr120);
                                                               }
                                                               addr169:
                                                               _loc15_ = _loc10_;
                                                               addr168:
                                                               §§goto(addr170);
                                                            }
                                                            §§goto(addr139);
                                                         }
                                                         §§goto(addr168);
                                                      }
                                                      §§goto(addr169);
                                                   }
                                                   §§goto(addr138);
                                                }
                                             }
                                             loop14:
                                             while(true)
                                             {
                                                §§push(param1.bottom / _loc9_);
                                                while(!_loc17_)
                                                {
                                                   continue loop1;
                                                   addr243:
                                                   if(!(_loc16_ || param1))
                                                   {
                                                      continue;
                                                   }
                                                   if(!_loc16_)
                                                   {
                                                      continue loop7;
                                                   }
                                                   §§push(int(§§pop()));
                                                   while(true)
                                                   {
                                                      if(_loc16_ || param3)
                                                      {
                                                         if(!_loc17_)
                                                         {
                                                            §§push(§§pop());
                                                            if(!_loc17_)
                                                            {
                                                               _loc13_ = §§pop();
                                                               if(_loc16_ || param1)
                                                               {
                                                                  addr273:
                                                                  if(_loc16_ || param2)
                                                                  {
                                                                     if(!(_loc17_ && param2))
                                                                     {
                                                                        if(!_loc16_)
                                                                        {
                                                                           continue loop2;
                                                                        }
                                                                        §§push(§§pop() + 1);
                                                                        while(!_loc17_)
                                                                        {
                                                                           _loc13_ = §§pop();
                                                                           while(_loc16_)
                                                                           {
                                                                              continue loop0;
                                                                           }
                                                                           loop23:
                                                                           while(true)
                                                                           {
                                                                              if(_loc17_ && param1)
                                                                              {
                                                                                 continue loop3;
                                                                              }
                                                                              if(param1.left < 0)
                                                                              {
                                                                                 addr327:
                                                                                 if(_loc16_)
                                                                                 {
                                                                                    if(_loc17_ && param1)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    if(_loc17_ && param1)
                                                                                    {
                                                                                       continue loop6;
                                                                                    }
                                                                                    §§push(_loc12_);
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() - 1);
                                                                                       addr326:
                                                                                       while(true)
                                                                                       {
                                                                                          _loc12_ = §§pop();
                                                                                       }
                                                                                       §§goto(addr273);
                                                                                    }
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                 }
                                                                                 addr327:
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§push(param1.right / _loc8_);
                                                                                 if(!(_loc16_ || param2))
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 §§goto(addr243);
                                                                                 §§goto(addr327);
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§push(int(§§pop()));
                                                                                 addr334:
                                                                                 while(true)
                                                                                 {
                                                                                    _loc12_ = §§pop();
                                                                                    continue loop23;
                                                                                 }
                                                                                 §§goto(addr231);
                                                                              }
                                                                              addr231:
                                                                           }
                                                                           continue loop14;
                                                                        }
                                                                        while(!(_loc17_ && this))
                                                                        {
                                                                           §§push(§§pop());
                                                                           while(true)
                                                                           {
                                                                              _loc11_ = §§pop();
                                                                              addr367:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop() + 1);
                                                                                 addr368:
                                                                                 while(_loc16_ || this)
                                                                                 {
                                                                                    if(!(_loc16_ || this))
                                                                                    {
                                                                                       continue loop5;
                                                                                    }
                                                                                    _loc11_ = §§pop();
                                                                                    while(true)
                                                                                    {
                                                                                       §§goto(addr333);
                                                                                       addr199:
                                                                                       §§push(param1.left / _loc8_);
                                                                                       if(!(_loc16_ || param1))
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       §§goto(addr206);
                                                                                    }
                                                                                 }
                                                                                 continue loop8;
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr390);
                                                                        addr290:
                                                                     }
                                                                     break;
                                                                  }
                                                                  §§goto(addr325);
                                                               }
                                                               §§goto(addr290);
                                                            }
                                                            §§goto(addr366);
                                                         }
                                                         §§goto(addr368);
                                                      }
                                                      §§goto(addr326);
                                                      addr177:
                                                      if(!(_loc16_ || this))
                                                      {
                                                         continue;
                                                      }
                                                      §§push(int(§§pop()));
                                                      if(!(_loc17_ && param3))
                                                      {
                                                         if(!_loc17_)
                                                         {
                                                            _loc14_ = §§pop();
                                                            if(!_loc17_)
                                                            {
                                                               if(!_loc17_)
                                                               {
                                                                  §§goto(addr199);
                                                               }
                                                               §§goto(addr327);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr293);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr367);
                                                         }
                                                         §§goto(addr383);
                                                      }
                                                      §§goto(addr334);
                                                   }
                                                   §§goto(addr391);
                                                }
                                                continue loop4;
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
            §§goto(addr327);
         }
         addr433:
      }
      
      public function addObjectParseBirds(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §+0§
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc10_:§+0§ = null;
         var _loc11_:* = param2;
         if(_loc12_ || param2)
         {
            if("BIRD_BLACK" === _loc11_)
            {
               if(_loc12_)
               {
                  §§push(0);
                  if(_loc13_)
                  {
                     addr311:
                  }
               }
               else
               {
                  addr277:
                  §§push(4);
                  if(_loc13_)
                  {
                  }
               }
            }
            else if("BIRD_BLUE" === _loc11_)
            {
               if(!_loc13_)
               {
                  §§push(1);
                  if(_loc13_ && param1)
                  {
                     addr289:
                  }
               }
               else
               {
                  addr249:
                  §§push(2);
                  if(_loc13_)
                  {
                  }
               }
            }
            else if("BIRD_GREEN" === _loc11_)
            {
               if(!(_loc13_ && param3))
               {
                  §§goto(addr249);
               }
               else
               {
                  §§goto(addr277);
               }
            }
            else
            {
               if("BIRD_WHITE" === _loc11_)
               {
                  if(!(_loc13_ && param1))
                  {
                     §§push(3);
                     if(_loc13_)
                     {
                        §§goto(addr311);
                     }
                  }
                  else
                  {
                     addr293:
                     §§push(6);
                     if(_loc12_ || param2)
                     {
                        §§goto(addr311);
                     }
                  }
               }
               else
               {
                  if("BIRD_YELLOW" === _loc11_)
                  {
                     if(!(_loc13_ && param3))
                     {
                        §§goto(addr277);
                     }
                     else
                     {
                        §§goto(addr293);
                     }
                  }
                  else
                  {
                     if("BIRD_RED" === _loc11_)
                     {
                        if(!_loc13_)
                        {
                           §§push(5);
                           if(_loc12_)
                           {
                              §§goto(addr289);
                           }
                           else
                           {
                              §§goto(addr311);
                           }
                        }
                        else
                        {
                           §§goto(addr293);
                        }
                     }
                     else if("BIRD_REDBIG" === _loc11_)
                     {
                        §§goto(addr293);
                     }
                     else
                     {
                        §§push(7);
                     }
                     §§goto(addr293);
                  }
                  §§goto(addr293);
               }
               §§goto(addr293);
            }
            switch(§§pop())
            {
               case 0:
                  _loc10_ = new §6!2§(this,param1,this.§>`§.mLevelEngine.mWorld,this.§>`§,this.§;!W§,param2,param3,param4,param5,param8,param9);
                  break;
               case 1:
                  _loc10_ = new §@N§(this,param1,this.§>`§.mLevelEngine.mWorld,this.§>`§,this.§;!W§,param2,param3,param4,param5,param8,param9);
                  break;
               case 2:
                  _loc10_ = new §3!G§(this,param1,this.§>`§.mLevelEngine.mWorld,this.§>`§,this.§;!W§,param2,param3,param4,param5,param8,param9);
                  break;
               case 3:
                  _loc10_ = new §`!2§(this,param1,this.§>`§.mLevelEngine.mWorld,this.§>`§,this.§;!W§,param2,param3,param4,param5,param8,param9);
                  break;
               case 4:
                  _loc10_ = new §@!S§(this,param1,this.§>`§.mLevelEngine.mWorld,this.§>`§,this.§;!W§,param2,param3,param4,param5,param8,param9);
                  break;
               case 5:
                  _loc10_ = new § 0§(this,param1,this.§>`§.mLevelEngine.mWorld,this.§>`§,this.§;!W§,param2,param3,param4,param5,param8,param9);
                  break;
               case 6:
                  _loc10_ = new §=&§(this,param1,this.§>`§.mLevelEngine.mWorld,this.§>`§,this.§;!W§,param2,param3,param4,param5,param8,param9);
                  break;
               default:
                  _loc10_ = new §4!9§(this,param1,this.§>`§.mLevelEngine.mWorld,this.§>`§,this.§;!W§,param2,param3,param4,param5,param8,param9);
            }
            return _loc10_;
         }
         §§goto(addr293);
      }
      
      public function hasBirds() : Boolean
      {
         return this.§-`§ > 0;
      }
      
      public function addObject(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : §+0§
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         var _loc10_:Sprite;
         (_loc10_ = new Sprite()).scaleX = param8;
         if(_loc15_)
         {
            _loc10_.scaleY = param8;
         }
         var _loc11_:§+0§;
         §§push((_loc11_ = this.§-o§(_loc10_,param1,param2,param3,param4,param5,param6,param7,param8)).isTexture());
         if(_loc15_)
         {
            if(§§pop())
            {
               if(_loc15_ || this)
               {
                  §§push(_loc10_);
                  §§push(this.§2Z§);
                  if(!_loc14_)
                  {
                     §§push(!§§pop());
                  }
                  §§pop().visible = §§pop();
                  if(!_loc14_)
                  {
                     this.§=U§[this.§=U§.length] = _loc11_;
                     loop16:
                     while(true)
                     {
                        addr103:
                        loop0:
                        while(true)
                        {
                           §§push(_loc11_ is §4!9§);
                           if(!_loc14_)
                           {
                              §§push(§§pop());
                              if(!(_loc14_ && this))
                              {
                                 if(§§pop())
                                 {
                                    if(!(_loc14_ && param2))
                                    {
                                       §§pop();
                                       loop1:
                                       while(true)
                                       {
                                          §§push(_loc11_.§@m§());
                                          if(_loc15_)
                                          {
                                             §§push(!§§pop());
                                             if(_loc15_ || this)
                                             {
                                                while(true)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      §§push(_loc11_.front);
                                                      if(!(_loc14_ && this))
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                         if(_loc15_ || param2)
                                                         {
                                                            break loop1;
                                                         }
                                                         break loop0;
                                                      }
                                                      break loop1;
                                                   }
                                                   if(_loc15_)
                                                   {
                                                      continue loop1;
                                                   }
                                                   addr304:
                                                   loop13:
                                                   while(true)
                                                   {
                                                      §§push(param9);
                                                      loop14:
                                                      while(true)
                                                      {
                                                         if(_loc14_ && param3)
                                                         {
                                                            continue loop13;
                                                         }
                                                         loop18:
                                                         while(true)
                                                         {
                                                            §§push(Boolean(§§pop()));
                                                            addr266:
                                                            while(true)
                                                            {
                                                               loop4:
                                                               while(true)
                                                               {
                                                                  if(!§§pop())
                                                                  {
                                                                     this.§[e§.addChild(_loc10_);
                                                                     loop5:
                                                                     while(true)
                                                                     {
                                                                        addr231:
                                                                        loop6:
                                                                        while(true)
                                                                        {
                                                                           §§push(param5);
                                                                           loop7:
                                                                           while(true)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 if(_loc15_ || param2)
                                                                                 {
                                                                                    if(!_loc14_)
                                                                                    {
                                                                                       §§push(this.§>`§);
                                                                                       while(true)
                                                                                       {
                                                                                          §§pop().§7$§(_loc11_);
                                                                                       }
                                                                                       addr245:
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr268:
                                                                                       while(true)
                                                                                       {
                                                                                          this.§8&§.addChild(_loc10_);
                                                                                          break loop7;
                                                                                       }
                                                                                       addr268:
                                                                                    }
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                 }
                                                                                 addr247:
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§push(param6);
                                                                                 if(_loc14_)
                                                                                 {
                                                                                    continue loop7;
                                                                                 }
                                                                                 if(_loc14_ && param3)
                                                                                 {
                                                                                    continue loop4;
                                                                                 }
                                                                                 if(!(_loc15_ || this))
                                                                                 {
                                                                                    continue loop14;
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       if(_loc15_ || param3)
                                                                                       {
                                                                                          if(_loc14_)
                                                                                          {
                                                                                             continue loop13;
                                                                                          }
                                                                                          §§push(this.§>`§);
                                                                                          if(_loc15_)
                                                                                          {
                                                                                             §§pop().activeObject = _loc11_;
                                                                                             addr219:
                                                                                             if(_loc15_)
                                                                                             {
                                                                                                if(!_loc14_)
                                                                                                {
                                                                                                   if(_loc15_ || this)
                                                                                                   {
                                                                                                      §§goto(addr180);
                                                                                                   }
                                                                                                   break loop7;
                                                                                                }
                                                                                                continue loop5;
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr245);
                                                                                          }
                                                                                          §§goto(addr247);
                                                                                       }
                                                                                       §§goto(addr219);
                                                                                    }
                                                                                    addr180:
                                                                                    return _loc11_;
                                                                                 }
                                                                              }
                                                                              continue loop14;
                                                                           }
                                                                           addr272:
                                                                           while(true)
                                                                           {
                                                                              continue loop6;
                                                                           }
                                                                        }
                                                                     }
                                                                     addr255:
                                                                  }
                                                                  §§goto(addr268);
                                                               }
                                                               continue loop18;
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                                addr88:
                                                if(!_loc15_)
                                                {
                                                   continue loop16;
                                                }
                                                this.§3,§.addChild(_loc10_);
                                                if(_loc15_ || param3)
                                                {
                                                   if(false)
                                                   {
                                                      continue loop0;
                                                   }
                                                   var _loc12_:*;
                                                   §§push((_loc12_ = this).§-`§);
                                                   if(!_loc14_)
                                                   {
                                                      §§push(§§pop() + 1);
                                                   }
                                                   var _loc13_:* = §§pop();
                                                   if(!(_loc14_ && param1))
                                                   {
                                                      _loc12_.§-`§ = _loc13_;
                                                   }
                                                   if(_loc15_)
                                                   {
                                                      §§goto(addr231);
                                                      addr179:
                                                   }
                                                   §§goto(addr255);
                                                }
                                                §§goto(addr268);
                                                addr77:
                                             }
                                             §§goto(addr203);
                                          }
                                          break;
                                       }
                                       addr126:
                                    }
                                    addr302:
                                    if(!§§pop())
                                    {
                                       break;
                                    }
                                    §§goto(addr266);
                                 }
                                 §§goto(addr77);
                              }
                              §§goto(addr302);
                           }
                           break;
                        }
                        while(true)
                        {
                           §§pop();
                           §§goto(addr304);
                        }
                     }
                  }
                  §§goto(addr179);
               }
               §§goto(addr126);
            }
            else
            {
               this.§=U§[this.§=U§.length] = _loc11_;
               if(!_loc14_)
               {
                  §§goto(addr103);
               }
            }
            §§goto(addr272);
         }
         §§goto(addr265);
      }
      
      public function §0l§(param1:int, param2:§+0§, param3:§+0§) : §8U§
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc6_:§8U§ = null;
         var _loc4_:int = this.§=U§.indexOf(param2) - this.§[h§;
         var _loc5_:int = this.§=U§.indexOf(param3) - this.§[h§;
         if(!(_loc7_ && param3))
         {
            §§push(_loc4_);
            if(!(_loc7_ && this))
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
                           addr73:
                           §§pop();
                           if(!(_loc7_ && param2))
                           {
                              §§goto(addr84);
                           }
                           §§goto(addr85);
                        }
                     }
                     addr84:
                     §§goto(addr83);
                  }
                  §§goto(addr73);
               }
               addr83:
               §§goto(addr82);
            }
            addr82:
            §§goto(addr81);
         }
         addr81:
         if(_loc5_ >= 0)
         {
            addr85:
            (_loc6_ = new §8U§(§8C§.§3!H§,_loc4_,_loc5_,new Point(0,0),new Point(0,0))).§2B§ = this.§>`§.mLevelEngine.mWorld.§8m§(_loc6_.§&!$§(param2,param3));
            if(_loc8_)
            {
               this.§[%§.push(_loc6_);
               if(_loc8_)
               {
                  return _loc6_;
               }
            }
         }
         return null;
      }
      
      public function §[j§(param1:§8U§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            if(!(param1.§2B§ is b2WeldJoint))
            {
               if(_loc5_)
               {
                  return;
               }
            }
         }
         var _loc2_:§+0§ = this.§1T§(param1.index1 + this.§[h§);
         var _loc3_:§+0§ = this.§1T§(param1.index2 + this.§[h§);
         if(!_loc4_)
         {
            this.§>`§.mLevelEngine.mWorld.§>A§(param1.§2B§);
         }
         do
         {
            param1.§2B§ = this.§>`§.mLevelEngine.mWorld.§8m§(param1.§&!$§(_loc2_,_loc3_));
         }
         while(!_loc5_);
         
      }
      
      public function §+o§(param1:§+0§) : Vector.<§8U§>
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:§8U§ = null;
         var _loc2_:Vector.<§8U§> = new Vector.<§8U§>();
         var _loc3_:int = this.§=U§.indexOf(param1) - this.§[h§;
         if(_loc7_ || _loc2_)
         {
            §§push(_loc3_);
            if(!(_loc8_ && _loc3_))
            {
               if(§§pop() >= 0)
               {
                  addr52:
                  addr51:
                  for each(_loc4_ in this.§[%§)
                  {
                     §§push(_loc4_.index1 == _loc3_);
                     if(!(_loc8_ && _loc3_))
                     {
                        if(!§§pop())
                        {
                           if(_loc7_ || this)
                           {
                              §§pop();
                              if(!(_loc8_ && _loc2_))
                              {
                                 addr106:
                                 if(_loc4_.index2 != _loc3_)
                                 {
                                    continue;
                                 }
                                 if(!_loc7_)
                                 {
                                    continue;
                                 }
                              }
                              _loc2_.push(_loc4_);
                              continue;
                           }
                        }
                     }
                     §§goto(addr106);
                  }
               }
               return _loc2_;
            }
            §§goto(addr52);
         }
         §§goto(addr51);
      }
      
      public function §<x§() : Vector.<§8U§>
      {
         return this.§[%§;
      }
      
      public function §&!6§(param1:§+0§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:int = this.§=U§.indexOf(param1) - this.§[h§;
         var _loc3_:* = int(this.§[%§.length - 1);
         while(true)
         {
            §§push(_loc3_);
            if(!(_loc5_ && this))
            {
               if(§§pop() < 0)
               {
                  if(!_loc5_)
                  {
                     if(!(_loc5_ && _loc2_))
                     {
                        break;
                     }
                     while(true)
                     {
                        addr55:
                        while(true)
                        {
                           §§push(_loc3_);
                           if(_loc4_ || this)
                           {
                              addr75:
                              §§push(§§pop() - 1);
                              while(true)
                              {
                                 _loc3_ = §§pop();
                              }
                              addr75:
                           }
                           §§goto(addr75);
                        }
                     }
                     addr103:
                  }
                  while(_loc5_)
                  {
                     loop5:
                     while(true)
                     {
                        §§push(this.§[%§[_loc3_].index2 == _loc2_);
                        if(!_loc5_)
                        {
                           break;
                        }
                        addr132:
                        while(true)
                        {
                           §§pop();
                           continue loop5;
                        }
                     }
                     while(true)
                     {
                        if(§§pop())
                        {
                           if(!(_loc5_ && _loc3_))
                           {
                              this.§[%§.splice(_loc3_,1);
                           }
                           §§goto(addr103);
                        }
                        §§goto(addr55);
                        §§goto(addr133);
                     }
                     addr133:
                  }
                  continue;
               }
               §§push(this.§[%§[_loc3_].index1 == _loc2_);
               if(_loc4_ || _loc2_)
               {
                  if(!§§pop())
                  {
                     §§goto(addr132);
                  }
                  §§goto(addr89);
               }
               §§goto(addr132);
            }
            §§goto(addr75);
         }
      }
      
      public function §`c§(param1:§+0§, param2:§+0§) : Boolean
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:int = this.§=U§.indexOf(param1) - this.§[h§;
         var _loc4_:int = this.§=U§.indexOf(param2) - this.§[h§;
         var _loc5_:* = int(this.§[%§.length - 1);
         loop0:
         while(true)
         {
            §§push(_loc5_);
            if(_loc7_ || _loc3_)
            {
               if(!_loc6_)
               {
                  if(§§pop() < 0)
                  {
                     if(!_loc6_)
                     {
                        if(!(_loc6_ && param1))
                        {
                           if(!_loc6_)
                           {
                              if(_loc7_ || param2)
                              {
                                 §§push(false);
                                 if(!(_loc6_ && param2))
                                 {
                                    if(_loc7_)
                                    {
                                       if(_loc7_)
                                       {
                                          break;
                                       }
                                       addr188:
                                       §§push(§§pop());
                                       loop14:
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             loop5:
                                             while(true)
                                             {
                                                §§pop();
                                                addr191:
                                                while(true)
                                                {
                                                   §§push(this.§[%§[_loc5_].index2 == _loc4_);
                                                   if(_loc7_)
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(§§pop());
                                                         loop4:
                                                         while(true)
                                                         {
                                                            if(!_loc7_)
                                                            {
                                                               continue loop14;
                                                            }
                                                            if(!§§pop())
                                                            {
                                                               while(!_loc7_)
                                                               {
                                                                  continue loop5;
                                                               }
                                                               §§pop();
                                                               addr165:
                                                               loop11:
                                                               while(true)
                                                               {
                                                                  §§push(this.§[%§[_loc5_].index1 == _loc4_);
                                                                  addr142:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop());
                                                                     if(!_loc7_)
                                                                     {
                                                                        continue loop4;
                                                                     }
                                                                     if(§§pop())
                                                                     {
                                                                        loop2:
                                                                        while(true)
                                                                        {
                                                                           §§pop();
                                                                           addr147:
                                                                           while(true)
                                                                           {
                                                                              if(_loc6_)
                                                                              {
                                                                                 continue loop11;
                                                                              }
                                                                              §§push(this.§[%§[_loc5_].index2 == _loc3_);
                                                                              if(!_loc7_)
                                                                              {
                                                                                 continue loop2;
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     continue loop11;
                                                                  }
                                                               }
                                                               addr165:
                                                            }
                                                            while(§§pop())
                                                            {
                                                               while(true)
                                                               {
                                                                  §§goto(addr118);
                                                               }
                                                            }
                                                            addr98:
                                                            §§push(_loc5_);
                                                            while(true)
                                                            {
                                                               §§push(§§pop() - 1);
                                                               addr101:
                                                               loop16:
                                                               while(true)
                                                               {
                                                                  _loc5_ = §§pop();
                                                                  addr102:
                                                                  while(!_loc7_)
                                                                  {
                                                                     §§goto(addr98);
                                                                     continue loop16;
                                                                  }
                                                                  continue loop0;
                                                               }
                                                            }
                                                         }
                                                      }
                                                      addr160:
                                                   }
                                                   §§goto(addr165);
                                                }
                                             }
                                          }
                                          §§goto(addr160);
                                       }
                                    }
                                    §§goto(addr142);
                                 }
                                 §§goto(addr118);
                              }
                              §§goto(addr191);
                           }
                           §§goto(addr147);
                        }
                        §§goto(addr117);
                     }
                     §§goto(addr102);
                  }
                  else
                  {
                     §§push(this.§[%§[_loc5_].index1 == _loc3_);
                  }
                  §§goto(addr188);
               }
               §§goto(addr100);
            }
            §§goto(addr101);
         }
         return §§pop();
      }
      
      protected function §-o§(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §+0§
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         var _loc10_:§+0§ = null;
         var _loc11_:§-r§ = null;
         if(!_loc15_)
         {
            §§push(param2);
            if(_loc14_ || param2)
            {
               if(§§pop().indexOf("BIRD") == 0)
               {
                  if(!_loc15_)
                  {
                     addr38:
                     _loc10_ = this.addObjectParseBirds(param1,param2,param3,param4,param5,param6,param7,param8,param9);
                     if(_loc14_ || param1)
                     {
                        var _loc12_:*;
                        §§push((_loc12_ = this).§&! §);
                        if(!(_loc15_ && param2))
                        {
                           §§push(§§pop() + 1);
                        }
                        var _loc13_:* = §§pop();
                        if(!(_loc15_ && this))
                        {
                           _loc12_.§&! § = _loc13_;
                        }
                     }
                  }
                  else
                  {
                     addr89:
                     _loc10_ = new §2!]§(this,param1,this.§>`§.mLevelEngine.mWorld,this.§>`§,this.§;!W§,param2,param3,param4,param5,param9);
                  }
                  §§goto(addr261);
               }
               else
               {
                  addr85:
                  if(param2.indexOf("PIG") == 0)
                  {
                     §§goto(addr89);
                  }
                  else
                  {
                     §§push((_loc11_ = §%<§.§<<§(param2)) == null);
                     if(!(_loc15_ && param3))
                     {
                        §§push(§§pop());
                        if(!(_loc15_ && param1))
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
                                       if(!(_loc15_ && param3))
                                       {
                                          addr162:
                                          if(§§pop())
                                          {
                                             if(_loc14_ || this)
                                             {
                                                addr176:
                                                param2 = "MISC_FOOD_" + param2.substring(5);
                                                if(_loc14_)
                                                {
                                                   _loc11_ = §%<§.§<<§(param2);
                                                   addr184:
                                                   §§push(_loc11_.§?n§);
                                                   if(!_loc15_)
                                                   {
                                                      §§push(§-r§.§"!1§);
                                                      if(!_loc15_)
                                                      {
                                                         §§push(§§pop() == §§pop());
                                                         if(!_loc15_)
                                                         {
                                                            addr196:
                                                            if(!§§pop())
                                                            {
                                                               if(!_loc15_)
                                                               {
                                                                  addr199:
                                                                  §§pop();
                                                                  §§goto(addr208);
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr207);
                                                      }
                                                      addr207:
                                                      if(§§pop())
                                                      {
                                                         addr208:
                                                         if(_loc14_)
                                                         {
                                                            addr204:
                                                            §§push(_loc11_.§?n§);
                                                            §§push(§-r§.§+!S§);
                                                         }
                                                         _loc10_ = new §3i§(this,param1,this.§>`§.mLevelEngine.mWorld,this.§>`§,this.§;!W§,param2,param3,param4,param5,param9,_loc11_.front);
                                                      }
                                                      else
                                                      {
                                                         _loc10_ = new §+0§(this,param1,this.§>`§.mLevelEngine.mWorld,this.§>`§,this.§;!W§,param2,param3,param4,param5,param9,_loc11_.front);
                                                      }
                                                      §§goto(addr261);
                                                      §§push(§§pop() == §§pop());
                                                   }
                                                   §§goto(addr204);
                                                }
                                             }
                                             §§goto(addr204);
                                          }
                                          §§goto(addr184);
                                       }
                                       §§goto(addr207);
                                    }
                                    §§goto(addr176);
                                 }
                                 §§goto(addr208);
                              }
                              §§goto(addr199);
                           }
                           §§goto(addr162);
                        }
                        §§goto(addr196);
                     }
                     §§goto(addr162);
                  }
               }
               §§goto(addr89);
            }
            §§goto(addr85);
         }
         §§goto(addr38);
      }
      
      public function §2l§(param1:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§+0§ = null;
         var _loc2_:* = int(this.§=U§.length - 1);
         loop0:
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§=U§[_loc2_] as §+0§;
            if(!_loc4_)
            {
               if(_loc3_)
               {
                  loop1:
                  while(true)
                  {
                     if(_loc3_.§,!&§ <= 0)
                     {
                        loop6:
                        while(true)
                        {
                           this.removeObjectWithIndex(_loc2_,true,true,true);
                           loop7:
                           while(true)
                           {
                              addr39:
                              while(true)
                              {
                                 §§push(_loc2_);
                                 if(!(_loc4_ && _loc3_))
                                 {
                                    §§push(§§pop() - 1);
                                 }
                                 _loc2_ = §§pop();
                                 if(!_loc4_)
                                 {
                                    if(!_loc5_)
                                    {
                                       continue loop7;
                                    }
                                    if(!_loc5_)
                                    {
                                       continue loop6;
                                    }
                                    if(true)
                                    {
                                       break;
                                    }
                                    while(true)
                                    {
                                       _loc3_.§&;§();
                                    }
                                 }
                                 addr71:
                                 while(!(_loc4_ && _loc3_))
                                 {
                                    continue loop1;
                                 }
                                 continue loop7;
                              }
                              continue loop0;
                           }
                        }
                        addr98:
                     }
                     else
                     {
                        _loc3_.§1p§();
                     }
                     while(true)
                     {
                        §§goto(addr68);
                        §§goto(addr71);
                     }
                  }
               }
               §§goto(addr39);
            }
            §§goto(addr98);
         }
         if(!_loc4_)
         {
            this.§"!^§(param1);
         }
      }
      
      protected function §"!^§(param1:Number) : void
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc3_:§8U§ = null;
         var _loc4_:§"!%§ = null;
         var _loc5_:* = 0;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc2_:* = int(this.§'!-§.length - 1);
         loop0:
         while(true)
         {
            §§push(_loc2_);
            if(!_loc11_)
            {
               if(§§pop() < 0)
               {
                  §§goto(addr470);
               }
               §§push((_loc4_ = this.§'!-§[_loc2_]).§ !9§);
               if(_loc10_)
               {
                  if(§§pop())
                  {
                     if(_loc10_ || param1)
                     {
                        §§push(_loc4_.update(param1));
                        if(_loc10_)
                        {
                           §§push(int(§§pop()));
                           if(_loc10_ || _loc3_)
                           {
                              §§push(§§pop());
                              if(_loc10_)
                              {
                                 _loc5_ = §§pop();
                                 addr119:
                                 if(!_loc11_)
                                 {
                                    §§push(-1);
                                 }
                                 loop5:
                                 while(true)
                                 {
                                    _loc2_ = §§pop();
                                    if(!(_loc11_ && this))
                                    {
                                       addr127:
                                       if(_loc10_ || _loc2_)
                                       {
                                          addr134:
                                          while(false)
                                          {
                                             while(true)
                                             {
                                                this.§'!-§.splice(_loc2_,1);
                                                addr142:
                                                while(!(_loc11_ && param1))
                                                {
                                                   while(true)
                                                   {
                                                      §§push(_loc2_);
                                                      if(!_loc11_)
                                                      {
                                                         §§push(§§pop() - 1);
                                                      }
                                                      continue loop5;
                                                   }
                                                }
                                             }
                                          }
                                          continue loop0;
                                          addr134:
                                       }
                                       else
                                       {
                                          addr165:
                                       }
                                       while(true)
                                       {
                                          this.removeObjectWithIndex(_loc5_,true,true,true);
                                          §§goto(addr127);
                                       }
                                       while(true)
                                       {
                                          §§goto(addr136);
                                       }
                                    }
                                    §§goto(addr142);
                                 }
                                 addr119:
                              }
                              if(§§pop() != §§pop())
                              {
                                 if(!(_loc11_ && this))
                                 {
                                    §§push(_loc5_);
                                    if(!_loc11_)
                                    {
                                       §§push(§§pop() < this.§=U§.length);
                                       if(!(_loc11_ && this))
                                       {
                                          if(§§pop())
                                          {
                                             if(_loc10_ || _loc2_)
                                             {
                                             }
                                             addr164:
                                             if(§§pop())
                                             {
                                                §§goto(addr165);
                                             }
                                             §§goto(addr136);
                                          }
                                          §§goto(addr164);
                                       }
                                       §§pop();
                                       if(!(_loc11_ && param1))
                                       {
                                          §§push(this.§=U§[_loc5_] == null);
                                          if(!(_loc11_ && _loc2_))
                                          {
                                             §§goto(addr164);
                                             §§push(!§§pop());
                                          }
                                          §§goto(addr164);
                                       }
                                       §§goto(addr134);
                                    }
                                    §§goto(addr119);
                                 }
                                 §§goto(addr165);
                              }
                              §§goto(addr115);
                           }
                        }
                        §§goto(addr119);
                     }
                     §§goto(addr134);
                  }
                  §§goto(addr115);
               }
               §§goto(addr164);
            }
            break;
         }
         var _loc8_:* = §§pop();
         if(!(_loc11_ && param1))
         {
            loop8:
            for each(_loc3_ in this.§[%§)
            {
               if(!(_loc11_ && _loc2_))
               {
                  §§push(_loc3_.type == §8C§.§=G§);
                  loop9:
                  while(true)
                  {
                     §§push(§§pop());
                     loop10:
                     while(true)
                     {
                        if(§§pop())
                        {
                           loop11:
                           while(true)
                           {
                              §§pop();
                              addr465:
                              while(true)
                              {
                                 §§push(Boolean(_loc3_.§6!'§));
                                 addr430:
                                 while(_loc10_ || param1)
                                 {
                                 }
                                 continue loop11;
                              }
                           }
                        }
                        while(true)
                        {
                           if(!§§pop())
                           {
                              continue loop8;
                           }
                           loop15:
                           while(true)
                           {
                              §§push(_loc3_.§2B§);
                              addr441:
                              while(true)
                              {
                                 §§push((§§pop() as b2PrismaticJoint).§,1§());
                                 loop17:
                                 while(true)
                                 {
                                    §§push(Number(§§pop()));
                                    loop18:
                                    while(true)
                                    {
                                       _loc6_ = §§pop();
                                       loop19:
                                       while(true)
                                       {
                                          §§push(_loc3_.§2B§);
                                          addr420:
                                          while(true)
                                          {
                                             §§push((§§pop() as b2PrismaticJoint).§class§());
                                             loop21:
                                             while(true)
                                             {
                                                §§push(Number(§§pop()));
                                                loop22:
                                                while(true)
                                                {
                                                   _loc7_ = §§pop();
                                                   loop23:
                                                   while(true)
                                                   {
                                                      §§push(Boolean(_loc3_.§ h§));
                                                      loop24:
                                                      while(true)
                                                      {
                                                         §§push(§§pop());
                                                         loop25:
                                                         while(true)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               while(true)
                                                               {
                                                                  §§pop();
                                                                  addr416:
                                                                  loop47:
                                                                  while(true)
                                                                  {
                                                                     §§push(Boolean(_loc3_.§5Q§));
                                                                     loop48:
                                                                     while(!_loc11_)
                                                                     {
                                                                        if(_loc10_)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop());
                                                                              loop28:
                                                                              while(!_loc11_)
                                                                              {
                                                                                 if(!§§pop())
                                                                                 {
                                                                                    loop46:
                                                                                    while(true)
                                                                                    {
                                                                                       if(!§§pop())
                                                                                       {
                                                                                          continue loop8;
                                                                                       }
                                                                                       if(!_loc11_)
                                                                                       {
                                                                                          if(!(_loc11_ && _loc2_))
                                                                                          {
                                                                                             continue loop15;
                                                                                          }
                                                                                          continue loop47;
                                                                                       }
                                                                                       addr271:
                                                                                       if(_loc10_)
                                                                                       {
                                                                                          if(_loc11_)
                                                                                          {
                                                                                             continue loop19;
                                                                                          }
                                                                                          if(_loc10_)
                                                                                          {
                                                                                             if(true)
                                                                                             {
                                                                                                continue loop8;
                                                                                             }
                                                                                             loop40:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc7_);
                                                                                                addr281:
                                                                                                loop41:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc10_ || param1)
                                                                                                   {
                                                                                                      §§push(0);
                                                                                                      if(!_loc11_)
                                                                                                      {
                                                                                                         §§push(§§pop() < §§pop());
                                                                                                         if(!_loc11_)
                                                                                                         {
                                                                                                            if(!_loc11_)
                                                                                                            {
                                                                                                               §§push(§§pop());
                                                                                                               if(!(_loc11_ && param1))
                                                                                                               {
                                                                                                                  if(!_loc11_)
                                                                                                                  {
                                                                                                                     if(!_loc10_)
                                                                                                                     {
                                                                                                                        continue loop10;
                                                                                                                     }
                                                                                                                     if(!§§pop())
                                                                                                                     {
                                                                                                                        continue loop46;
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(!(_loc11_ && this))
                                                                                                                        {
                                                                                                                           continue loop9;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     continue loop9;
                                                                                                                     addr309:
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(§§pop())
                                                                                                                        {
                                                                                                                           loop35:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§pop();
                                                                                                                              addr386:
                                                                                                                              while(!(_loc11_ && _loc2_))
                                                                                                                              {
                                                                                                                                 §§push(_loc6_);
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() >= _loc3_.upperLimit);
                                                                                                                                    if(_loc10_ || this)
                                                                                                                                    {
                                                                                                                                       if(!_loc10_)
                                                                                                                                       {
                                                                                                                                          break;
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    addr350:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§pop();
                                                                                                                                       addr351:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          continue loop40;
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    continue loop41;
                                                                                                                                 }
                                                                                                                                 continue loop35;
                                                                                                                              }
                                                                                                                              continue loop23;
                                                                                                                           }
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop());
                                                                                                                           addr347:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(_loc11_)
                                                                                                                              {
                                                                                                                                 break loop41;
                                                                                                                              }
                                                                                                                              if(§§pop())
                                                                                                                              {
                                                                                                                                 continue loop46;
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr384:
                                                                                                                  }
                                                                                                                  §§goto(addr350);
                                                                                                               }
                                                                                                               §§goto(addr347);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§pop();
                                                                                                                  addr408:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc7_);
                                                                                                                     addr354:
                                                                                                                     while(!(_loc11_ && _loc3_))
                                                                                                                     {
                                                                                                                        if(_loc11_)
                                                                                                                        {
                                                                                                                           continue loop21;
                                                                                                                        }
                                                                                                                        if(!(_loc10_ || this))
                                                                                                                        {
                                                                                                                           continue loop18;
                                                                                                                        }
                                                                                                                        if(_loc11_)
                                                                                                                        {
                                                                                                                           continue loop17;
                                                                                                                        }
                                                                                                                        §§push(0);
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop() > §§pop());
                                                                                                                           addr374:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(!_loc11_)
                                                                                                                              {
                                                                                                                                 continue loop24;
                                                                                                                              }
                                                                                                                              continue loop48;
                                                                                                                           }
                                                                                                                           continue loop48;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     continue loop22;
                                                                                                                  }
                                                                                                               }
                                                                                                               addr407:
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr309);
                                                                                                      }
                                                                                                      §§goto(addr373);
                                                                                                   }
                                                                                                   §§goto(addr333);
                                                                                                }
                                                                                                continue loop28;
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr465);
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          while(!_loc11_)
                                                                                          {
                                                                                             if(!_loc11_)
                                                                                             {
                                                                                                if(_loc10_)
                                                                                                {
                                                                                                   §§push(_loc6_);
                                                                                                   if(!_loc11_)
                                                                                                   {
                                                                                                      if(!_loc11_)
                                                                                                      {
                                                                                                         §§push(§§pop() <= _loc3_.lowerLimit);
                                                                                                         if(_loc10_)
                                                                                                         {
                                                                                                            if(!(_loc11_ && this))
                                                                                                            {
                                                                                                               continue loop46;
                                                                                                            }
                                                                                                            §§goto(addr374);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr309);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr354);
                                                                                                   }
                                                                                                   §§goto(addr281);
                                                                                                }
                                                                                                §§goto(addr408);
                                                                                             }
                                                                                             §§goto(addr386);
                                                                                          }
                                                                                          §§goto(addr351);
                                                                                          addr324:
                                                                                       }
                                                                                       §§goto(addr386);
                                                                                    }
                                                                                    continue loop47;
                                                                                 }
                                                                                 §§goto(addr407);
                                                                              }
                                                                              continue loop25;
                                                                           }
                                                                           addr402:
                                                                        }
                                                                        §§goto(addr430);
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr402);
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
               §§goto(addr416);
            }
         }
         addr470:
         if(_loc10_)
         {
            break loop0;
         }
      }
      
      public function addExplosions(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || this)
         {
            this.§=! §.push(§1!T§.§%!J§(param1,param2,param3));
            do
            {
               §!!>§.playSound("TntExplosions","ChannelExplosions");
            }
            while(_loc5_);
            
         }
      }
      
      public function §0K§(param1:Number, param2:Number) : int
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:§+0§ = null;
         var _loc3_:* = int(this.§=U§.length - 1);
         while(true)
         {
            §§push(_loc3_);
            if(_loc6_)
            {
               if(§§pop() < 0)
               {
                  break;
               }
               if(_loc4_ = this.§=U§[_loc3_])
               {
                  if(!(_loc5_ && this))
                  {
                     if(_loc4_.isInCoordinates(param1,param2))
                     {
                        if(!(_loc6_ || _loc3_))
                        {
                           continue;
                        }
                        §§push(_loc3_);
                        if(!(_loc5_ && param2))
                        {
                           return §§pop();
                        }
                     }
                     else
                     {
                        addr81:
                        §§push(_loc3_);
                        if(!_loc5_)
                        {
                           §§push(§§pop() - 1);
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
      
      public function §5q§(param1:Number, param2:Number) : §+0§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:§+0§ = null;
         var _loc3_:* = int(this.§=U§.length - 1);
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§=U§[_loc3_])
            {
               if(_loc6_)
               {
                  continue;
               }
               if(_loc4_.isInCoordinates(param1,param2))
               {
                  if(_loc5_)
                  {
                     return _loc4_;
                  }
                  continue;
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
      
      public function §1T§(param1:int) : §+0§
      {
         return this.§=U§[param1];
      }
      
      public function §<!@§(param1:Number, param2:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:§+0§ = null;
         var _loc3_:* = int(this.§=U§.length - 1);
         while(_loc3_ >= 0)
         {
            (_loc4_ = this.§=U§[_loc3_] as §+0§).§<!@§(param2,param1);
            if(_loc5_)
            {
               §§push(_loc3_);
               if(_loc5_ || _loc3_)
               {
                  §§push(§§pop() - 1);
               }
               _loc3_ = §§pop();
            }
         }
      }
      
      private function §6&§(param1:§+0§, param2:Number) : Boolean
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:§+0§ = null;
         if(!(_loc8_ && _loc3_))
         {
            §§push(this.mSardineCanAdded);
            if(!(_loc8_ && this))
            {
               if(!§§pop())
               {
                  if(!_loc8_)
                  {
                     §§push(true);
                     if(_loc9_ || param1)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr61:
                     §§push(this.mMightyEagleAdded);
                     if(_loc9_)
                     {
                        if(§§pop())
                        {
                           if(!(_loc8_ && param1))
                           {
                              §§push(false);
                              if(_loc8_ && this)
                              {
                                 addr83:
                                 var _loc3_:* = §§pop();
                                 if(_loc9_)
                                 {
                                    §§push(param1.§,!&§);
                                    loop0:
                                    while(true)
                                    {
                                       §§push(param1.§+?§);
                                       loop1:
                                       while(true)
                                       {
                                          if(§§pop() != §§pop())
                                          {
                                             §§push(this.§7!1§);
                                             loop2:
                                             while(true)
                                             {
                                                §§push(0);
                                                addr539:
                                                while(true)
                                                {
                                                   if(§§pop() == §§pop())
                                                   {
                                                      while(true)
                                                      {
                                                         this.§7!1§ = this.§>`§.§#5§;
                                                         addr545:
                                                         while(true)
                                                         {
                                                         }
                                                      }
                                                      addr540:
                                                   }
                                                   addr525:
                                                   loop6:
                                                   while(true)
                                                   {
                                                      §§push(param1.§69§());
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
                                                                     addr532:
                                                                     loop56:
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§<^§(param1));
                                                                        addr505:
                                                                        while(true)
                                                                        {
                                                                           §§push(Boolean(§§pop()));
                                                                           if(_loc9_ || _loc3_)
                                                                           {
                                                                              loop11:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop());
                                                                                 loop12:
                                                                                 while(!(_loc8_ && param2))
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       loop44:
                                                                                       while(true)
                                                                                       {
                                                                                          loop45:
                                                                                          while(true)
                                                                                          {
                                                                                             if(§§pop())
                                                                                             {
                                                                                                loop46:
                                                                                                while(_loc9_)
                                                                                                {
                                                                                                   §§push(this.mMightyEagleTimer);
                                                                                                   if(_loc9_)
                                                                                                   {
                                                                                                      §§push(§!j§.§6e§);
                                                                                                      loop18:
                                                                                                      while(§§pop() < §§pop())
                                                                                                      {
                                                                                                         loop19:
                                                                                                         while(!(_loc8_ && param2))
                                                                                                         {
                                                                                                            §§push(this.mMightyEagleTimer);
                                                                                                            if(_loc9_)
                                                                                                            {
                                                                                                               §§push(param2);
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                  addr448:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                  }
                                                                                                                  addr252:
                                                                                                                  if(!(_loc9_ || param2))
                                                                                                                  {
                                                                                                                     continue;
                                                                                                                  }
                                                                                                                  if(§§pop() >= §§pop())
                                                                                                                  {
                                                                                                                     if(_loc9_ || _loc3_)
                                                                                                                     {
                                                                                                                        §§push(param1.§?!7§());
                                                                                                                        loop37:
                                                                                                                        for(; _loc9_; while(true)
                                                                                                                        {
                                                                                                                           §§push(param1.§?!7§());
                                                                                                                           if(_loc8_ && param2)
                                                                                                                           {
                                                                                                                              continue loop37;
                                                                                                                           }
                                                                                                                           §§goto(addr156);
                                                                                                                           §§goto(addr137);
                                                                                                                        },continue loop56)
                                                                                                                        {
                                                                                                                           §§push(§§pop().GetPosition());
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop().x);
                                                                                                                              if(!(_loc8_ && _loc3_))
                                                                                                                              {
                                                                                                                                 if(!_loc8_)
                                                                                                                                 {
                                                                                                                                    §§push(§!j§.§5e§);
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() - §§pop());
                                                                                                                                       if(_loc9_)
                                                                                                                                       {
                                                                                                                                          loop43:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                             addr288:
                                                                                                                                             loop40:
                                                                                                                                             while(!(_loc8_ && param1))
                                                                                                                                             {
                                                                                                                                                _loc5_ = §§pop();
                                                                                                                                                loop41:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(!_loc8_)
                                                                                                                                                   {
                                                                                                                                                      if(_loc9_ || this)
                                                                                                                                                      {
                                                                                                                                                         continue loop37;
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr540);
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      loop33:
                                                                                                                                                      while(!_loc8_)
                                                                                                                                                      {
                                                                                                                                                         §!!>§.playSound("Mighty_Eagle_Flying_1","ChannelBird");
                                                                                                                                                         loop34:
                                                                                                                                                         for(; _loc9_ || this; if(!(_loc9_ || this))
                                                                                                                                                         {
                                                                                                                                                            continue;
                                                                                                                                                         },if(_loc8_ && _loc3_)
                                                                                                                                                         {
                                                                                                                                                            continue loop56;
                                                                                                                                                         },if(false)
                                                                                                                                                         {
                                                                                                                                                            continue loop37;
                                                                                                                                                         },§§goto(addr591))
                                                                                                                                                         {
                                                                                                                                                            loop35:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc4_);
                                                                                                                                                               if(_loc9_ || _loc3_)
                                                                                                                                                               {
                                                                                                                                                                  if(!(_loc8_ && param1))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§!j§.§6e§);
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc8_)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc9_)
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr252);
                                                                                                                                                                           }
                                                                                                                                                                           else
                                                                                                                                                                           {
                                                                                                                                                                              loop25:
                                                                                                                                                                              while(!(_loc8_ && this))
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() < §§pop());
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop());
                                                                                                                                                                                    if(_loc9_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!_loc9_)
                                                                                                                                                                                       {
                                                                                                                                                                                          break;
                                                                                                                                                                                       }
                                                                                                                                                                                       if(§§pop())
                                                                                                                                                                                       {
                                                                                                                                                                                          addr492:
                                                                                                                                                                                          while(_loc9_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§pop();
                                                                                                                                                                                             while(_loc9_ || _loc3_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!(_loc8_ && this))
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc4_);
                                                                                                                                                                                                   break loop40;
                                                                                                                                                                                                }
                                                                                                                                                                                                continue loop46;
                                                                                                                                                                                             }
                                                                                                                                                                                             continue loop19;
                                                                                                                                                                                          }
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§pop();
                                                                                                                                                                                             addr493:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc9_ || param1)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(this.§>`§.§#5§);
                                                                                                                                                                                                   if(_loc8_ && _loc3_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      break loop35;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§push(this.§7!1§ + §!j§.§;,§);
                                                                                                                                                                                                   if(!(_loc9_ || _loc3_))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      break loop41;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§push(§§pop() > §§pop());
                                                                                                                                                                                                   continue loop44;
                                                                                                                                                                                                }
                                                                                                                                                                                                addr567:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(this.§!q§);
                                                                                                                                                                                                   addr569:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§!j§.§4!N§);
                                                                                                                                                                                                      break loop25;
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          addr492:
                                                                                                                                                                                          addr382:
                                                                                                                                                                                       }
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(§§pop())
                                                                                                                                                                                          {
                                                                                                                                                                                             break loop34;
                                                                                                                                                                                          }
                                                                                                                                                                                          continue loop35;
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    else
                                                                                                                                                                                    {
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!§§pop())
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop44;
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       addr491:
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr492);
                                                                                                                                                                                 }
                                                                                                                                                                                 continue loop12;
                                                                                                                                                                              }
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(§§pop() < §§pop())
                                                                                                                                                                                 {
                                                                                                                                                                                    break loop19;
                                                                                                                                                                                 }
                                                                                                                                                                                 addr551:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(param1.§?!7§());
                                                                                                                                                                                    break loop37;
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              addr368:
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        addr335:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc8_)
                                                                                                                                                                           {
                                                                                                                                                                              continue loop1;
                                                                                                                                                                           }
                                                                                                                                                                           §§push(§§pop() > §§pop());
                                                                                                                                                                           if(!(_loc9_ || this))
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr656);
                                                                                                                                                                           }
                                                                                                                                                                           if(_loc8_)
                                                                                                                                                                           {
                                                                                                                                                                              break;
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr347);
                                                                                                                                                                        }
                                                                                                                                                                        addr206:
                                                                                                                                                                        continue loop7;
                                                                                                                                                                        if(_loc8_ && param2)
                                                                                                                                                                        {
                                                                                                                                                                           continue;
                                                                                                                                                                        }
                                                                                                                                                                        if(_loc8_)
                                                                                                                                                                        {
                                                                                                                                                                           break loop41;
                                                                                                                                                                        }
                                                                                                                                                                        §§push(§§pop() - §§pop());
                                                                                                                                                                        if(!_loc8_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(Number(§§pop()));
                                                                                                                                                                        }
                                                                                                                                                                        if(_loc9_)
                                                                                                                                                                        {
                                                                                                                                                                           _loc6_ = §§pop();
                                                                                                                                                                           if(_loc9_ || param1)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(this.§<^§(param1));
                                                                                                                                                                              if(!_loc8_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc8_)
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop10;
                                                                                                                                                                                 }
                                                                                                                                                                                 if(_loc8_ && param2)
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop8;
                                                                                                                                                                                 }
                                                                                                                                                                                 if(§§pop())
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc8_)
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop34;
                                                                                                                                                                                    }
                                                                                                                                                                                    if(_loc8_)
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop41;
                                                                                                                                                                                    }
                                                                                                                                                                                    if(_loc9_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc9_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(true);
                                                                                                                                                                                          if(!_loc8_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!_loc8_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!_loc8_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!_loc8_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc9_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         _loc3_ = §§pop();
                                                                                                                                                                                                         if(!(_loc9_ || this))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            break loop18;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         continue loop34;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr523:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§pop();
                                                                                                                                                                                                         continue loop2;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      continue loop11;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   continue loop45;
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr376);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr382);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr656);
                                                                                                                                                                                       }
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc9_ || param1)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc8_)
                                                                                                                                                                                             {
                                                                                                                                                                                                break;
                                                                                                                                                                                             }
                                                                                                                                                                                             if(!_loc8_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(this.mMightyEagleTimer);
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§goto(addr368);
                                                                                                                                                                                                }
                                                                                                                                                                                                addr366:
                                                                                                                                                                                             }
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§goto(addr551);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr493);
                                                                                                                                                                                       }
                                                                                                                                                                                       continue loop2;
                                                                                                                                                                                       addr450:
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr385);
                                                                                                                                                                                 }
                                                                                                                                                                                 else
                                                                                                                                                                                 {
                                                                                                                                                                                    addr591:
                                                                                                                                                                                    §§push(this);
                                                                                                                                                                                    §§push("BIRD_MIGHTY_EAGLE");
                                                                                                                                                                                    §§push(_loc5_);
                                                                                                                                                                                    §§push(_loc6_);
                                                                                                                                                                                    §§push(§!j§.§^N§);
                                                                                                                                                                                    if(!(_loc8_ && param2))
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() * 1.2);
                                                                                                                                                                                    }
                                                                                                                                                                                    _loc7_ = §§pop().addObject(§§pop(),§§pop(),§§pop(),§§pop());
                                                                                                                                                                                    if(!(_loc8_ && param2))
                                                                                                                                                                                    {
                                                                                                                                                                                       this.mMightyEagleAdded = true;
                                                                                                                                                                                       addr626:
                                                                                                                                                                                       this.§7!1§ = 0;
                                                                                                                                                                                       if(_loc9_ || _loc3_)
                                                                                                                                                                                       {
                                                                                                                                                                                          _loc7_.§2P§.§%!H§(1.82);
                                                                                                                                                                                          if(!_loc8_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(false)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§goto(addr626);
                                                                                                                                                                                             }
                                                                                                                                                                                             break;
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr626);
                                                                                                                                                                                          addr637:
                                                                                                                                                                                       }
                                                                                                                                                                                       addr651:
                                                                                                                                                                                       §§goto(addr651);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr637);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr656);
                                                                                                                                                                           }
                                                                                                                                                                           break loop18;
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr366);
                                                                                                                                                                     }
                                                                                                                                                                     addr652:
                                                                                                                                                                     this.mMightyEagleTimer = _loc4_;
                                                                                                                                                                     break loop18;
                                                                                                                                                                  }
                                                                                                                                                                  break;
                                                                                                                                                               }
                                                                                                                                                               continue loop43;
                                                                                                                                                            }
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               _loc4_ = §§pop();
                                                                                                                                                               §§goto(addr450);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         while(_loc9_ || param1)
                                                                                                                                                         {
                                                                                                                                                            §!!>§.playSound("Mighty_Eagle_Selected_1","ChannelBird");
                                                                                                                                                            continue loop33;
                                                                                                                                                            §§goto(addr311);
                                                                                                                                                         }
                                                                                                                                                         addr311:
                                                                                                                                                         §§goto(addr545);
                                                                                                                                                      }
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         continue loop6;
                                                                                                                                                      }
                                                                                                                                                      addr550:
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr545);
                                                                                                                                                }
                                                                                                                                                continue loop18;
                                                                                                                                             }
                                                                                                                                             while(!_loc8_)
                                                                                                                                             {
                                                                                                                                                §§goto(addr335);
                                                                                                                                                §§push(§!j§.§#[§);
                                                                                                                                                §§goto(addr288);
                                                                                                                                             }
                                                                                                                                             §§goto(addr448);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr288);
                                                                                                                                       addr180:
                                                                                                                                       if(!(_loc9_ || param2))
                                                                                                                                       {
                                                                                                                                          continue;
                                                                                                                                       }
                                                                                                                                       §§push(§!j§.§=R§);
                                                                                                                                       if(_loc9_ || this)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                          if(!(_loc8_ && this))
                                                                                                                                          {
                                                                                                                                             addr205:
                                                                                                                                             §§push(§§pop() * 1.07);
                                                                                                                                          }
                                                                                                                                          §§goto(addr206);
                                                                                                                                       }
                                                                                                                                       §§goto(addr205);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr569);
                                                                                                                              }
                                                                                                                              §§goto(addr288);
                                                                                                                              addr156:
                                                                                                                              §§push(§§pop().GetPosition());
                                                                                                                              if(!(_loc9_ || _loc3_))
                                                                                                                              {
                                                                                                                                 continue;
                                                                                                                              }
                                                                                                                              §§push(§§pop().y);
                                                                                                                              if(!_loc8_)
                                                                                                                              {
                                                                                                                                 if(_loc9_ || param2)
                                                                                                                                 {
                                                                                                                                    if(_loc8_)
                                                                                                                                    {
                                                                                                                                       continue loop0;
                                                                                                                                    }
                                                                                                                                    §§push(§!j§.§5e§);
                                                                                                                                    if(_loc9_)
                                                                                                                                    {
                                                                                                                                       §§goto(addr180);
                                                                                                                                    }
                                                                                                                                    §§goto(addr206);
                                                                                                                                 }
                                                                                                                                 §§goto(addr288);
                                                                                                                              }
                                                                                                                              §§goto(addr219);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(param2);
                                                                                                                           if(!_loc8_)
                                                                                                                           {
                                                                                                                              §§push(§§pop() * this.§!q§);
                                                                                                                           }
                                                                                                                           §§pop().§4K§(§§pop());
                                                                                                                           break loop46;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     break loop18;
                                                                                                                  }
                                                                                                                  §§goto(addr652);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr449);
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(this);
                                                                                                            §§push(this.§!q§);
                                                                                                            if(!_loc8_)
                                                                                                            {
                                                                                                               §§push(param2);
                                                                                                               if(_loc9_ || param2)
                                                                                                               {
                                                                                                                  §§push(§§pop() * §!j§.§1J§);
                                                                                                               }
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                            }
                                                                                                            §§pop().§!q§ = §§pop();
                                                                                                            §§goto(addr590);
                                                                                                         }
                                                                                                      }
                                                                                                      addr655:
                                                                                                      addr656:
                                                                                                      return §§pop();
                                                                                                      §§push(_loc3_);
                                                                                                   }
                                                                                                   §§goto(addr448);
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   this.§7!1§ = 0;
                                                                                                   §§goto(addr550);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr655);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 continue loop9;
                                                                              }
                                                                              addr513:
                                                                           }
                                                                           §§goto(addr523);
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr513);
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr567);
                                       }
                                    }
                                 }
                                 §§goto(addr532);
                              }
                           }
                           else
                           {
                              addr82:
                              §§goto(addr83);
                              §§push(false);
                           }
                           §§goto(addr83);
                        }
                        §§goto(addr82);
                     }
                     §§goto(addr83);
                  }
                  return §§pop();
               }
               §§goto(addr61);
            }
            §§goto(addr83);
         }
         §§goto(addr82);
      }
      
      private function §#2§(param1:§+0§, param2:Number) : Boolean
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc5_:§+0§ = null;
         if(!(_loc8_ && _loc3_))
         {
            §§push(this.§`!8§);
            if(_loc9_ || param1)
            {
               §§push(!§§pop());
               loop0:
               while(true)
               {
                  if(!§§pop())
                  {
                     loop1:
                     while(§§pop())
                     {
                        loop2:
                        while(true)
                        {
                           this.§`!8§ = true;
                           addr72:
                           while(true)
                           {
                              this.§>`§.§,!0§();
                              if(!(_loc9_ || param1))
                              {
                                 continue;
                              }
                              if(!_loc9_)
                              {
                                 continue loop2;
                              }
                              if(_loc9_ || param2)
                              {
                                 if(true)
                                 {
                                    break loop1;
                                 }
                                 while(true)
                                 {
                                    §§push(this.mMightyEagleTimer);
                                    if(_loc8_)
                                    {
                                       break;
                                    }
                                    §§push(§§pop() > §!j§.§3O§);
                                    if(!_loc8_)
                                    {
                                       continue loop0;
                                    }
                                    addr85:
                                    addr85:
                                    while(true)
                                    {
                                       §§pop();
                                    }
                                 }
                                 var _loc3_:* = §§pop();
                                 if(_loc9_)
                                 {
                                    §§push(this);
                                    §§push(this.mMightyEagleTimer);
                                    if(!(_loc8_ && param1))
                                    {
                                       §§push(§§pop() + param2);
                                    }
                                    §§pop().mMightyEagleTimer = §§pop();
                                    if(_loc9_)
                                    {
                                       §§push(this.§>`§.particles);
                                       §§push(§7o§.§8!I§);
                                       §§push(§<2§.§]!X§);
                                       §§push(§7o§.§%u§);
                                       §§push(param1.§?!7§().GetPosition().x);
                                       if(!(_loc8_ && param2))
                                       {
                                          §§push(_loc3_);
                                          if(_loc9_ || param1)
                                          {
                                             §§push(§§pop() - §§pop());
                                             if(_loc9_ || _loc3_)
                                             {
                                                addr143:
                                                §§push(Math.random() * (_loc3_ * 2));
                                                if(!_loc8_)
                                                {
                                                   addr152:
                                                   §§push(§§pop() + §§pop());
                                                   §§push(param1.§?!7§().GetPosition().y);
                                                   if(_loc9_ || param2)
                                                   {
                                                      §§push(_loc3_);
                                                      if(_loc9_ || param2)
                                                      {
                                                         addr186:
                                                         §§push(§§pop() - §§pop());
                                                         if(_loc9_ || param1)
                                                         {
                                                            addr179:
                                                            §§push(Math.random() * (_loc3_ * 2));
                                                         }
                                                         §§pop().addParticle(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),3500,"",§7o§.§3E§(param1.§2!1§),0,0,1,0,4);
                                                         var _loc4_:* = 1;
                                                         if(!(_loc8_ && this))
                                                         {
                                                            §§push(this.mMightyEagleHasTouchedGround);
                                                            loop7:
                                                            while(true)
                                                            {
                                                               if(!§§pop())
                                                               {
                                                                  this.mMightyEagleHasTouchedGround = param1.§?!7§().GetPosition().y >= -5.5;
                                                                  break;
                                                               }
                                                               loop8:
                                                               while(true)
                                                               {
                                                                  §§push(param1);
                                                                  §§push(§!j§.§[C§);
                                                                  if(!_loc8_)
                                                                  {
                                                                     §§push(§§pop() * param2);
                                                                  }
                                                                  §§pop().§!_§(§§pop());
                                                                  loop9:
                                                                  while(true)
                                                                  {
                                                                     §§push(-1);
                                                                     if(_loc8_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     _loc4_ = §§pop();
                                                                     continue loop7;
                                                                     addr242:
                                                                     if(!(_loc9_ || param2))
                                                                     {
                                                                        continue;
                                                                     }
                                                                     §§push(param1.§2P§);
                                                                     if(_loc9_ || this)
                                                                     {
                                                                        §§pop().§+!4§();
                                                                        if(_loc9_ || param1)
                                                                        {
                                                                           addr226:
                                                                           if(_loc9_ || param1)
                                                                           {
                                                                              if(false)
                                                                              {
                                                                                 loop19:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(param1.§2P§);
                                                                                    addr238:
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop().§;!D§ = true;
                                                                                       addr240:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!_loc8_)
                                                                                          {
                                                                                             §§goto(addr242);
                                                                                          }
                                                                                          loop18:
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc9_ || param1)
                                                                                             {
                                                                                                if(!_loc9_)
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                if(!_loc8_)
                                                                                                {
                                                                                                   continue loop19;
                                                                                                }
                                                                                                continue loop8;
                                                                                             }
                                                                                             addr271:
                                                                                             while(true)
                                                                                             {
                                                                                                this.mSardineCanAdded = false;
                                                                                                continue loop18;
                                                                                             }
                                                                                          }
                                                                                          addr276:
                                                                                          addr300:
                                                                                          loop11:
                                                                                          for(; _loc9_; §§goto(addr276))
                                                                                          {
                                                                                             this.§2@§ = false;
                                                                                             while(true)
                                                                                             {
                                                                                                this.§>`§.§<H§();
                                                                                                continue loop11;
                                                                                                §§goto(addr226);
                                                                                             }
                                                                                          }
                                                                                          while(_loc9_ || param2)
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                param1.§ !=§(§!A§.§5V§);
                                                                                                §§goto(addr271);
                                                                                             }
                                                                                          }
                                                                                          continue loop7;
                                                                                       }
                                                                                       continue loop9;
                                                                                    }
                                                                                 }
                                                                              }
                                                                              break;
                                                                           }
                                                                           §§goto(addr305);
                                                                        }
                                                                        §§goto(addr240);
                                                                     }
                                                                     §§goto(addr238);
                                                                  }
                                                                  var _loc6_:* = §§pop();
                                                                  var _loc7_:* = this.§=U§;
                                                                  addr386:
                                                                  §§push(§§hasnext(_loc7_,_loc6_));
                                                                  if(!(_loc8_ && _loc3_))
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        _loc5_ = §§nextvalue(_loc6_,_loc7_);
                                                                        §§push(Boolean(_loc5_));
                                                                        if(!(_loc8_ && param1))
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              if(_loc9_)
                                                                              {
                                                                                 §§pop();
                                                                                 if(_loc9_)
                                                                                 {
                                                                                    §§push(_loc5_.§'D§());
                                                                                    if(!(_loc8_ && param2))
                                                                                    {
                                                                                       addr363:
                                                                                       if(§§pop())
                                                                                       {
                                                                                          if(!_loc8_)
                                                                                          {
                                                                                             §§push(_loc5_.§?!7§());
                                                                                             if(_loc9_ || _loc3_)
                                                                                             {
                                                                                                §§pop().SetAwake(true);
                                                                                                if(_loc9_)
                                                                                                {
                                                                                                   addr379:
                                                                                                   §§push(_loc5_.§?!7§());
                                                                                                }
                                                                                                §§goto(addr386);
                                                                                             }
                                                                                             §§pop().SetLinearVelocity(new b2Vec2(0,-18));
                                                                                             §§goto(addr386);
                                                                                          }
                                                                                          §§goto(addr379);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr363);
                                                                                 }
                                                                                 §§goto(addr386);
                                                                              }
                                                                              §§goto(addr363);
                                                                           }
                                                                        }
                                                                        §§goto(addr363);
                                                                     }
                                                                     if(_loc9_)
                                                                     {
                                                                        if(_loc9_)
                                                                        {
                                                                           if(_loc9_ || this)
                                                                           {
                                                                              this.§#!X§();
                                                                              if(_loc9_ || this)
                                                                              {
                                                                                 addr417:
                                                                                 §§push(this.mMightyEagleTimer > 6000);
                                                                                 if(!(_loc8_ && param1))
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       if(_loc9_ || param1)
                                                                                       {
                                                                                          addr437:
                                                                                          §§pop();
                                                                                          if(_loc9_ || param1)
                                                                                          {
                                                                                             §§push(this.isPigsAlive());
                                                                                             if(_loc9_)
                                                                                             {
                                                                                                §§push(Boolean(§§pop()));
                                                                                                if(_loc9_)
                                                                                                {
                                                                                                   addr452:
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      if(!_loc8_)
                                                                                                      {
                                                                                                         addr455:
                                                                                                         _loc6_ = 0;
                                                                                                         if(_loc9_)
                                                                                                         {
                                                                                                            _loc7_ = this.§=U§;
                                                                                                            addr520:
                                                                                                            for each(_loc5_ in _loc7_)
                                                                                                            {
                                                                                                               §§push(Boolean(_loc5_));
                                                                                                               if(_loc9_ || param1)
                                                                                                               {
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     if(_loc9_)
                                                                                                                     {
                                                                                                                        addr483:
                                                                                                                        §§pop();
                                                                                                                        if(_loc9_ || _loc3_)
                                                                                                                        {
                                                                                                                           §§push(_loc5_.§'D§());
                                                                                                                           if(!(_loc8_ && _loc3_))
                                                                                                                           {
                                                                                                                              addr501:
                                                                                                                              if(§§pop())
                                                                                                                              {
                                                                                                                                 if(!_loc8_)
                                                                                                                                 {
                                                                                                                                    addr504:
                                                                                                                                    §§push(_loc5_);
                                                                                                                                    §§push(_loc5_.§+?§);
                                                                                                                                    if(_loc9_ || _loc3_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() * 2);
                                                                                                                                    }
                                                                                                                                    §§pop().applyDamage(§§pop(),true,true,true);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr520);
                                                                                                                           }
                                                                                                                           §§goto(addr501);
                                                                                                                        }
                                                                                                                        §§goto(addr504);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr501);
                                                                                                               }
                                                                                                               §§goto(addr483);
                                                                                                            }
                                                                                                            addr523:
                                                                                                            if(!(_loc8_ && this))
                                                                                                            {
                                                                                                               addr537:
                                                                                                               param1.§>!^§(param2,new Point(1,_loc4_ * §!j§.§=R§),§!j§.§+%§);
                                                                                                               if(_loc8_)
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(!(_loc9_ || _loc3_))
                                                                                                                     {
                                                                                                                        addr565:
                                                                                                                        break loop7;
                                                                                                                     }
                                                                                                                     §§goto(addr537);
                                                                                                                  }
                                                                                                                  addr558:
                                                                                                               }
                                                                                                               addr534:
                                                                                                               return false;
                                                                                                               addr566:
                                                                                                            }
                                                                                                            §§goto(addr565);
                                                                                                            addr522:
                                                                                                         }
                                                                                                         §§goto(addr523);
                                                                                                      }
                                                                                                      break loop7;
                                                                                                   }
                                                                                                   §§goto(addr566);
                                                                                                }
                                                                                                §§goto(addr534);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr455);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr452);
                                                                                 }
                                                                                 §§goto(addr437);
                                                                              }
                                                                              §§goto(addr455);
                                                                           }
                                                                           break loop7;
                                                                        }
                                                                        §§goto(addr523);
                                                                     }
                                                                     §§goto(addr522);
                                                                  }
                                                                  §§goto(addr520);
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               this.§2@§ = this.mMightyEagleHasTouchedGround;
                                                               §§goto(addr558);
                                                            }
                                                         }
                                                         §§goto(addr283);
                                                      }
                                                      §§goto(addr186);
                                                      §§push(§§pop() + §§pop());
                                                   }
                                                   §§goto(addr179);
                                                }
                                                §§goto(addr186);
                                             }
                                          }
                                          §§goto(addr152);
                                       }
                                       §§goto(addr143);
                                    }
                                 }
                                 §§goto(addr186);
                                 addr50:
                              }
                              while(true)
                              {
                                 §§goto(addr50);
                                 §§goto(addr85);
                              }
                           }
                        }
                     }
                     §§goto(addr89);
                     §§push(Number(3));
                     addr67:
                  }
               }
            }
            §§goto(addr85);
         }
         §§goto(addr72);
      }
      
      private function §"a§() : void
      {
         var _loc20_:Boolean = true;
         var _loc21_:Boolean = false;
         var _loc1_:§1!T§ = null;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc6_:§+0§ = null;
         var _loc7_:* = 0;
         var _loc8_:* = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:* = NaN;
         var _loc14_:* = NaN;
         var _loc15_:* = NaN;
         var _loc16_:* = NaN;
         var _loc17_:* = NaN;
         loop0:
         while(this.§=! §.length > 0)
         {
            _loc1_ = this.§=! §.shift();
            if(!_loc21_)
            {
               §§push(_loc1_.§0k§);
               if(!(_loc21_ && this))
               {
                  §§push(Number(§§pop()));
                  if(!(_loc21_ && _loc1_))
                  {
                     _loc2_ = §§pop();
                     if(_loc20_)
                     {
                        §§push(_loc1_.x);
                        if(_loc20_)
                        {
                           §§push(Number(§§pop()));
                           loop1:
                           while(true)
                           {
                              _loc3_ = §§pop();
                              if(!(_loc21_ && _loc2_))
                              {
                                 loop2:
                                 while(true)
                                 {
                                    §§push(_loc1_.y);
                                    loop3:
                                    while(true)
                                    {
                                       if(!_loc21_)
                                       {
                                          §§push(Number(§§pop()));
                                          if(!(_loc21_ && this))
                                          {
                                             _loc4_ = §§pop();
                                             if(!_loc21_)
                                             {
                                                §§push(_loc1_.damage);
                                                if(!_loc21_)
                                                {
                                                   if(_loc21_)
                                                   {
                                                      continue;
                                                   }
                                                   §§push(Number(§§pop()));
                                                   if(_loc20_ || _loc2_)
                                                   {
                                                      _loc5_ = §§pop();
                                                      if(_loc20_)
                                                      {
                                                         if(false)
                                                         {
                                                            continue loop2;
                                                         }
                                                         §§push(0);
                                                         if(_loc20_)
                                                         {
                                                            var _loc18_:* = §§pop();
                                                            if(!(_loc21_ && _loc2_))
                                                            {
                                                               var _loc19_:* = this.§=U§;
                                                               addr518:
                                                               for each(_loc6_ in _loc19_)
                                                               {
                                                                  §§push(_loc6_.§?!7§());
                                                                  if(!(_loc21_ && _loc3_))
                                                                  {
                                                                     §§push(§§pop().GetPosition());
                                                                     if(_loc20_ || _loc2_)
                                                                     {
                                                                        §§push(§§pop().x);
                                                                        if(_loc20_ || _loc2_)
                                                                        {
                                                                           §§push(_loc3_);
                                                                           if(_loc20_ || _loc1_)
                                                                           {
                                                                              §§push(§§pop() - §§pop());
                                                                              if(!(_loc21_ && _loc3_))
                                                                              {
                                                                                 §§push(Number(§§pop()));
                                                                                 if(_loc20_)
                                                                                 {
                                                                                    _loc8_ = §§pop();
                                                                                    if(_loc20_)
                                                                                    {
                                                                                       addr516:
                                                                                       _loc9_ = _loc6_.§?!7§().GetPosition().y - _loc4_;
                                                                                       §§push(Number(Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_)));
                                                                                       §§push(Number(Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_)));
                                                                                       if(_loc20_)
                                                                                       {
                                                                                          _loc10_ = §§pop();
                                                                                          addr492:
                                                                                          §§push(_loc1_.§0k§);
                                                                                       }
                                                                                       addr515:
                                                                                       addr511:
                                                                                       addr514:
                                                                                       addr517:
                                                                                       addr513:
                                                                                       if(§§pop() <= §§pop())
                                                                                       {
                                                                                          addr498:
                                                                                          §§push(Number(_loc1_.push));
                                                                                          if(_loc20_ || _loc1_)
                                                                                          {
                                                                                             _loc11_ = §§pop();
                                                                                             addr506:
                                                                                             if(_loc20_)
                                                                                             {
                                                                                                addr467:
                                                                                                if(_loc10_ > 1)
                                                                                                {
                                                                                                   addr469:
                                                                                                   §§push(_loc11_);
                                                                                                   §§push(_loc10_);
                                                                                                   if(_loc20_)
                                                                                                   {
                                                                                                      addr475:
                                                                                                      _loc11_ = Number(§§pop() / §§pop());
                                                                                                      addr474:
                                                                                                      addr476:
                                                                                                      §§push(_loc10_);
                                                                                                      if(!(_loc21_ && _loc3_))
                                                                                                      {
                                                                                                         if(_loc20_)
                                                                                                         {
                                                                                                            addr438:
                                                                                                            §§push(0);
                                                                                                            if(_loc20_ || _loc3_)
                                                                                                            {
                                                                                                               if(§§pop() > §§pop())
                                                                                                               {
                                                                                                                  addr446:
                                                                                                                  §§push(_loc11_);
                                                                                                                  if(_loc20_)
                                                                                                                  {
                                                                                                                     addr450:
                                                                                                                     §§push(_loc8_ / _loc10_);
                                                                                                                     if(!_loc21_)
                                                                                                                     {
                                                                                                                        addr456:
                                                                                                                        _loc12_ = §§pop() * §§pop();
                                                                                                                        addr457:
                                                                                                                        addr455:
                                                                                                                        if(_loc20_ || _loc3_)
                                                                                                                        {
                                                                                                                           addr383:
                                                                                                                           §§push(_loc11_);
                                                                                                                           §§push(_loc9_);
                                                                                                                           §§push(_loc10_);
                                                                                                                           if(!_loc21_)
                                                                                                                           {
                                                                                                                              addr398:
                                                                                                                              §§push(§§pop() / §§pop());
                                                                                                                              if(!_loc21_)
                                                                                                                              {
                                                                                                                                 addr401:
                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                 if(!(_loc21_ && _loc1_))
                                                                                                                                 {
                                                                                                                                    if(!_loc21_)
                                                                                                                                    {
                                                                                                                                       addr411:
                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                       if(_loc20_)
                                                                                                                                       {
                                                                                                                                          if(_loc20_)
                                                                                                                                          {
                                                                                                                                             _loc13_ = §§pop();
                                                                                                                                             addr416:
                                                                                                                                             if(!(_loc21_ && this))
                                                                                                                                             {
                                                                                                                                                if(!_loc21_)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc6_.§?!7§());
                                                                                                                                                   if(_loc20_)
                                                                                                                                                   {
                                                                                                                                                      addr364:
                                                                                                                                                      §§pop().ApplyImpulse(new b2Vec2(_loc12_,_loc13_),new b2Vec2(_loc3_,_loc4_));
                                                                                                                                                      addr373:
                                                                                                                                                      if(_loc20_ || _loc1_)
                                                                                                                                                      {
                                                                                                                                                         addr326:
                                                                                                                                                         §§push(_loc10_);
                                                                                                                                                         if(_loc20_)
                                                                                                                                                         {
                                                                                                                                                            if(!_loc21_)
                                                                                                                                                            {
                                                                                                                                                               if(!_loc21_)
                                                                                                                                                               {
                                                                                                                                                                  addr334:
                                                                                                                                                                  §§push(_loc1_.§<!&§);
                                                                                                                                                                  if(_loc20_)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc20_)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc20_ || _loc1_)
                                                                                                                                                                        {
                                                                                                                                                                           if(§§pop() <= §§pop())
                                                                                                                                                                           {
                                                                                                                                                                              addr346:
                                                                                                                                                                              if(!(_loc21_ && this))
                                                                                                                                                                              {
                                                                                                                                                                                 if(!_loc21_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr357:
                                                                                                                                                                                    _loc14_ = Number(_loc5_);
                                                                                                                                                                                    addr224:
                                                                                                                                                                                    addr358:
                                                                                                                                                                                    addr356:
                                                                                                                                                                                    §§push(_loc10_);
                                                                                                                                                                                    if(_loc20_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc20_ || this)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!_loc21_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!(_loc21_ && _loc3_))
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!_loc21_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(1);
                                                                                                                                                                                                   if(!_loc21_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(§§pop() > §§pop())
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!_loc21_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!_loc21_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr254:
                                                                                                                                                                                                               §§push(_loc14_);
                                                                                                                                                                                                               if(_loc20_ || _loc3_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc20_ || _loc3_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(_loc10_);
                                                                                                                                                                                                                     if(_loc20_ || _loc3_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc20_ || _loc2_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(§§pop() / §§pop());
                                                                                                                                                                                                                           if(!(_loc21_ && _loc1_))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr292:
                                                                                                                                                                                                                              if(_loc20_ || _loc3_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!_loc21_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr302:
                                                                                                                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                                                                                                                    if(_loc20_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(_loc20_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(_loc20_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             _loc14_ = §§pop();
                                                                                                                                                                                                                                             addr309:
                                                                                                                                                                                                                                             if(_loc20_ || _loc2_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(!(_loc21_ && _loc2_))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr205:
                                                                                                                                                                                                                                                   _loc6_.applyDamage(_loc14_,false,false,false,true);
                                                                                                                                                                                                                                                   if(_loc20_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(_loc20_ || _loc3_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(false)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§goto(addr224);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr518);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr446);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr309);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr457);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr358);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr475);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr383);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr401);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr515);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr475);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr302);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr383);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr334);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr498);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr302);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr346);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr309);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr205);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr438);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr498);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr326);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr356);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr357);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr292);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr416);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr373);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr518);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr450);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr398);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr474);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr446);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr411);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr476);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr511);
                                                                                                                                                }
                                                                                                                                                §§goto(addr498);
                                                                                                                                             }
                                                                                                                                             §§goto(addr469);
                                                                                                                                          }
                                                                                                                                          §§goto(addr467);
                                                                                                                                       }
                                                                                                                                       §§goto(addr456);
                                                                                                                                    }
                                                                                                                                    §§goto(addr516);
                                                                                                                                 }
                                                                                                                                 §§goto(addr455);
                                                                                                                              }
                                                                                                                              §§goto(addr469);
                                                                                                                           }
                                                                                                                           §§goto(addr450);
                                                                                                                        }
                                                                                                                        §§goto(addr506);
                                                                                                                        addr454:
                                                                                                                     }
                                                                                                                     §§goto(addr516);
                                                                                                                  }
                                                                                                                  §§goto(addr492);
                                                                                                               }
                                                                                                               §§goto(addr326);
                                                                                                            }
                                                                                                            §§goto(addr467);
                                                                                                         }
                                                                                                         §§goto(addr516);
                                                                                                      }
                                                                                                      §§goto(addr469);
                                                                                                   }
                                                                                                   §§goto(addr514);
                                                                                                }
                                                                                                §§goto(addr475);
                                                                                             }
                                                                                             §§goto(addr517);
                                                                                          }
                                                                                          §§goto(addr513);
                                                                                       }
                                                                                       §§goto(addr326);
                                                                                       addr512:
                                                                                    }
                                                                                    §§goto(addr254);
                                                                                 }
                                                                                 §§goto(addr456);
                                                                              }
                                                                              §§goto(addr450);
                                                                           }
                                                                           §§goto(addr454);
                                                                        }
                                                                        §§goto(addr357);
                                                                     }
                                                                     §§goto(addr512);
                                                                  }
                                                                  §§goto(addr364);
                                                               }
                                                            }
                                                            if(!(_loc21_ && _loc2_))
                                                            {
                                                               §§push(this.§>`§);
                                                               while(true)
                                                               {
                                                                  §§push(§§pop().particles);
                                                                  addr748:
                                                                  while(true)
                                                                  {
                                                                     §§push(this.getMainExplosionCoreName(_loc1_.type));
                                                                     addr752:
                                                                     while(true)
                                                                     {
                                                                        §§push(§<2§.§]!X§);
                                                                        addr754:
                                                                        while(true)
                                                                        {
                                                                           §§push(§7o§.§&!'§);
                                                                           addr756:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc3_);
                                                                              addr757:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc4_);
                                                                                 addr758:
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop().addParticle(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),600,"",§7o§.§?2§,0,0,0,0,1,20,true);
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               addr747:
                                                               addr529:
                                                            }
                                                            loop9:
                                                            while(true)
                                                            {
                                                               §§push(30);
                                                               addr741:
                                                               while(true)
                                                               {
                                                                  _loc7_ = §§pop();
                                                                  if(_loc21_)
                                                                  {
                                                                     break loop9;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc7_);
                                                                     addr782:
                                                                     while(true)
                                                                     {
                                                                        §§push(150);
                                                                        addr783:
                                                                        while(true)
                                                                        {
                                                                           if(§§pop() >= §§pop())
                                                                           {
                                                                              break loop9;
                                                                           }
                                                                           §§push(0.75);
                                                                           if(_loc20_)
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc2_);
                                                                                 if(!_loc21_)
                                                                                 {
                                                                                    addr734:
                                                                                    §§push(§§pop() * §§pop());
                                                                                    if(_loc20_)
                                                                                    {
                                                                                       break loop3;
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(Number(§§pop()));
                                                                                       addr735:
                                                                                       while(true)
                                                                                       {
                                                                                          _loc15_ = §§pop();
                                                                                          addr736:
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc21_)
                                                                                             {
                                                                                                continue loop9;
                                                                                             }
                                                                                             §§push(1250);
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(Math.random() * 750);
                                                                                                addr706:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                   addr707:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(Number(§§pop()));
                                                                                                      addr708:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         _loc16_ = §§pop();
                                                                                                         if(_loc20_ || _loc1_)
                                                                                                         {
                                                                                                            break loop1;
                                                                                                         }
                                                                                                         break loop9;
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    addr734:
                                                                                 }
                                                                                 addr733:
                                                                                 while(true)
                                                                                 {
                                                                                    §§goto(addr734);
                                                                                 }
                                                                              }
                                                                              addr723:
                                                                           }
                                                                           break loop3;
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            continue loop0;
                                                            addr770:
                                                         }
                                                         addr677:
                                                         §§push(180);
                                                         loop6:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() / Math.PI);
                                                            if(_loc20_)
                                                            {
                                                               §§push(§§pop() / §§pop());
                                                               if(!(_loc21_ && this))
                                                               {
                                                                  if(_loc20_)
                                                                  {
                                                                     addr693:
                                                                     §§push(Number(§§pop()));
                                                                     loop7:
                                                                     while(!_loc21_)
                                                                     {
                                                                        _loc17_ = §§pop();
                                                                        if(!_loc20_)
                                                                        {
                                                                           continue loop0;
                                                                        }
                                                                        loop8:
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§>`§);
                                                                           if(_loc20_ || _loc3_)
                                                                           {
                                                                              §§push(§§pop().particles);
                                                                              if(!_loc20_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              §§push(§7o§.§0V§);
                                                                              if(!(_loc21_ && this))
                                                                              {
                                                                                 §§push(§<2§.§]!X§);
                                                                                 if(!(_loc21_ && _loc2_))
                                                                                 {
                                                                                    §§push(§7o§.§%u§);
                                                                                    if(_loc20_ || _loc1_)
                                                                                    {
                                                                                       §§push(_loc3_);
                                                                                       if(_loc20_ || _loc1_)
                                                                                       {
                                                                                          §§push(_loc4_);
                                                                                          if(!(_loc21_ && _loc2_))
                                                                                          {
                                                                                             §§push(_loc16_);
                                                                                             §§push("");
                                                                                             §§push(§7o§.§?2§);
                                                                                             §§push(_loc15_);
                                                                                             if(_loc20_ || _loc1_)
                                                                                             {
                                                                                                §§push(§§pop() * Math.cos(_loc17_));
                                                                                             }
                                                                                             §§push(_loc15_);
                                                                                             if(!(_loc21_ && this))
                                                                                             {
                                                                                                §§push(-§§pop());
                                                                                                if(_loc20_)
                                                                                                {
                                                                                                   §§push(§§pop() * Math.sin(_loc17_));
                                                                                                }
                                                                                             }
                                                                                             §§pop().addParticle(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),20,0);
                                                                                             if(_loc21_)
                                                                                             {
                                                                                                continue loop0;
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc7_);
                                                                                                if(!_loc21_)
                                                                                                {
                                                                                                   if(_loc20_)
                                                                                                   {
                                                                                                      if(!(_loc21_ && _loc1_))
                                                                                                      {
                                                                                                         §§push(5);
                                                                                                         if(_loc20_ || _loc3_)
                                                                                                         {
                                                                                                            if(_loc21_)
                                                                                                            {
                                                                                                               continue loop6;
                                                                                                            }
                                                                                                            §§push(§§pop() + §§pop());
                                                                                                            if(!_loc20_)
                                                                                                            {
                                                                                                               continue loop7;
                                                                                                            }
                                                                                                            if(_loc20_ || _loc1_)
                                                                                                            {
                                                                                                               if(_loc20_)
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(int(§§pop()));
                                                                                                                     if(_loc20_)
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           _loc7_ = §§pop();
                                                                                                                           if(_loc21_)
                                                                                                                           {
                                                                                                                              continue loop0;
                                                                                                                           }
                                                                                                                           if(_loc20_)
                                                                                                                           {
                                                                                                                              if(false)
                                                                                                                              {
                                                                                                                                 continue loop8;
                                                                                                                              }
                                                                                                                              §§goto(addr781);
                                                                                                                           }
                                                                                                                           §§goto(addr736);
                                                                                                                        }
                                                                                                                        addr568:
                                                                                                                     }
                                                                                                                     §§goto(addr782);
                                                                                                                  }
                                                                                                                  addr565:
                                                                                                               }
                                                                                                               §§goto(addr707);
                                                                                                            }
                                                                                                            §§goto(addr708);
                                                                                                         }
                                                                                                         §§goto(addr783);
                                                                                                      }
                                                                                                      §§goto(addr741);
                                                                                                   }
                                                                                                   while(!(_loc21_ && this))
                                                                                                   {
                                                                                                      §§goto(addr677);
                                                                                                   }
                                                                                                   §§goto(addr702);
                                                                                                   addr670:
                                                                                                }
                                                                                                §§goto(addr568);
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr758);
                                                                                          }
                                                                                          §§goto(addr770);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr757);
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr756);
                                                                                    }
                                                                                    §§goto(addr757);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr754);
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr752);
                                                                              }
                                                                              §§goto(addr754);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr747);
                                                                           }
                                                                        }
                                                                        §§goto(addr748);
                                                                     }
                                                                     §§goto(addr735);
                                                                     addr694:
                                                                  }
                                                                  §§goto(addr734);
                                                               }
                                                               §§goto(addr694);
                                                            }
                                                            break;
                                                         }
                                                         §§goto(addr706);
                                                      }
                                                      §§goto(addr738);
                                                   }
                                                   §§goto(addr693);
                                                }
                                                §§goto(addr708);
                                             }
                                             break loop1;
                                          }
                                          break;
                                       }
                                       continue loop1;
                                    }
                                    addr729:
                                    while(true)
                                    {
                                       §§goto(addr733);
                                    }
                                 }
                              }
                              break;
                           }
                           while(true)
                           {
                              §§goto(addr670);
                              §§goto(addr708);
                           }
                        }
                        §§goto(addr729);
                     }
                     §§goto(addr667);
                  }
                  §§goto(addr565);
               }
               §§goto(addr723);
            }
            §§goto(addr529);
         }
      }
      
      protected function getMainExplosionCoreName(param1:int) : String
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
         return §7o§.§40§;
      }
      
      public function §3!B§(param1:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:§+0§ = null;
         var _loc3_:* = int(this.§=U§.length - 1);
         loop0:
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§=U§[_loc3_];
            if(!(_loc4_ && this))
            {
               §§push(_loc2_.§>1§());
               loop1:
               while(true)
               {
                  if(!§§pop())
                  {
                     §§push(_loc2_.§@m§());
                     loop2:
                     while(!§§pop())
                     {
                        §§push(this.§<^§(_loc2_));
                        loop3:
                        for(; !§§pop(); if(_loc4_ && _loc2_)
                        {
                           continue;
                        },if(_loc4_)
                        {
                           continue loop2;
                        },if(!_loc4_)
                        {
                           continue loop1;
                        },addr214:,while(true)
                        {
                           if(§§pop())
                           {
                              §§goto(addr215);
                           }
                           §§goto(addr189);
                        })
                        {
                           §§push(_loc2_.isReadyToBeRemoved(param1));
                           while(!§§pop())
                           {
                              §§push(_loc2_.§>!K§());
                              if(!_loc4_)
                              {
                                 continue loop3;
                              }
                           }
                           while(true)
                           {
                              if(_loc5_)
                              {
                                 if(!_loc5_)
                                 {
                                    break loop3;
                                 }
                                 if(_loc4_ && _loc2_)
                                 {
                                    break loop1;
                                 }
                                 _loc2_.§ !=§(§!A§.§!!X§);
                                 loop9:
                                 while(true)
                                 {
                                    this.removeObjectWithIndex(_loc3_,false,true,true);
                                    loop10:
                                    while(true)
                                    {
                                       if(!(_loc4_ && _loc3_))
                                       {
                                          while(true)
                                          {
                                          }
                                          addr64:
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             this.removeObjectWithIndex(_loc3_,false,false,false);
                                             addr231:
                                             while(true)
                                             {
                                                addr189:
                                                while(true)
                                                {
                                                }
                                             }
                                             continue loop10;
                                          }
                                          addr215:
                                       }
                                       addr42:
                                       loop12:
                                       while(true)
                                       {
                                          §§push(_loc3_);
                                          if(!_loc4_)
                                          {
                                             §§push(§§pop() - 1);
                                          }
                                          _loc3_ = §§pop();
                                          if(!(_loc4_ && param1))
                                          {
                                             if(_loc4_ && _loc3_)
                                             {
                                                continue loop10;
                                             }
                                             if(true)
                                             {
                                                break;
                                             }
                                             §§goto(addr64);
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                if(_loc5_)
                                                {
                                                   continue loop12;
                                                }
                                                continue loop9;
                                             }
                                             addr126:
                                          }
                                       }
                                       continue loop0;
                                    }
                                 }
                              }
                              loop14:
                              while(!_loc5_)
                              {
                                 while(true)
                                 {
                                    this.removeObjectWithIndex(_loc3_,false,false,false);
                                    continue loop14;
                                 }
                              }
                              §§goto(addr42);
                              if(!(_loc5_ || _loc3_))
                              {
                                 continue;
                              }
                              if(_loc5_ || _loc2_)
                              {
                                 if(_loc5_)
                                 {
                                    while(true)
                                    {
                                       _loc2_.update(param1);
                                       §§goto(addr126);
                                    }
                                    addr123:
                                 }
                                 break loop2;
                              }
                              while(true)
                              {
                                 §§goto(addr42);
                              }
                           }
                        }
                        while(true)
                        {
                           _loc2_.§ !=§(§!A§.§!!X§);
                           §§goto(addr188);
                        }
                     }
                     while(true)
                     {
                        if(_loc5_ || this)
                        {
                           this.§#2§(_loc2_,param1);
                           §§goto(addr206);
                        }
                        §§goto(addr231);
                     }
                  }
                  break;
                  if(!(_loc5_ || _loc2_))
                  {
                     continue;
                  }
                  if(§§pop())
                  {
                     §§goto(addr90);
                  }
                  §§goto(addr42);
               }
               while(true)
               {
                  §§goto(addr214);
               }
            }
            §§goto(addr123);
         }
         if(!_loc4_)
         {
            this.§"a§();
         }
      }
      
      private function §#!X§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§8U§ = null;
         for each(_loc1_ in this.§[%§)
         {
            if(!_loc5_)
            {
               this.§>`§.mLevelEngine.mWorld.§>A§(_loc1_.§2B§);
            }
         }
      }
      
      public function §&e§() : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§+0§ = null;
         var _loc1_:int = 0;
         while(true)
         {
            if(_loc1_ >= this.§=U§.length)
            {
               return false;
            }
            _loc2_ = this.§=U§[_loc1_];
            if(!(_loc3_ && _loc2_))
            {
               §§push(_loc2_.explode());
               if(_loc3_ && this)
               {
                  break;
               }
               if(§§pop())
               {
                  if(!(_loc3_ && _loc1_))
                  {
                     §§push(true);
                     break;
                  }
               }
               else
               {
                  addr83:
                  _loc1_++;
               }
               continue;
            }
            §§goto(addr83);
         }
         return §§pop();
      }
      
      public function §<^§(param1:§+0§) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
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
                        addr135:
                        loop10:
                        while(true)
                        {
                           §§push(param1.§7Z§.§2C§() == §-g§.§3'§);
                           loop6:
                           while(true)
                           {
                              §§push(!§§pop());
                              if(!(_loc3_ && this))
                              {
                                 if(_loc3_)
                                 {
                                    continue loop0;
                                 }
                                 §§push(Boolean(§§pop()));
                                 loop7:
                                 while(true)
                                 {
                                    if(!(_loc3_ && _loc2_))
                                    {
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          if(!_loc3_)
                                          {
                                             if(§§pop())
                                             {
                                                break loop6;
                                             }
                                             loop8:
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      §§push(true);
                                                   }
                                                   else
                                                   {
                                                      if(_loc2_)
                                                      {
                                                         if(_loc3_)
                                                         {
                                                            continue loop10;
                                                         }
                                                         addr24:
                                                         §§push(false);
                                                         if(!_loc3_)
                                                         {
                                                            if(!_loc3_)
                                                            {
                                                               break;
                                                            }
                                                            break loop6;
                                                         }
                                                         while(true)
                                                         {
                                                            if(!(_loc3_ && param1))
                                                            {
                                                               §§goto(addr80);
                                                            }
                                                            continue loop7;
                                                         }
                                                         addr73:
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(this.§>`§.§%-§.§%F§(param1.§?!7§().GetPosition().x,param1.§?!7§().GetPosition().y));
                                                         if(!_loc2_)
                                                         {
                                                            break;
                                                         }
                                                         §§push(Boolean(§§pop()));
                                                         if(!(_loc2_ || _loc2_))
                                                         {
                                                            break;
                                                         }
                                                         if(!_loc3_)
                                                         {
                                                            continue loop8;
                                                         }
                                                         continue loop6;
                                                      }
                                                      addr128:
                                                   }
                                                   §§goto(addr73);
                                                }
                                                §§goto(addr24);
                                             }
                                             return §§pop();
                                          }
                                          break;
                                       }
                                       continue loop1;
                                       addr112:
                                    }
                                    continue loop2;
                                 }
                              }
                              break;
                           }
                           while(true)
                           {
                              §§pop();
                              §§goto(addr128);
                           }
                           addr80:
                           return §§pop();
                        }
                     }
                  }
                  §§goto(addr112);
               }
            }
         }
         §§goto(addr135);
      }
      
      public function removeObjectWithIndex(param1:int, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc6_:§8U§ = null;
         var _loc7_:§"!%§ = null;
         if(_loc12_)
         {
            if(param1 < 0)
            {
               if(!(_loc13_ && this))
               {
                  return;
               }
            }
         }
         var _loc5_:§+0§;
         §§push((_loc5_ = this.§=U§[param1]).§'D§());
         if(_loc12_ || this)
         {
            if(§§pop())
            {
               if(_loc12_ || param3)
               {
                  var _loc8_:*;
                  §§push((_loc8_ = this).§%!A§);
                  if(_loc12_ || param3)
                  {
                     §§push(§§pop() + 1);
                  }
                  var _loc9_:* = §§pop();
                  if(_loc12_)
                  {
                     _loc8_.§%!A§ = _loc9_;
                  }
                  if(!_loc13_)
                  {
                     addr241:
                     if(_loc5_ == this.§>`§.activeObject)
                     {
                        while(true)
                        {
                           §§push(this.§>`§);
                           loop9:
                           while(true)
                           {
                              §§pop().activeObject = null;
                              addr250:
                              while(true)
                              {
                                 continue loop9;
                              }
                           }
                        }
                     }
                     while(true)
                     {
                        §§goto(addr198);
                     }
                  }
                  §§goto(addr182);
               }
               §§goto(addr186);
            }
            else
            {
               §§push(_loc5_.§>!K§());
               if(_loc12_)
               {
                  if(§§pop())
                  {
                     if(_loc12_ || param3)
                     {
                        §§push((_loc8_ = this).§-`§);
                        if(_loc12_)
                        {
                           §§push(§§pop() - 1);
                        }
                        _loc9_ = §§pop();
                        if(_loc12_)
                        {
                           _loc8_.§-`§ = _loc9_;
                        }
                        if(_loc12_)
                        {
                           §§goto(addr241);
                        }
                        §§goto(addr240);
                     }
                     §§goto(addr195);
                  }
                  §§goto(addr241);
               }
            }
            §§goto(addr164);
         }
         §§goto(addr143);
      }
      
      private function §0u§(param1:Sprite) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            §§push(this.§[e§);
            if(_loc3_ || _loc2_)
            {
               if(!§§pop().contains(param1))
               {
                  loop0:
                  while(true)
                  {
                     §§push(this.§3,§);
                     if(_loc3_)
                     {
                        if(!§§pop().contains(param1))
                        {
                           while(true)
                           {
                              §§push(this.§9!S§);
                              if(!(_loc2_ && _loc3_))
                              {
                                 if(!§§pop().contains(param1))
                                 {
                                    do
                                    {
                                       §§push(this.§8&§);
                                       if(!_loc2_)
                                       {
                                          if(!§§pop().contains(param1))
                                          {
                                             return;
                                          }
                                          if(!(_loc2_ && _loc3_))
                                          {
                                             if(!_loc3_)
                                             {
                                                continue;
                                             }
                                             if(_loc3_)
                                             {
                                                if(_loc2_ && param1)
                                                {
                                                   §§goto(addr103);
                                                }
                                                if(!(_loc3_ || _loc2_))
                                                {
                                                   addr132:
                                                   §§push(this.§3,§);
                                                   break loop0;
                                                }
                                                addr67:
                                                this.§8&§.removeChild(param1);
                                                return;
                                                addr69:
                                             }
                                             §§goto(addr116);
                                          }
                                          §§goto(addr69);
                                       }
                                       §§goto(addr67);
                                    }
                                    while(!(_loc2_ && _loc2_));
                                    
                                    return;
                                    addr136:
                                 }
                                 addr103:
                                 if(_loc3_ || param1)
                                 {
                                    if(!_loc2_)
                                    {
                                       addr114:
                                       this.§9!S§.removeChild(param1);
                                       addr116:
                                       if(_loc3_)
                                       {
                                          break;
                                       }
                                       if(_loc3_)
                                       {
                                          continue;
                                       }
                                       continue loop0;
                                    }
                                    addr162:
                                    this.§[e§.removeChild(param1);
                                 }
                                 return;
                              }
                              §§goto(addr114);
                           }
                           return;
                           addr118:
                        }
                        §§goto(addr132);
                     }
                     break;
                  }
                  §§pop().removeChild(param1);
                  §§goto(addr136);
               }
            }
            §§goto(addr162);
         }
         §§goto(addr118);
      }
      
      protected function checkExplosions(param1:§+0§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            §§push(param1.§7<§());
            loop0:
            while(true)
            {
               §§push(§§pop().toUpperCase() == "WHITE_EGG");
               if(_loc3_ || _loc2_)
               {
                  if(!§§pop())
                  {
                     loop4:
                     while(true)
                     {
                        §§pop();
                        addr134:
                        loop3:
                        while(true)
                        {
                           §§push(param1.§1!'§());
                           if(_loc3_ || this)
                           {
                              if(!_loc3_)
                              {
                                 continue loop4;
                              }
                              addr74:
                              §§push(Boolean(§§pop()));
                              while(true)
                              {
                                 break loop3;
                                 §§goto(addr74);
                              }
                           }
                           break;
                        }
                        while(§§pop())
                        {
                           if(_loc3_)
                           {
                              continue loop0;
                           }
                           addr94:
                           if(_loc3_)
                           {
                              addr96:
                              this.addExplosions(§1!T§.§ 9§,param1.§?!7§().GetPosition().x,param1.§?!7§().GetPosition().y);
                              addr108:
                              break;
                              addr108:
                           }
                           §§goto(addr134);
                        }
                        addr25:
                        return;
                     }
                     addr133:
                  }
                  §§goto(addr75);
               }
               §§goto(addr133);
            }
         }
         §§goto(addr96);
      }
      
      public function §"!>§(param1:Object, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && this))
         {
            this.removeObjectWithIndex(this.§=U§.indexOf(param1),param2,param3,param4);
         }
      }
      
      public function §<!=§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §§push(this.§<!X§);
            loop0:
            while(true)
            {
               §§push(param1);
               addr79:
               while(true)
               {
                  §§push(-§§pop());
                  addr80:
                  while(true)
                  {
                     §§pop().x = §§pop();
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr75);
      }
      
      public function isPigsAlive(param1:Boolean = false) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§+0§ = null;
         var _loc2_:int = 0;
         loop0:
         while(_loc2_ < this.§=U§.length)
         {
            _loc3_ = this.§=U§[_loc2_] as §+0§;
            if(_loc5_)
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
                           addr213:
                           while(true)
                           {
                              §§push(_loc3_.§'D§());
                              addr190:
                              while(true)
                              {
                                 §§push(Boolean(§§pop()));
                              }
                           }
                        }
                        addr212:
                     }
                     while(true)
                     {
                        loop7:
                        while(true)
                        {
                           §§push(§§pop());
                           while(true)
                           {
                              if(§§pop())
                              {
                                 loop9:
                                 while(true)
                                 {
                                    §§pop();
                                    addr196:
                                    loop26:
                                    while(true)
                                    {
                                       §§push(_loc3_.§,!&§);
                                       loop27:
                                       while(true)
                                       {
                                          §§push(0);
                                          loop28:
                                          while(true)
                                          {
                                             §§push(§§pop() > §§pop());
                                             loop29:
                                             while(true)
                                             {
                                                if(!_loc4_)
                                                {
                                                   while(true)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         loop11:
                                                         while(!(_loc4_ && param1))
                                                         {
                                                            §§push(param1);
                                                            loop12:
                                                            while(true)
                                                            {
                                                               §§push(!§§pop());
                                                               if(!_loc4_)
                                                               {
                                                                  if(!_loc4_)
                                                                  {
                                                                     §§push(§§pop());
                                                                     while(!_loc4_)
                                                                     {
                                                                        if(!§§pop())
                                                                        {
                                                                           loop24:
                                                                           while(_loc5_)
                                                                           {
                                                                              §§pop();
                                                                              loop18:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc3_.§2P§);
                                                                                 loop19:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop().mTryToBlink);
                                                                                    loop20:
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc5_ || param1)
                                                                                       {
                                                                                          §§push(0);
                                                                                          loop21:
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc5_)
                                                                                             {
                                                                                                §§push(§§pop() <= §§pop());
                                                                                                if(_loc5_)
                                                                                                {
                                                                                                   continue loop12;
                                                                                                }
                                                                                                addr148:
                                                                                                loop17:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!(_loc5_ || this))
                                                                                                   {
                                                                                                      continue loop29;
                                                                                                   }
                                                                                                   §§pop();
                                                                                                   loop22:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      loop23:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc3_.§2P§);
                                                                                                         if(!_loc5_)
                                                                                                         {
                                                                                                            continue loop19;
                                                                                                         }
                                                                                                         §§push(§§pop().mTryToScream);
                                                                                                         if(_loc4_)
                                                                                                         {
                                                                                                            continue loop20;
                                                                                                         }
                                                                                                         §§push(0);
                                                                                                         if(_loc4_)
                                                                                                         {
                                                                                                            continue loop21;
                                                                                                         }
                                                                                                         §§push(§§pop() <= §§pop());
                                                                                                         if(!_loc4_)
                                                                                                         {
                                                                                                            if(_loc5_ || _loc3_)
                                                                                                            {
                                                                                                               addr67:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     if(!(_loc4_ && _loc2_))
                                                                                                                     {
                                                                                                                        if(_loc4_ && this)
                                                                                                                        {
                                                                                                                           continue loop22;
                                                                                                                        }
                                                                                                                        if(_loc4_)
                                                                                                                        {
                                                                                                                           continue loop18;
                                                                                                                        }
                                                                                                                        if(!_loc5_)
                                                                                                                        {
                                                                                                                           continue loop11;
                                                                                                                        }
                                                                                                                        if(!_loc5_)
                                                                                                                        {
                                                                                                                           continue loop26;
                                                                                                                        }
                                                                                                                        §§push(true);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        loop15:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           addr35:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              _loc2_++;
                                                                                                                              if(_loc5_ || _loc3_)
                                                                                                                              {
                                                                                                                                 if(true)
                                                                                                                                 {
                                                                                                                                    break;
                                                                                                                                 }
                                                                                                                                 continue loop23;
                                                                                                                              }
                                                                                                                              continue loop15;
                                                                                                                           }
                                                                                                                           continue loop0;
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr35);
                                                                                                               }
                                                                                                               continue loop26;
                                                                                                               addr67:
                                                                                                            }
                                                                                                            continue loop24;
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc5_)
                                                                                                            {
                                                                                                               if(!(_loc4_ && _loc2_))
                                                                                                               {
                                                                                                                  continue loop1;
                                                                                                               }
                                                                                                               continue loop9;
                                                                                                            }
                                                                                                            continue loop17;
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                continue loop29;
                                                                                             }
                                                                                             continue loop28;
                                                                                          }
                                                                                          continue loop28;
                                                                                       }
                                                                                       continue loop27;
                                                                                    }
                                                                                    continue loop27;
                                                                                 }
                                                                              }
                                                                           }
                                                                           continue loop7;
                                                                           addr183:
                                                                        }
                                                                        §§goto(addr67);
                                                                     }
                                                                     continue loop2;
                                                                     addr180:
                                                                  }
                                                                  §§goto(addr212);
                                                               }
                                                               §§goto(addr183);
                                                            }
                                                            §§goto(addr190);
                                                         }
                                                         §§goto(addr213);
                                                      }
                                                      §§goto(addr35);
                                                   }
                                                   addr164:
                                                }
                                                §§goto(addr190);
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                              §§goto(addr164);
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr196);
         }
         return false;
      }
      
      public function §%!-§(param1:Boolean = false) : int
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:§+0§ = null;
         var _loc2_:int = 0;
         var _loc3_:* = int(this.§=U§.length - 1);
         loop0:
         while(true)
         {
            §§push(_loc3_);
            if(_loc6_ || _loc2_)
            {
               if(§§pop() < 0)
               {
                  §§push(_loc2_);
                  break;
               }
               §§push(Boolean(_loc4_ = this.§=U§[_loc3_] as §+0§));
               if(_loc6_)
               {
                  §§push(§§pop());
                  if(!(_loc5_ && param1))
                  {
                     if(§§pop())
                     {
                        if(!_loc5_)
                        {
                           §§pop();
                           if(_loc6_)
                           {
                              §§push(_loc4_.§'D§());
                              if(_loc6_)
                              {
                                 addr227:
                                 §§push(Boolean(§§pop()));
                                 loop22:
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    addr228:
                                    loop23:
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          addr229:
                                          loop24:
                                          while(true)
                                          {
                                             §§pop();
                                             loop10:
                                             while(true)
                                             {
                                                §§push(_loc4_.§,!&§);
                                                loop11:
                                                while(true)
                                                {
                                                   §§push(0);
                                                   loop12:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() > §§pop());
                                                      if(_loc6_ || _loc2_)
                                                      {
                                                         loop13:
                                                         while(§§pop())
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(param1);
                                                               loop17:
                                                               while(true)
                                                               {
                                                                  §§push(!§§pop());
                                                                  addr210:
                                                                  loop14:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop());
                                                                     loop15:
                                                                     while(!§§pop())
                                                                     {
                                                                        loop16:
                                                                        while(true)
                                                                        {
                                                                           if(!(_loc6_ || _loc2_))
                                                                           {
                                                                              continue loop24;
                                                                           }
                                                                           §§pop();
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc4_.§2P§);
                                                                              loop21:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop().mTryToBlink);
                                                                                 loop20:
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc5_ && param1)
                                                                                    {
                                                                                       continue loop11;
                                                                                    }
                                                                                    §§push(0);
                                                                                    loop19:
                                                                                    while(true)
                                                                                    {
                                                                                       if(!(_loc6_ || param1))
                                                                                       {
                                                                                          continue loop12;
                                                                                       }
                                                                                       §§push(§§pop() <= §§pop());
                                                                                       if(!_loc5_)
                                                                                       {
                                                                                          if(_loc6_ || param1)
                                                                                          {
                                                                                             §§push(§§pop());
                                                                                             if(!(_loc5_ && this))
                                                                                             {
                                                                                                if(!(_loc5_ && _loc2_))
                                                                                                {
                                                                                                   if(!§§pop())
                                                                                                   {
                                                                                                   }
                                                                                                   break loop15;
                                                                                                }
                                                                                                continue loop23;
                                                                                             }
                                                                                             continue loop15;
                                                                                          }
                                                                                          continue loop16;
                                                                                       }
                                                                                       loop18:
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc5_)
                                                                                          {
                                                                                             continue loop14;
                                                                                          }
                                                                                          §§pop();
                                                                                          while(!_loc6_)
                                                                                          {
                                                                                             continue loop10;
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             addr84:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc4_.§2P§);
                                                                                                if(!(_loc5_ && param1))
                                                                                                {
                                                                                                   §§push(§§pop().mTryToScream);
                                                                                                   if(!_loc5_)
                                                                                                   {
                                                                                                      §§push(0);
                                                                                                      if(_loc6_ || this)
                                                                                                      {
                                                                                                         §§push(§§pop() <= §§pop());
                                                                                                         if(!(_loc5_ && _loc2_))
                                                                                                         {
                                                                                                            if(!(_loc5_ && this))
                                                                                                            {
                                                                                                               if(!(_loc5_ && this))
                                                                                                               {
                                                                                                                  break loop15;
                                                                                                               }
                                                                                                               continue loop22;
                                                                                                            }
                                                                                                            continue loop17;
                                                                                                         }
                                                                                                         continue loop18;
                                                                                                      }
                                                                                                      continue loop19;
                                                                                                   }
                                                                                                   continue loop20;
                                                                                                }
                                                                                                continue loop21;
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        continue loop24;
                                                                     }
                                                                     while(§§pop())
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           _loc2_++;
                                                                           addr140:
                                                                           while(true)
                                                                           {
                                                                              if(_loc6_)
                                                                              {
                                                                                 break loop13;
                                                                              }
                                                                              §§goto(addr220);
                                                                           }
                                                                        }
                                                                     }
                                                                     break loop13;
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(_loc3_);
                                                            if(_loc6_ || _loc3_)
                                                            {
                                                               §§push(§§pop() - 1);
                                                            }
                                                            _loc3_ = §§pop();
                                                            if(_loc6_)
                                                            {
                                                               if(!(_loc5_ && param1))
                                                               {
                                                                  if(!_loc5_)
                                                                  {
                                                                     if(_loc6_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     §§goto(addr208);
                                                                  }
                                                                  §§goto(addr191);
                                                               }
                                                               §§goto(addr139);
                                                            }
                                                            §§goto(addr140);
                                                         }
                                                         if(true)
                                                         {
                                                            continue loop0;
                                                         }
                                                         §§goto(addr84);
                                                         addr206:
                                                      }
                                                      §§goto(addr210);
                                                   }
                                                }
                                             }
                                          }
                                          addr229:
                                       }
                                       §§goto(addr206);
                                    }
                                 }
                                 addr227:
                              }
                              §§goto(addr227);
                           }
                           §§goto(addr193);
                        }
                        §§goto(addr229);
                     }
                     §§goto(addr227);
                  }
                  §§goto(addr228);
               }
               §§goto(addr229);
            }
            break;
         }
         return §§pop();
      }
      
      public function §3m§() : int
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§+0§ = null;
         var _loc1_:int = 0;
         var _loc3_:int = 0;
         loop0:
         for each(_loc2_ in this.§=U§)
         {
            if(!(_loc6_ && this))
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
                           addr124:
                           while(true)
                           {
                              addr81:
                              while(true)
                              {
                                 §§push(_loc2_.§29§());
                                 if(_loc6_)
                                 {
                                    continue loop1;
                                 }
                                 §§push(Boolean(§§pop()));
                                 if(!_loc5_)
                                 {
                                    continue loop1;
                                 }
                                 if(!(_loc5_ || _loc2_))
                                 {
                                    continue loop3;
                                 }
                                 §§push(§§pop());
                                 if(!_loc5_)
                                 {
                                    break;
                                 }
                                 if(!§§pop())
                                 {
                                    continue loop1;
                                 }
                              }
                              continue loop2;
                           }
                        }
                     }
                     while(true)
                     {
                        loop9:
                        while(true)
                        {
                           if(!§§pop())
                           {
                              continue loop0;
                           }
                           if(_loc5_)
                           {
                              while(true)
                              {
                                 _loc1_++;
                              }
                              addr69:
                           }
                           while(true)
                           {
                              if(!(_loc5_ || _loc3_))
                              {
                                 while(true)
                                 {
                                    §§push(_loc2_.§76§());
                                    if(!(_loc6_ && _loc2_))
                                    {
                                       if(_loc5_)
                                       {
                                          §§push(Boolean(§§pop()));
                                          continue loop9;
                                       }
                                       continue loop1;
                                    }
                                    continue loop9;
                                 }
                                 continue loop0;
                                 addr108:
                              }
                              if(!_loc6_)
                              {
                                 if(true)
                                 {
                                    continue loop0;
                                 }
                                 §§goto(addr81);
                              }
                              §§goto(addr124);
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr69);
         }
         return _loc1_;
      }
      
      public function § !2§() : int
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§+0§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§=U§)
         {
            if(!_loc5_)
            {
               §§push(Boolean(_loc2_));
               if(_loc6_)
               {
                  if(§§pop())
                  {
                     if(!(_loc5_ && _loc2_))
                     {
                        §§pop();
                        if(_loc6_)
                        {
                           addr63:
                           §§push(_loc2_.isTexture());
                           if(!(_loc5_ && _loc2_))
                           {
                              addr73:
                              if(!§§pop())
                              {
                                 continue;
                              }
                              if(!_loc6_)
                              {
                                 continue;
                              }
                           }
                           §§goto(addr73);
                        }
                        _loc1_++;
                        continue;
                     }
                     §§goto(addr73);
                  }
               }
               §§goto(addr73);
            }
            §§goto(addr63);
         }
         return _loc1_;
      }
      
      public function makePigsSmile(param1:Number = 1) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§+0§ = null;
         var _loc2_:* = int(this.§=U§.length - 1);
         loop0:
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§=U§[_loc2_];
            if(_loc5_)
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
                           if(!_loc5_)
                           {
                              break;
                           }
                           if(§§pop())
                           {
                              loop6:
                              for(; !(_loc4_ && _loc3_); while(true)
                              {
                                 §§push(_loc3_.§,!&§ > 0);
                                 if(!(_loc5_ || param1))
                                 {
                                    continue loop6;
                                 }
                                 if(!(_loc5_ || this))
                                 {
                                    continue loop1;
                                 }
                              },continue loop0)
                              {
                                 §§pop();
                                 while(true)
                                 {
                                    continue loop6;
                                 }
                              }
                              while(true)
                              {
                                 §§pop();
                                 addr163:
                                 while(true)
                                 {
                                    §§push(_loc3_.§'D§());
                                    if(_loc5_ || this)
                                    {
                                       §§push(Boolean(§§pop()));
                                       continue loop1;
                                    }
                                    §§goto(addr138);
                                 }
                              }
                              addr138:
                              addr162:
                           }
                           while(true)
                           {
                              if(§§pop())
                              {
                                 if(!(_loc4_ && this))
                                 {
                                    if(_loc5_)
                                    {
                                       if(!(_loc4_ && _loc3_))
                                       {
                                          addr113:
                                          §§push(_loc3_.§2P§);
                                          §§push(§0q§.§<!6§);
                                          if(!(_loc4_ && param1))
                                          {
                                             §§push(§§pop() * param1);
                                          }
                                          §§pop().mTryToScream = §§pop();
                                          loop12:
                                          while(true)
                                          {
                                             addr37:
                                             while(true)
                                             {
                                                §§push(_loc2_);
                                                if(!_loc4_)
                                                {
                                                   §§push(§§pop() - 1);
                                                }
                                                _loc2_ = §§pop();
                                                if(!(_loc4_ && _loc3_))
                                                {
                                                   break;
                                                }
                                                continue loop12;
                                             }
                                             if(true)
                                             {
                                                continue loop0;
                                             }
                                             §§goto(addr52);
                                          }
                                          addr113:
                                       }
                                       §§goto(addr163);
                                    }
                                    §§goto(addr146);
                                 }
                                 §§goto(addr113);
                              }
                              §§goto(addr37);
                           }
                        }
                        continue;
                        addr133:
                     }
                     §§goto(addr162);
                  }
               }
            }
            §§goto(addr113);
         }
      }
      
      public function §@0§() : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§+0§ = null;
         var _loc1_:* = int(this.§=U§.length - 1);
         loop0:
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§=U§[_loc1_] as §+0§;
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
                           loop4:
                           while(true)
                           {
                              §§push(_loc2_.§>!K§());
                              while(true)
                              {
                                 §§push(Boolean(§§pop()));
                                 addr108:
                                 while(_loc4_ || _loc1_)
                                 {
                                    if(_loc3_)
                                    {
                                       continue loop1;
                                    }
                                 }
                                 addr63:
                                 continue loop3;
                                 if(_loc3_ && _loc1_)
                                 {
                                    continue;
                                 }
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       if(_loc3_ && _loc1_)
                                       {
                                          loop12:
                                          while(_loc4_)
                                          {
                                             while(true)
                                             {
                                                §§push(_loc1_);
                                                if(!_loc3_)
                                                {
                                                   §§push(§§pop() - 1);
                                                }
                                                _loc1_ = §§pop();
                                                if(!(_loc4_ || _loc3_))
                                                {
                                                   continue loop12;
                                                }
                                                if(_loc4_)
                                                {
                                                   while(false)
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(_loc2_.§,!&§ > 0);
                                                         if(_loc3_)
                                                         {
                                                            break;
                                                         }
                                                         §§goto(addr63);
                                                      }
                                                      §§goto(addr90);
                                                   }
                                                   continue loop0;
                                                   addr54:
                                                }
                                                while(true)
                                                {
                                                   §§goto(addr56);
                                                }
                                             }
                                          }
                                          continue loop4;
                                       }
                                       §§push(true);
                                       while(true)
                                       {
                                          if(_loc4_ || _loc3_)
                                          {
                                             §§goto(addr97);
                                          }
                                          §§goto(addr122);
                                       }
                                       addr90:
                                       §§goto(addr123);
                                    }
                                    §§goto(addr39);
                                 }
                              }
                           }
                        }
                     }
                     while(true)
                     {
                        §§push(§§pop());
                        if(!_loc4_)
                        {
                           continue loop2;
                        }
                        if(§§pop())
                        {
                           addr122:
                           while(true)
                           {
                              §§pop();
                              continue loop13;
                           }
                           §§goto(addr97);
                        }
                        §§goto(addr80);
                     }
                     addr97:
                     if(!_loc4_)
                     {
                        §§goto(addr108);
                     }
                     return §§pop();
                  }
               }
            }
            §§goto(addr54);
         }
         return false;
      }
      
      public function isWorldAtSleep() : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§+0§ = null;
         var _loc1_:* = int(this.§=U§.length - 1);
         loop0:
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§=U§[_loc1_] as §+0§;
            if(!_loc4_)
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
                              §§push(_loc2_.§,!&§);
                              while(true)
                              {
                                 §§push(0);
                                 addr233:
                                 while(true)
                                 {
                                    §§push(§§pop() > §§pop());
                                    addr234:
                                    while(_loc3_ || _loc1_)
                                    {
                                       §§push(Boolean(§§pop()));
                                    }
                                    continue loop3;
                                 }
                                 loop18:
                                 while(true)
                                 {
                                    §§push(_loc2_.§,!&§);
                                    if(!(_loc3_ || _loc1_))
                                    {
                                       break;
                                    }
                                    §§push(0);
                                    if(_loc3_ || _loc2_)
                                    {
                                       §§push(§§pop() > §§pop());
                                       if(!(_loc4_ && _loc1_))
                                       {
                                          if(_loc3_)
                                          {
                                             if(!_loc4_)
                                             {
                                                if(!(_loc4_ && _loc2_))
                                                {
                                                   loop19:
                                                   while(§§pop())
                                                   {
                                                      while(true)
                                                      {
                                                         if(_loc3_)
                                                         {
                                                            if(!(_loc4_ && _loc1_))
                                                            {
                                                               if(_loc4_ && _loc1_)
                                                               {
                                                                  break;
                                                               }
                                                               §§push(false);
                                                               while(true)
                                                               {
                                                                  if(_loc3_)
                                                                  {
                                                                     if(_loc3_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     loop27:
                                                                     while(!(_loc4_ && _loc1_))
                                                                     {
                                                                        addr169:
                                                                        §§push(§§pop());
                                                                        if(_loc3_ || _loc2_)
                                                                        {
                                                                           if(!§§pop())
                                                                           {
                                                                              continue loop19;
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              if(_loc3_ || _loc1_)
                                                                              {
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       §§pop();
                                                                                       continue loop18;
                                                                                    }
                                                                                    while(!_loc4_)
                                                                                    {
                                                                                       §§pop();
                                                                                       loop22:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc2_.§69§());
                                                                                          addr197:
                                                                                          while(true)
                                                                                          {
                                                                                             if(!(_loc4_ && _loc2_))
                                                                                             {
                                                                                                §§goto(addr204);
                                                                                             }
                                                                                             continue loop22;
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr234);
                                                                                 }
                                                                                 §§goto(addr194);
                                                                              }
                                                                              addr204:
                                                                              §§push(false);
                                                                              if(_loc4_)
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop());
                                                                                    loop10:
                                                                                    while(_loc3_)
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             §§pop();
                                                                                             addr249:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc2_.§?n§);
                                                                                                addr212:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop() == §-r§.§#!]§);
                                                                                                   addr215:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(!§§pop());
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             addr152:
                                                                                             if(_loc3_ || _loc3_)
                                                                                             {
                                                                                                if(_loc3_)
                                                                                                {
                                                                                                   §§push(Boolean(§§pop()));
                                                                                                   continue loop27;
                                                                                                }
                                                                                                continue loop1;
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          addr217:
                                                                                          while(true)
                                                                                          {
                                                                                             if(!§§pop())
                                                                                             {
                                                                                                break loop19;
                                                                                             }
                                                                                             addr218:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc2_.§"u§());
                                                                                                addr220:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(Boolean(§§pop()));
                                                                                                   addr221:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop());
                                                                                                      addr222:
                                                                                                      while(_loc3_)
                                                                                                      {
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            continue loop21;
                                                                                                         }
                                                                                                         loop24:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            break loop27;
                                                                                                            addr194:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               continue loop24;
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr204);
                                                                                                         §§goto(addr169);
                                                                                                      }
                                                                                                      continue loop10;
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr215);
                                                                                       }
                                                                                    }
                                                                                    continue loop2;
                                                                                 }
                                                                                 addr244:
                                                                              }
                                                                              return §§pop();
                                                                           }
                                                                        }
                                                                        §§goto(addr222);
                                                                     }
                                                                     while(!§§pop())
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc2_.§>!K§());
                                                                           addr145:
                                                                           while(_loc3_ || _loc1_)
                                                                           {
                                                                              §§goto(addr152);
                                                                           }
                                                                           §§goto(addr215);
                                                                        }
                                                                        §§goto(addr162);
                                                                     }
                                                                     addr162:
                                                                     §§goto(addr197);
                                                                  }
                                                                  §§goto(addr178);
                                                               }
                                                               if(!_loc4_)
                                                               {
                                                                  return §§pop();
                                                               }
                                                               §§goto(addr217);
                                                            }
                                                            §§goto(addr249);
                                                         }
                                                         §§goto(addr197);
                                                      }
                                                      continue loop4;
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(_loc1_);
                                                      if(_loc3_ || _loc1_)
                                                      {
                                                         if(!_loc4_)
                                                         {
                                                            addr50:
                                                            _loc1_ = §§pop() - 1;
                                                            if(_loc3_)
                                                            {
                                                               if(!_loc4_)
                                                               {
                                                                  if(_loc4_)
                                                                  {
                                                                     continue loop18;
                                                                  }
                                                                  if(_loc3_)
                                                                  {
                                                                     if(true)
                                                                     {
                                                                        break;
                                                                     }
                                                                     continue loop18;
                                                                  }
                                                                  §§goto(addr142);
                                                               }
                                                               §§goto(addr100);
                                                            }
                                                            else if(_loc3_ || _loc2_)
                                                            {
                                                               continue;
                                                            }
                                                            §§goto(addr218);
                                                         }
                                                         §§goto(addr212);
                                                      }
                                                      §§goto(addr50);
                                                   }
                                                   continue loop0;
                                                }
                                                §§goto(addr220);
                                             }
                                             §§goto(addr221);
                                          }
                                          §§goto(addr145);
                                       }
                                       §§goto(addr117);
                                    }
                                    else
                                    {
                                       §§goto(addr233);
                                    }
                                 }
                              }
                           }
                        }
                     }
                     while(true)
                     {
                        §§goto(addr244);
                     }
                  }
               }
            }
            §§goto(addr218);
         }
         return true;
      }
      
      public function §+l§(param1:Boolean = false) : §+0§
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc5_:* = 0;
         var _loc6_:§+0§ = null;
         if(!(_loc8_ && _loc3_))
         {
            if(!this.isPigsAlive())
            {
               if(_loc7_)
               {
                  §§goto(addr33);
               }
            }
            var _loc2_:int = this.§=U§.length;
            §§push(1);
            if(!_loc8_)
            {
               §§push(int(§§pop() + Math.random() * this.§%!-§(param1)));
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
                     if(!(_loc8_ && param1))
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
                           if(_loc8_ && _loc2_)
                           {
                              continue loop1;
                           }
                           §§push(_loc2_);
                           if(!(_loc7_ || this))
                           {
                              break;
                           }
                           if(§§pop() >= §§pop())
                           {
                              continue loop0;
                           }
                           §§push(Boolean(_loc6_ = this.§=U§[_loc5_]));
                           if(_loc7_)
                           {
                              §§push(§§pop());
                              if(_loc7_)
                              {
                                 if(§§pop())
                                 {
                                    if(!_loc8_)
                                    {
                                       §§pop();
                                       if(_loc7_ || _loc2_)
                                       {
                                          §§push(_loc6_.§'D§());
                                          loop4:
                                          while(true)
                                          {
                                             §§push(Boolean(§§pop()));
                                             addr236:
                                             loop28:
                                             while(true)
                                             {
                                                §§push(§§pop());
                                                loop9:
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         addr239:
                                                         while(true)
                                                         {
                                                            §§push(_loc6_.§,!&§);
                                                            addr218:
                                                            while(true)
                                                            {
                                                               §§push(0);
                                                               addr219:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() > §§pop());
                                                               }
                                                            }
                                                         }
                                                      }
                                                      addr238:
                                                   }
                                                   loop10:
                                                   while(true)
                                                   {
                                                      loop22:
                                                      while(true)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            loop11:
                                                            while(true)
                                                            {
                                                               §§push(param1);
                                                               addr223:
                                                               loop27:
                                                               while(true)
                                                               {
                                                                  §§push(!§§pop());
                                                                  loop7:
                                                                  while(true)
                                                                  {
                                                                     if(_loc8_)
                                                                     {
                                                                        continue loop28;
                                                                     }
                                                                     §§push(§§pop());
                                                                     loop29:
                                                                     while(true)
                                                                     {
                                                                        if(!§§pop())
                                                                        {
                                                                           loop19:
                                                                           while(true)
                                                                           {
                                                                              if(_loc8_)
                                                                              {
                                                                                 continue loop4;
                                                                              }
                                                                              §§pop();
                                                                              loop20:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc6_.§2P§);
                                                                                 loop26:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop().mTryToBlink);
                                                                                    loop25:
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc7_ || _loc3_)
                                                                                       {
                                                                                          §§push(0);
                                                                                          loop24:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop() <= §§pop());
                                                                                             loop8:
                                                                                             while(true)
                                                                                             {
                                                                                                if(!_loc7_)
                                                                                                {
                                                                                                   continue loop19;
                                                                                                }
                                                                                                if(_loc7_)
                                                                                                {
                                                                                                   §§push(§§pop());
                                                                                                   if(_loc8_)
                                                                                                   {
                                                                                                      continue loop29;
                                                                                                   }
                                                                                                   if(!(_loc7_ || _loc3_))
                                                                                                   {
                                                                                                      continue loop9;
                                                                                                   }
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc7_ || param1)
                                                                                                         {
                                                                                                            if(!_loc8_)
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            continue loop22;
                                                                                                         }
                                                                                                         continue loop27;
                                                                                                      }
                                                                                                      §§pop();
                                                                                                      loop5:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc6_.§2P§);
                                                                                                         if(!(_loc7_ || _loc2_))
                                                                                                         {
                                                                                                            continue loop26;
                                                                                                         }
                                                                                                         §§push(§§pop().mTryToScream);
                                                                                                         if(!_loc7_)
                                                                                                         {
                                                                                                            continue loop25;
                                                                                                         }
                                                                                                         §§push(0);
                                                                                                         if(!_loc7_)
                                                                                                         {
                                                                                                            continue loop24;
                                                                                                         }
                                                                                                         if(_loc8_)
                                                                                                         {
                                                                                                            continue loop10;
                                                                                                         }
                                                                                                         §§push(§§pop() <= §§pop());
                                                                                                         if(_loc7_ || _loc2_)
                                                                                                         {
                                                                                                            if(_loc8_)
                                                                                                            {
                                                                                                               continue loop8;
                                                                                                            }
                                                                                                            if(!_loc7_)
                                                                                                            {
                                                                                                               continue loop7;
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               addr169:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     loop31:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(!_loc7_)
                                                                                                                        {
                                                                                                                           continue loop5;
                                                                                                                        }
                                                                                                                        if(_loc7_)
                                                                                                                        {
                                                                                                                           _loc4_++;
                                                                                                                           loop15:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              addr110:
                                                                                                                              addr95:
                                                                                                                              while(_loc4_ >= _loc3_)
                                                                                                                              {
                                                                                                                                 while(_loc8_)
                                                                                                                                 {
                                                                                                                                    continue loop15;
                                                                                                                                 }
                                                                                                                                 if(!_loc8_)
                                                                                                                                 {
                                                                                                                                    return _loc6_;
                                                                                                                                 }
                                                                                                                                 continue loop20;
                                                                                                                              }
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 _loc5_++;
                                                                                                                                 if(!_loc7_)
                                                                                                                                 {
                                                                                                                                    if(!(_loc8_ && param1))
                                                                                                                                    {
                                                                                                                                       continue;
                                                                                                                                    }
                                                                                                                                    continue loop11;
                                                                                                                                 }
                                                                                                                                 if(!(_loc8_ && param1))
                                                                                                                                 {
                                                                                                                                    if(_loc8_)
                                                                                                                                    {
                                                                                                                                       continue loop31;
                                                                                                                                    }
                                                                                                                                    if(true)
                                                                                                                                    {
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    §§goto(addr110);
                                                                                                                                 }
                                                                                                                                 §§goto(addr114);
                                                                                                                              }
                                                                                                                              continue loop3;
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr95);
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr204);
                                                                                                         }
                                                                                                      }
                                                                                                      addr204:
                                                                                                      addr214:
                                                                                                   }
                                                                                                   §§goto(addr168);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr238);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr218);
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr168);
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr95);
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       §§goto(addr214);
                                    }
                                    §§goto(addr223);
                                 }
                                 §§goto(addr236);
                              }
                              §§goto(addr227);
                           }
                           §§goto(addr169);
                        }
                        continue;
                     }
                     continue loop1;
                  }
                  addr277:
                  return null;
               }
            }
         }
         addr33:
         return null;
      }
      
      public function §=!^§() : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:* = 0;
         var _loc2_:* = int(this.§=U§.length - 1);
         loop0:
         while(true)
         {
            §§push(_loc2_);
            loop1:
            while(_loc4_ || _loc3_)
            {
               §§push(0);
               if(_loc4_)
               {
                  if(§§pop() < §§pop())
                  {
                     if(!_loc3_)
                     {
                        if(_loc3_ && _loc2_)
                        {
                           continue loop0;
                        }
                        §§push(_loc1_);
                        loop2:
                        while(!_loc3_)
                        {
                           if(_loc4_ || _loc2_)
                           {
                              §§push(this.§>`§.slingshot.§=!^§());
                              loop4:
                              while(_loc4_ || this)
                              {
                                 §§push(§§pop() + §§pop());
                                 if(_loc4_)
                                 {
                                    if(!_loc3_)
                                    {
                                       §§push(int(§§pop()));
                                       loop5:
                                       while(true)
                                       {
                                          if(!(_loc3_ && this))
                                          {
                                             addr110:
                                             _loc1_ = §§pop();
                                             loop3:
                                             while(_loc4_ || _loc3_)
                                             {
                                                §§push(_loc1_);
                                                if(_loc4_ || this)
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      if(_loc4_)
                                                      {
                                                         if(!_loc3_)
                                                         {
                                                            return §§pop();
                                                         }
                                                         addr122:
                                                         addr129:
                                                         addr122:
                                                         if(_loc3_ && _loc1_)
                                                         {
                                                            addr165:
                                                            while(true)
                                                            {
                                                               _loc1_ = §§pop();
                                                               break loop3;
                                                               §§goto(addr122);
                                                            }
                                                            addr165:
                                                         }
                                                         _loc2_ = §§pop();
                                                         continue loop0;
                                                      }
                                                      continue loop1;
                                                   }
                                                   continue loop2;
                                                }
                                                continue loop5;
                                                §§goto(addr110);
                                             }
                                             while(!(_loc3_ && _loc3_))
                                             {
                                                while(true)
                                                {
                                                   break loop2;
                                                }
                                                §§goto(addr129);
                                                §§goto(addr165);
                                             }
                                             while(true)
                                             {
                                                if((this.§=U§[_loc2_] as §+0§).§"u§())
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      addr143:
                                                      §§push(_loc1_);
                                                      §§push(§86§.§@r§.getValue());
                                                      break loop4;
                                                   }
                                                   §§goto(addr166);
                                                }
                                                §§goto(addr119);
                                             }
                                             addr166:
                                             addr111:
                                             addr198:
                                          }
                                          §§goto(addr143);
                                       }
                                    }
                                    addr196:
                                    §§push(int(§§pop()));
                                    break loop1;
                                 }
                                 §§goto(addr165);
                                 §§push(int(§§pop()));
                              }
                              if(_loc4_ || _loc2_)
                              {
                                 §§goto(addr164);
                                 §§push(§§pop() + §§pop() * int((this.§=U§[_loc2_] as §+0§).§+?§));
                              }
                              addr80:
                           }
                           else
                           {
                              addr177:
                              §§push((this.§=U§[_loc2_] as §+0§).§7Z§.score);
                           }
                           §§goto(addr196);
                           §§push(§§pop() + §§pop());
                        }
                        §§goto(addr122);
                        §§push(§§pop() - 1);
                     }
                     §§goto(addr111);
                  }
                  else
                  {
                     §§push(_loc1_);
                  }
                  §§goto(addr177);
               }
               §§goto(addr80);
            }
            while(true)
            {
               _loc1_ = §§pop();
               §§goto(addr198);
               §§goto(addr196);
            }
         }
      }
      
      public function §#X§(param1:§+0§, param2:§+0§) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param2))
         {
            §§push(param1.§>!K§());
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
                        while(true)
                        {
                           §§pop();
                           addr163:
                           while(true)
                           {
                              §§push(param2.§>!K§());
                              addr132:
                              while(true)
                              {
                                 §§push(Boolean(§§pop()));
                              }
                           }
                        }
                        addr162:
                     }
                     loop6:
                     while(true)
                     {
                        loop7:
                        for(; !§§pop(); while(true)
                        {
                           if(!(_loc3_ && this))
                           {
                              if(_loc4_)
                              {
                                 §§pop();
                                 §§goto(addr126);
                              }
                              break;
                           }
                           continue loop7;
                        },§§goto(addr132))
                        {
                           loop8:
                           while(true)
                           {
                              §§push(param1.§-!N§());
                              loop9:
                              while(true)
                              {
                                 if(!(_loc3_ && param1))
                                 {
                                    §§push(!§§pop());
                                    loop10:
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       if(_loc3_)
                                       {
                                          break;
                                       }
                                       if(§§pop())
                                       {
                                          continue loop7;
                                       }
                                       addr68:
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             if(!(_loc3_ && param2))
                                             {
                                                if(_loc4_)
                                                {
                                                   if(_loc3_)
                                                   {
                                                      if(_loc3_ && param2)
                                                      {
                                                         break;
                                                      }
                                                      continue loop8;
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(true);
                                                   }
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                      if(!_loc4_)
                                                      {
                                                         break loop7;
                                                      }
                                                      §§push(param2.§-!N§());
                                                      if(!_loc3_)
                                                      {
                                                         continue loop0;
                                                      }
                                                      continue loop10;
                                                   }
                                                   addr136:
                                                   if(_loc4_)
                                                   {
                                                      break loop6;
                                                   }
                                                   §§goto(addr162);
                                                   addr126:
                                                }
                                             }
                                             else
                                             {
                                                addr25:
                                                §§push(false);
                                                if(_loc4_ || this)
                                                {
                                                   if(!_loc4_)
                                                   {
                                                      continue loop10;
                                                   }
                                                   if(!_loc4_)
                                                   {
                                                      continue loop7;
                                                   }
                                                   if(_loc4_ || param1)
                                                   {
                                                      return §§pop();
                                                   }
                                                   §§goto(addr136);
                                                }
                                             }
                                             while(true)
                                             {
                                                if(!(_loc3_ && _loc3_))
                                                {
                                                   break loop9;
                                                }
                                                continue loop9;
                                             }
                                          }
                                          §§goto(addr25);
                                       }
                                       §§goto(addr163);
                                    }
                                    continue loop2;
                                 }
                                 continue loop1;
                              }
                              return §§pop();
                           }
                        }
                        §§goto(addr136);
                     }
                     return §§pop();
                  }
               }
            }
         }
         §§goto(addr91);
      }
      
      public function §0!Q§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.mSardineCanAdded = true;
         }
         do
         {
            this.§-`§ = 0;
         }
         while(_loc1_);
         
      }
      
      public function objectCollision(param1:§+0§, param2:§+0§) : Boolean
      {
         var _loc20_:Boolean = false;
         var _loc21_:Boolean = true;
         var _loc18_:* = NaN;
         var _loc19_:* = NaN;
         if(_loc21_ || this)
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
                     if(!(_loc20_ && _loc3_))
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
                                    if(!_loc20_)
                                    {
                                       §§pop();
                                       loop5:
                                       while(true)
                                       {
                                          if(!_loc20_)
                                          {
                                             loop40:
                                             while(true)
                                             {
                                                §§push(this.mMightyEagleTimer);
                                                if(_loc21_ || param1)
                                                {
                                                   §§push(§§pop() == §!j§.§6e§);
                                                   if(_loc21_ || _loc3_)
                                                   {
                                                      while(true)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            loop30:
                                                            while(true)
                                                            {
                                                               if(!(_loc20_ && param2))
                                                               {
                                                                  if(!(_loc20_ && param1))
                                                                  {
                                                                     if(_loc21_)
                                                                     {
                                                                        §§push(param1.§>1§());
                                                                        loop31:
                                                                        while(true)
                                                                        {
                                                                           if(!(_loc20_ && param2))
                                                                           {
                                                                              §§push(Boolean(§§pop()));
                                                                              loop19:
                                                                              while(true)
                                                                              {
                                                                                 if(!_loc20_)
                                                                                 {
                                                                                    if(!(_loc20_ && this))
                                                                                    {
                                                                                       §§push(§§pop());
                                                                                       if(_loc20_ && _loc3_)
                                                                                       {
                                                                                          continue loop3;
                                                                                       }
                                                                                       if(!_loc20_)
                                                                                       {
                                                                                          if(§§pop())
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   loop16:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      this.mMightyEagleTimer = 0;
                                                                                                      loop17:
                                                                                                      while(_loc20_ && param2)
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!_loc21_)
                                                                                                            {
                                                                                                               continue loop5;
                                                                                                            }
                                                                                                            addr215:
                                                                                                            loop15:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(param2.§>1§());
                                                                                                               loop22:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(_loc20_)
                                                                                                                  {
                                                                                                                     continue loop19;
                                                                                                                  }
                                                                                                                  if(_loc20_)
                                                                                                                  {
                                                                                                                     continue loop2;
                                                                                                                  }
                                                                                                                  if(!_loc20_)
                                                                                                                  {
                                                                                                                     §§push(Boolean(§§pop()));
                                                                                                                     continue loop1;
                                                                                                                  }
                                                                                                                  loop9:
                                                                                                                  while(_loc21_ || param2)
                                                                                                                  {
                                                                                                                     if(!_loc21_)
                                                                                                                     {
                                                                                                                        continue loop0;
                                                                                                                     }
                                                                                                                     §§push(Boolean(§§pop()));
                                                                                                                     loop10:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop());
                                                                                                                        addr288:
                                                                                                                        while(!_loc20_)
                                                                                                                        {
                                                                                                                           if(!§§pop())
                                                                                                                           {
                                                                                                                              addr291:
                                                                                                                              §§pop();
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(!(_loc20_ && param1))
                                                                                                                                 {
                                                                                                                                    if(!(_loc20_ && this))
                                                                                                                                    {
                                                                                                                                       §§push(param1.§'D§());
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(Boolean(§§pop()));
                                                                                                                                          addr252:
                                                                                                                                          while(_loc21_)
                                                                                                                                          {
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(!§§pop())
                                                                                                                                                {
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      addr29:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(this.§#X§(param1,param2));
                                                                                                                                                         if(!_loc20_)
                                                                                                                                                         {
                                                                                                                                                            if(!_loc20_)
                                                                                                                                                            {
                                                                                                                                                               if(_loc21_ || _loc3_)
                                                                                                                                                               {
                                                                                                                                                                  if(§§pop())
                                                                                                                                                                  {
                                                                                                                                                                     if(!_loc20_)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc20_)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop16;
                                                                                                                                                                        }
                                                                                                                                                                        if(!(_loc21_ || this))
                                                                                                                                                                        {
                                                                                                                                                                           §§push(param2.§'D§());
                                                                                                                                                                           break loop15;
                                                                                                                                                                           addr351:
                                                                                                                                                                        }
                                                                                                                                                                        addr58:
                                                                                                                                                                        §§push(false);
                                                                                                                                                                        if(!(_loc21_ || _loc3_))
                                                                                                                                                                        {
                                                                                                                                                                           continue loop1;
                                                                                                                                                                        }
                                                                                                                                                                        if(!(_loc21_ || this))
                                                                                                                                                                        {
                                                                                                                                                                           continue loop22;
                                                                                                                                                                        }
                                                                                                                                                                        if(_loc21_ || _loc3_)
                                                                                                                                                                        {
                                                                                                                                                                           return §§pop();
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     else
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc20_ && this)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop17;
                                                                                                                                                                        }
                                                                                                                                                                        if(_loc20_)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop30;
                                                                                                                                                                        }
                                                                                                                                                                        if(_loc21_)
                                                                                                                                                                        {
                                                                                                                                                                           if(true)
                                                                                                                                                                           {
                                                                                                                                                                              break;
                                                                                                                                                                           }
                                                                                                                                                                           continue loop15;
                                                                                                                                                                        }
                                                                                                                                                                        addr273:
                                                                                                                                                                        addr256:
                                                                                                                                                                        §§push(param1);
                                                                                                                                                                        §§push(param1.§+?§);
                                                                                                                                                                        if(_loc21_ || param2)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() * 2);
                                                                                                                                                                        }
                                                                                                                                                                        §§pop().applyDamage(§§pop(),true,true,true,false);
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(true);
                                                                                                                                                                           §§goto(addr239);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     return §§pop();
                                                                                                                                                                  }
                                                                                                                                                                  break;
                                                                                                                                                               }
                                                                                                                                                               continue loop31;
                                                                                                                                                            }
                                                                                                                                                            addr198:
                                                                                                                                                            while(!(_loc20_ && this))
                                                                                                                                                            {
                                                                                                                                                               continue loop10;
                                                                                                                                                            }
                                                                                                                                                            continue loop4;
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr58);
                                                                                                                                                      }
                                                                                                                                                      break loop40;
                                                                                                                                                   }
                                                                                                                                                   addr216:
                                                                                                                                                }
                                                                                                                                                §§goto(addr256);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          break loop15;
                                                                                                                                       }
                                                                                                                                       addr251:
                                                                                                                                    }
                                                                                                                                    §§goto(addr334);
                                                                                                                                 }
                                                                                                                                 §§goto(addr274);
                                                                                                                              }
                                                                                                                              addr292:
                                                                                                                           }
                                                                                                                           §§goto(addr254);
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(!§§pop())
                                                                                                                           {
                                                                                                                              break loop9;
                                                                                                                           }
                                                                                                                           addr315:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§goto(addr316);
                                                                                                                           }
                                                                                                                           §§goto(addr274);
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§pop();
                                                                                                                     §§goto(addr351);
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§goto(addr315);
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr29);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr29);
                                                                                             }
                                                                                             addr117:
                                                                                          }
                                                                                          §§goto(addr198);
                                                                                       }
                                                                                       §§goto(addr288);
                                                                                    }
                                                                                    §§goto(addr291);
                                                                                 }
                                                                                 §§goto(addr252);
                                                                              }
                                                                              addr178:
                                                                           }
                                                                           §§goto(addr347);
                                                                        }
                                                                     }
                                                                     §§goto(addr317);
                                                                  }
                                                                  §§goto(addr273);
                                                               }
                                                               §§goto(addr216);
                                                            }
                                                         }
                                                         §§goto(addr29);
                                                      }
                                                      addr150:
                                                   }
                                                   §§goto(addr178);
                                                }
                                                break;
                                             }
                                             var _loc3_:* = §§pop();
                                             §§push(param1.§ if§(param2.§7<§()));
                                             if(_loc21_)
                                             {
                                                §§push(Number(§§pop()));
                                             }
                                             var _loc4_:* = §§pop();
                                             §§push(param1.§'!'§(param2.§7<§()));
                                             if(!(_loc20_ && param2))
                                             {
                                                §§push(Number(§§pop()));
                                             }
                                             var _loc5_:* = §§pop();
                                             §§push(param2.§ if§(param1.§7<§()));
                                             if(!_loc20_)
                                             {
                                                §§push(Number(§§pop()));
                                             }
                                             var _loc6_:* = §§pop();
                                             §§push(param2.§'!'§(param1.§7<§()));
                                             if(_loc21_ || this)
                                             {
                                                §§push(Number(§§pop()));
                                             }
                                             var _loc7_:* = §§pop();
                                             §§push(param1.§?!7§().GetMass());
                                             if(_loc21_ || param1)
                                             {
                                                §§push(param1.§?!7§());
                                                if(_loc21_ || _loc3_)
                                                {
                                                   §§push(§§pop().GetLinearVelocity().x);
                                                   if(_loc21_)
                                                   {
                                                      addr442:
                                                      §§push(§§pop() * §§pop());
                                                      if(_loc21_)
                                                      {
                                                         addr425:
                                                         §§push(param2.§?!7§().GetMass());
                                                         if(_loc21_)
                                                         {
                                                            §§push(§§pop() * param2.§?!7§().GetLinearVelocity().x);
                                                         }
                                                      }
                                                      var _loc8_:* = §§pop();
                                                      §§push(param1.§?!7§().GetMass());
                                                      if(_loc21_)
                                                      {
                                                         §§push(param1.§?!7§());
                                                         if(_loc21_ || param1)
                                                         {
                                                            §§push(§§pop().GetLinearVelocity().y);
                                                            if(_loc21_)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(!(_loc20_ && param2))
                                                               {
                                                                  addr471:
                                                                  §§push(param2.§?!7§().GetMass());
                                                                  if(_loc21_)
                                                                  {
                                                                     addr474:
                                                                     §§push(§§pop() * param2.§?!7§().GetLinearVelocity().y);
                                                                  }
                                                                  §§push(§§pop() - §§pop());
                                                                  if(_loc21_ || param1)
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                               }
                                                               var _loc9_:* = §§pop();
                                                               §§push(Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_) / _loc3_);
                                                               if(!(_loc20_ && param2))
                                                               {
                                                                  §§push(Number(§§pop()));
                                                               }
                                                               var _loc10_:* = §§pop();
                                                               §§push(_loc4_);
                                                               if(_loc21_ || _loc3_)
                                                               {
                                                                  §§push(§§pop() * _loc10_);
                                                                  if(_loc21_ || param2)
                                                                  {
                                                                     addr526:
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                                  var _loc11_:* = §§pop();
                                                                  §§push(_loc6_);
                                                                  if(_loc21_ || _loc3_)
                                                                  {
                                                                     §§push(§§pop() * _loc10_);
                                                                     if(_loc21_)
                                                                     {
                                                                        addr540:
                                                                        §§push(Number(§§pop()));
                                                                     }
                                                                     var _loc12_:* = §§pop();
                                                                     var _loc13_:Number = Math.max(0,param1.§,!&§);
                                                                     var _loc14_:Number = Math.max(0,param2.§,!&§);
                                                                     §§push(param1.applyDamage(_loc12_,true,param2.§>!K§(),_loc14_ == param2.§+?§));
                                                                     if(_loc21_)
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                     }
                                                                     var _loc15_:* = §§pop();
                                                                     §§push(param2.applyDamage(_loc11_,true,param1.§>!K§(),_loc13_ == param1.§+?§));
                                                                     if(!(_loc20_ && param1))
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                     }
                                                                     var _loc16_:* = §§pop();
                                                                     var _loc17_:Boolean;
                                                                     §§push(_loc17_ = false);
                                                                     if(!_loc20_)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           if(!(_loc20_ && _loc3_))
                                                                           {
                                                                              § #§.log("--- NEW COLLISION ---");
                                                                              if(_loc21_)
                                                                              {
                                                                                 §§push(§ #§);
                                                                                 §§push("Mat Dam Factor1 = " + _loc4_);
                                                                                 if(!_loc20_)
                                                                                 {
                                                                                    §§push(§§pop() + " Mat Dam Factor2 = ");
                                                                                    if(!(_loc20_ && param1))
                                                                                    {
                                                                                       §§push(_loc6_);
                                                                                       if(_loc21_ || param1)
                                                                                       {
                                                                                          §§push(§§pop() + §§pop());
                                                                                          if(_loc21_ || param2)
                                                                                          {
                                                                                             §§push(§§pop() + " Mat Vel Factor1 = ");
                                                                                             if(!_loc20_)
                                                                                             {
                                                                                                §§push(_loc5_);
                                                                                                if(!(_loc20_ && param1))
                                                                                                {
                                                                                                   addr1263:
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                   if(!_loc20_)
                                                                                                   {
                                                                                                      addr1276:
                                                                                                      §§push(§§pop() + " Mat Vel Factor2 = ");
                                                                                                      if(!_loc21_)
                                                                                                      {
                                                                                                      }
                                                                                                      addr1282:
                                                                                                      §§pop().log(§§pop());
                                                                                                      loop41:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§ #§);
                                                                                                         §§push("Object1: " + param1.§2!1§);
                                                                                                         if(_loc21_)
                                                                                                         {
                                                                                                            §§push(§§pop() + " force1 = ");
                                                                                                            if(_loc21_)
                                                                                                            {
                                                                                                               §§push(_loc11_);
                                                                                                               if(_loc21_)
                                                                                                               {
                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                  if(!_loc20_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() + " obj health1 = ");
                                                                                                                     if(_loc21_ || this)
                                                                                                                     {
                                                                                                                     }
                                                                                                                     addr1207:
                                                                                                                     §§push(§§pop() + " new health1 = ");
                                                                                                                     if(!(_loc20_ && param1))
                                                                                                                     {
                                                                                                                        addr1216:
                                                                                                                        §§push(§§pop() + _loc15_);
                                                                                                                     }
                                                                                                                     §§pop().log(§§pop());
                                                                                                                     loop42:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§ #§);
                                                                                                                        §§push("Object2: " + param2.§2!1§);
                                                                                                                        if(_loc21_ || param2)
                                                                                                                        {
                                                                                                                           §§push(§§pop() + " force2 = ");
                                                                                                                           if(!_loc20_)
                                                                                                                           {
                                                                                                                              §§push(_loc12_);
                                                                                                                              if(!(_loc20_ && this))
                                                                                                                              {
                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                 if(!(_loc20_ && this))
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() + " obj health2 = ");
                                                                                                                                    if(!_loc20_)
                                                                                                                                    {
                                                                                                                                       §§push(_loc14_);
                                                                                                                                       if(!_loc20_)
                                                                                                                                       {
                                                                                                                                          addr1153:
                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                          if(!(_loc20_ && _loc3_))
                                                                                                                                          {
                                                                                                                                             addr1172:
                                                                                                                                             §§push(§§pop() + " new health2 = ");
                                                                                                                                             if(!(_loc20_ && this))
                                                                                                                                             {
                                                                                                                                                addr1170:
                                                                                                                                                §§push(_loc16_);
                                                                                                                                             }
                                                                                                                                             §§pop().log(§§pop());
                                                                                                                                             loop43:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                addr1106:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc15_);
                                                                                                                                                   loop97:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(0);
                                                                                                                                                      loop87:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() <= §§pop());
                                                                                                                                                         loop88:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            addr1110:
                                                                                                                                                            if(§§pop())
                                                                                                                                                            {
                                                                                                                                                               loop89:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§pop();
                                                                                                                                                                  loop90:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc12_);
                                                                                                                                                                     if(_loc21_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(0);
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() == §§pop());
                                                                                                                                                                           addr1049:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(!§§pop());
                                                                                                                                                                              addr1050:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!(_loc20_ && this))
                                                                                                                                                                                 {
                                                                                                                                                                                    break loop88;
                                                                                                                                                                                 }
                                                                                                                                                                                 continue loop88;
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        addr1048:
                                                                                                                                                                     }
                                                                                                                                                                     loop84:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        addr1093:
                                                                                                                                                                        §§push(Number(§§pop() * _loc7_));
                                                                                                                                                                        addr1096:
                                                                                                                                                                        §§push(Number(§§pop() * _loc7_));
                                                                                                                                                                        loop85:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           _loc18_ = §§pop();
                                                                                                                                                                           addr1097:
                                                                                                                                                                           addr1069:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              addr1098:
                                                                                                                                                                              §§push(1);
                                                                                                                                                                              if(_loc21_)
                                                                                                                                                                              {
                                                                                                                                                                                 break loop85;
                                                                                                                                                                              }
                                                                                                                                                                              continue loop87;
                                                                                                                                                                           }
                                                                                                                                                                           §§push(_loc13_);
                                                                                                                                                                           if(!(_loc21_ || param1))
                                                                                                                                                                           {
                                                                                                                                                                              continue;
                                                                                                                                                                           }
                                                                                                                                                                           addr1078:
                                                                                                                                                                           §§push(§§pop() - §§pop());
                                                                                                                                                                           if(!(_loc21_ || param1))
                                                                                                                                                                           {
                                                                                                                                                                              continue loop97;
                                                                                                                                                                           }
                                                                                                                                                                           §§push(_loc12_);
                                                                                                                                                                           if(!_loc20_)
                                                                                                                                                                           {
                                                                                                                                                                              addr1089:
                                                                                                                                                                              §§push(Number(§§pop() / §§pop()));
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop());
                                                                                                                                                                                 §§goto(addr1089);
                                                                                                                                                                              }
                                                                                                                                                                              addr1090:
                                                                                                                                                                           }
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              _loc18_ = §§pop();
                                                                                                                                                                              continue loop84;
                                                                                                                                                                           }
                                                                                                                                                                           addr1091:
                                                                                                                                                                        }
                                                                                                                                                                        if(§§pop() > §§pop())
                                                                                                                                                                        {
                                                                                                                                                                           addr1103:
                                                                                                                                                                           _loc18_ = Number(1);
                                                                                                                                                                           addr1102:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                           }
                                                                                                                                                                           addr1104:
                                                                                                                                                                        }
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc17_);
                                                                                                                                                                           loop46:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              if(!_loc21_)
                                                                                                                                                                              {
                                                                                                                                                                                 continue loop89;
                                                                                                                                                                              }
                                                                                                                                                                              if(§§pop())
                                                                                                                                                                              {
                                                                                                                                                                                 loop47:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§ #§);
                                                                                                                                                                                    §§push(param1.§2!1§ + " is killed. Speed Multiplier for ");
                                                                                                                                                                                    if(_loc21_ || _loc3_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() + param2.§2!1§);
                                                                                                                                                                                       if(!(_loc20_ && param1))
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() + " is ");
                                                                                                                                                                                          if(_loc21_ || param1)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr1037:
                                                                                                                                                                                             §§push(§§pop() + _loc18_);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§pop().log(§§pop());
                                                                                                                                                                                          loop48:
                                                                                                                                                                                          for(; _loc21_; while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!(_loc20_ && param1))
                                                                                                                                                                                             {
                                                                                                                                                                                                break loop87;
                                                                                                                                                                                             }
                                                                                                                                                                                             break;
                                                                                                                                                                                             loop72:
                                                                                                                                                                                             while(!(_loc20_ && this))
                                                                                                                                                                                             {
                                                                                                                                                                                                loop61:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc17_);
                                                                                                                                                                                                   loop62:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(§§pop())
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc21_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!_loc20_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!_loc20_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§ #§);
                                                                                                                                                                                                                     §§push(param2.§2!1§ + " is killed. Speed Multiplier for ");
                                                                                                                                                                                                                     if(_loc21_ || param1)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(§§pop() + param1.§2!1§);
                                                                                                                                                                                                                        if(!_loc20_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(§§pop() + " is ");
                                                                                                                                                                                                                           if(_loc21_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr782:
                                                                                                                                                                                                                              §§push(§§pop() + _loc19_);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§pop().log(§§pop());
                                                                                                                                                                                                                           loop63:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(!_loc20_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!_loc20_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    continue loop42;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 continue loop43;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              loop60:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!_loc21_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    continue loop90;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§push(1);
                                                                                                                                                                                                                                 if(!_loc20_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr924:
                                                                                                                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                                                                                                                    while(!_loc20_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       _loc19_ = §§pop();
                                                                                                                                                                                                                                       continue loop72;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    while(!_loc20_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(0);
                                                                                                                                                                                                                                       loop53:
                                                                                                                                                                                                                                       while(_loc21_ || this)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(§§pop() <= §§pop());
                                                                                                                                                                                                                                          if(!_loc20_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(§§pop());
                                                                                                                                                                                                                                             loop54:
                                                                                                                                                                                                                                             while(_loc21_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(!§§pop())
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   loop55:
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(§§pop())
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         break loop62;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      loop73:
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(_loc15_);
                                                                                                                                                                                                                                                         loop74:
                                                                                                                                                                                                                                                         for(; _loc21_; §§push(_loc16_),if(!_loc21_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            continue;
                                                                                                                                                                                                                                                         },if(!_loc20_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(_loc21_ || param2)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(0);
                                                                                                                                                                                                                                                               if(!_loc20_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(_loc21_ || param1)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(_loc20_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        continue loop53;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr633);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(§§pop() == §§pop());
                                                                                                                                                                                                                                                                     if(_loc21_ || param2)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(_loc21_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(_loc20_ && param2)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              break;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§push(!§§pop());
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        else
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           addr954:
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§pop();
                                                                                                                                                                                                                                                                              continue loop43;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           addr954:
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr832);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  continue loop46;
                                                                                                                                                                                                                                                                  addr814:
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr688);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr894);
                                                                                                                                                                                                                                                         },§§goto(addr908))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(_loc21_ || param2)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(!(_loc20_ && param2))
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  addr680:
                                                                                                                                                                                                                                                                  if(!(_loc20_ && param1))
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(0);
                                                                                                                                                                                                                                                                     while(!_loc20_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(_loc20_ && _loc3_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           break loop73;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§push(§§pop() <= §§pop());
                                                                                                                                                                                                                                                                        loop76:
                                                                                                                                                                                                                                                                        for(; _loc21_; if(_loc21_ || param1)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           addr658:
                                                                                                                                                                                                                                                                        },continue,return §§pop())
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(_loc21_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(§§pop());
                                                                                                                                                                                                                                                                              if(_loc20_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 continue loop54;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              if(!§§pop())
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§goto(addr658);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              while(!_loc20_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§pop();
                                                                                                                                                                                                                                                                                    if(_loc21_ || param2)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(!_loc20_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(_loc21_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             continue loop74;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          continue loop72;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       continue loop63;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    addr749:
                                                                                                                                                                                                                                                                                    while(!_loc20_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       continue loop73;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    continue loop47;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§push(§§pop() <= §§pop());
                                                                                                                                                                                                                                                                                 if(_loc21_ || param2)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    continue loop76;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr1049);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           else
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(_loc21_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    continue loop55;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              addr832:
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr1050);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        continue loop62;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     addr688:
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  else
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(§§pop());
                                                                                                                                                                                                                                                                        if(!(_loc20_ && param1))
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           _loc19_ = §§pop();
                                                                                                                                                                                                                                                                           addr894:
                                                                                                                                                                                                                                                                           while(!_loc20_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(_loc5_);
                                                                                                                                                                                                                                                                              if(!_loc20_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 while(!(_loc20_ && param2))
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                       addr908:
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(§§pop());
                                                                                                                                                                                                                                                                                          addr909:
                                                                                                                                                                                                                                                                                          while(!_loc20_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(!_loc20_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                _loc19_ = §§pop();
                                                                                                                                                                                                                                                                                                addr914:
                                                                                                                                                                                                                                                                                                while(!_loc20_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(1);
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(§§pop() > §§pop())
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         continue loop60;
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      continue loop61;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr1089);
                                                                                                                                                                                                                                                                                                addr914:
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             else
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§goto(addr1093);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr1096);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr1091);
                                                                                                                                                                                                                                                                                 addr899:
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr909);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr1097);
                                                                                                                                                                                                                                                                           addr894:
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr909);
                                                                                                                                                                                                                                                                        §§goto(addr680);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     addr885:
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr917);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr907);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr914);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr924);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr1048);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr1110);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr954);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1098);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    addr924:
                                                                                                                                                                                                                                    §§goto(addr1090);
                                                                                                                                                                                                                                    addr937:
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1102);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              continue loop90;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           addr785:
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr782);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr761:
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1102);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            break;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr785);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      else
                                                                                                                                                                                                      {
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(param1);
                                                                                                                                                                                                            §§push(§§findproperty(b2Vec2));
                                                                                                                                                                                                            §§push(param1.§?!7§().GetLinearVelocity().x);
                                                                                                                                                                                                            if(!(_loc20_ && param1))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(_loc19_);
                                                                                                                                                                                                               if(_loc21_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr739:
                                                                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                                                                  §§push(param1.§?!7§().GetLinearVelocity().y);
                                                                                                                                                                                                                  if(_loc21_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§pop() * _loc19_);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§pop().§!-§(new §§pop().b2Vec2(§§pop(),§§pop()));
                                                                                                                                                                                                               §§goto(addr749);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr739);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr721:
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr749);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc11_);
                                                                                                                                                                                                      if(_loc21_ || param1)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc20_ && _loc3_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue loop84;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§push(_loc14_);
                                                                                                                                                                                                         if(!(_loc20_ && param2))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop() - §§pop());
                                                                                                                                                                                                            if(!(_loc20_ && param2))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc21_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(_loc11_);
                                                                                                                                                                                                                  if(!_loc20_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§pop() / §§pop());
                                                                                                                                                                                                                     if(!(_loc20_ && _loc3_))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!_loc20_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(_loc21_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§goto(addr885);
                                                                                                                                                                                                                              §§push(Number(§§pop()));
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr1093);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1103);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr914);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr909);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1078);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr894);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr899);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr924);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   continue loop84;
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                          })
                                                                                                                                                                                          {
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(param2);
                                                                                                                                                                                                §§push(§§findproperty(b2Vec2));
                                                                                                                                                                                                §§push(param2.§?!7§().GetLinearVelocity().x);
                                                                                                                                                                                                if(!_loc20_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc18_);
                                                                                                                                                                                                   if(!(_loc20_ && _loc3_))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr983:
                                                                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                                                                      §§push(param2.§?!7§().GetLinearVelocity().y);
                                                                                                                                                                                                      if(!_loc20_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop() * _loc18_);
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§pop().§!-§(new §§pop().b2Vec2(§§pop(),§§pop()));
                                                                                                                                                                                                   continue loop48;
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr983);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1104);
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1037);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr965);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            break;
                                                                                                                                                         }
                                                                                                                                                         while(§§pop())
                                                                                                                                                         {
                                                                                                                                                            if(_loc21_)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc12_);
                                                                                                                                                               if(!(_loc20_ && param2))
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr1069);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1097);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1103);
                                                                                                                                                         }
                                                                                                                                                         break;
                                                                                                                                                      }
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr937);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                while(_loc21_ || param1)
                                                                                                                                                {
                                                                                                                                                   if(!_loc21_)
                                                                                                                                                   {
                                                                                                                                                      continue loop41;
                                                                                                                                                   }
                                                                                                                                                   §§push(_loc11_);
                                                                                                                                                   if(!(_loc20_ && _loc3_))
                                                                                                                                                   {
                                                                                                                                                      if(!(_loc20_ && param1))
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr814);
                                                                                                                                                         §§push(0);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1093);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr907);
                                                                                                                                                   §§goto(addr954);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr1170);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1172);
                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                    }
                                                                                                                                    §§goto(addr1172);
                                                                                                                                 }
                                                                                                                                 §§goto(addr1170);
                                                                                                                              }
                                                                                                                              §§goto(addr1153);
                                                                                                                           }
                                                                                                                           §§goto(addr1172);
                                                                                                                        }
                                                                                                                        §§goto(addr1170);
                                                                                                                        if(!(_loc21_ || _loc3_))
                                                                                                                        {
                                                                                                                           continue;
                                                                                                                        }
                                                                                                                        §§goto(addr721);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§push(_loc13_);
                                                                                                                  if(_loc21_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                     if(!_loc20_)
                                                                                                                     {
                                                                                                                        §§goto(addr1207);
                                                                                                                     }
                                                                                                                     §§goto(addr1216);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr1216);
                                                                                                            }
                                                                                                            §§goto(addr1207);
                                                                                                         }
                                                                                                         §§goto(addr1216);
                                                                                                      }
                                                                                                   }
                                                                                                   §§push(_loc7_);
                                                                                                }
                                                                                                §§goto(addr1282);
                                                                                                §§push(§§pop() + §§pop());
                                                                                             }
                                                                                             §§goto(addr1282);
                                                                                          }
                                                                                          §§goto(addr1276);
                                                                                       }
                                                                                       §§goto(addr1263);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr1276);
                                                                              }
                                                                              §§goto(addr1103);
                                                                           }
                                                                           §§goto(addr761);
                                                                        }
                                                                        §§goto(addr1106);
                                                                     }
                                                                     §§goto(addr708);
                                                                  }
                                                                  §§goto(addr540);
                                                               }
                                                               §§goto(addr526);
                                                            }
                                                            §§goto(addr474);
                                                         }
                                                      }
                                                      §§goto(addr471);
                                                   }
                                                   §§push(§§pop() - §§pop());
                                                   if(!(_loc20_ && this))
                                                   {
                                                      §§goto(addr442);
                                                      §§push(Number(§§pop()));
                                                   }
                                                   §§goto(addr442);
                                                }
                                                §§goto(addr425);
                                             }
                                             §§goto(addr442);
                                             addr236:
                                          }
                                          §§goto(addr292);
                                       }
                                    }
                                    §§goto(addr251);
                                 }
                              }
                              §§goto(addr150);
                           }
                        }
                     }
                     addr239:
                     while(!(_loc21_ || param2))
                     {
                        while(true)
                        {
                           if(§§pop())
                           {
                              loop35:
                              while(true)
                              {
                                 §§push(param2);
                                 §§push(param2.§+?§);
                                 if(!(_loc20_ && param1))
                                 {
                                    §§push(§§pop() * 2);
                                 }
                                 §§pop().applyDamage(§§pop(),true,true,true,false);
                                 addr334:
                                 while(true)
                                 {
                                    if(!(_loc20_ && this))
                                    {
                                       §§push(true);
                                       break;
                                    }
                                    addr345:
                                    while(true)
                                    {
                                       §§push(param1.§@m§());
                                       addr347:
                                       while(true)
                                       {
                                          §§push(Boolean(§§pop()));
                                          addr348:
                                          while(true)
                                          {
                                             §§push(§§pop());
                                             break loop11;
                                          }
                                       }
                                    }
                                    continue loop35;
                                 }
                              }
                              addr317:
                           }
                           else
                           {
                              addr274:
                              while(true)
                              {
                                 continue loop9;
                              }
                              addr274:
                           }
                        }
                     }
                     return §§pop();
                  }
               }
               §§goto(addr345);
            }
         }
         §§goto(addr236);
      }
      
      public function §>B§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§+0§ = null;
         var _loc1_:* = int(this.§=U§.length - 1);
         loop0:
         for(; _loc1_ >= 0; if(true)
         {
            continue;
         },§§goto(addr68))
         {
            _loc2_ = this.§=U§[_loc1_] as §+0§;
            if(!_loc4_)
            {
               §§push(_loc2_ == null);
               if(!_loc4_)
               {
                  §§push(!§§pop());
                  loop1:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(!(_loc4_ && _loc2_))
                              {
                                 if(!_loc4_)
                                 {
                                    this.removeObjectWithIndex(_loc1_,true,true,true);
                                 }
                                 else
                                 {
                                    loop7:
                                    while(true)
                                    {
                                       addr68:
                                       while(true)
                                       {
                                          §§push(_loc2_.§'D§());
                                          if(!(_loc3_ || this))
                                          {
                                             break;
                                          }
                                          if(!(_loc4_ && _loc1_))
                                          {
                                             §§push(Boolean(§§pop()));
                                             break;
                                          }
                                          addr129:
                                          while(true)
                                          {
                                             §§pop();
                                             continue loop7;
                                          }
                                          continue loop7;
                                       }
                                       continue loop1;
                                    }
                                    addr130:
                                 }
                              }
                              loop3:
                              while(true)
                              {
                                 addr38:
                                 while(true)
                                 {
                                    §§push(_loc1_);
                                    if(!(_loc4_ && _loc3_))
                                    {
                                       §§push(§§pop() - 1);
                                    }
                                    _loc1_ = §§pop();
                                    if(_loc3_ || this)
                                    {
                                       break;
                                    }
                                    continue loop3;
                                 }
                                 continue loop0;
                              }
                           }
                           §§goto(addr38);
                        }
                        continue;
                        addr93:
                     }
                  }
               }
               §§goto(addr129);
            }
            §§goto(addr130);
         }
      }
      
      public function §<v§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§+0§ = null;
         var _loc1_:* = int(this.§=U§.length - 1);
         loop0:
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§=U§[_loc1_] as §+0§;
            if(!_loc4_)
            {
               §§push(_loc2_ == null);
               while(true)
               {
                  §§push(!§§pop());
                  if(_loc3_ || this)
                  {
                     if(!§§pop())
                     {
                        loop2:
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(_loc3_ || _loc1_)
                              {
                                 this.removeObjectWithIndex(_loc1_,true,true,true);
                              }
                              loop3:
                              while(true)
                              {
                                 addr38:
                                 while(true)
                                 {
                                    §§push(_loc1_);
                                    if(_loc3_ || this)
                                    {
                                       §§push(§§pop() - 1);
                                    }
                                    _loc1_ = §§pop();
                                    if(_loc3_)
                                    {
                                       break;
                                    }
                                    continue loop3;
                                 }
                                 if(!(_loc4_ && _loc2_))
                                 {
                                    while(false)
                                    {
                                       while(true)
                                       {
                                          §§push(_loc2_.§1!'§());
                                          if(_loc3_)
                                          {
                                             §§push(Boolean(§§pop()));
                                          }
                                          if(!_loc4_)
                                          {
                                             continue loop2;
                                          }
                                          addr124:
                                          addr124:
                                          while(true)
                                          {
                                             §§pop();
                                          }
                                       }
                                    }
                                    continue loop0;
                                    addr68:
                                 }
                                 while(true)
                                 {
                                    §§goto(addr70);
                                    §§goto(addr124);
                                 }
                                 continue loop2;
                              }
                           }
                           §§goto(addr38);
                        }
                        continue;
                        addr85:
                     }
                  }
                  §§goto(addr124);
               }
            }
            §§goto(addr68);
         }
      }
      
      public function §0!D§() : int
      {
         return this.§=U§.length;
      }
      
      public function §%!B§(param1:§&!]§) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc4_:§+0§ = null;
         var _loc5_:§`u§ = null;
         var _loc6_:§8C§ = null;
         var _loc7_:§8U§ = null;
         var _loc2_:* = Number(0);
         loop0:
         while(true)
         {
            §§push(_loc2_);
            if(_loc9_ || param1)
            {
               if(§§pop() >= this.§=U§.length)
               {
                  §§push(Number(0));
                  break;
               }
               §§push((_loc4_ = this.§=U§[_loc2_]).§;!Y§);
               if(_loc9_)
               {
                  if(!§§pop())
                  {
                     if(!(_loc9_ || _loc3_))
                     {
                        continue;
                     }
                  }
                  else
                  {
                     addr55:
                     if(_loc4_.isGround())
                     {
                        if(!(_loc9_ || param1))
                        {
                           continue;
                        }
                     }
                     else
                     {
                        (_loc5_ = new §`u§()).angle = _loc4_.§%4§();
                        if(_loc9_)
                        {
                           _loc5_.id = _loc4_.§2!1§;
                        }
                        while(true)
                        {
                           _loc5_.x = _loc4_.§?!7§().GetPosition().x;
                           while(!_loc8_)
                           {
                              _loc5_.y = _loc4_.§?!7§().GetPosition().y;
                              while(_loc9_)
                              {
                                 while(true)
                                 {
                                    _loc5_.uniqueID = _loc4_.uniqueID;
                                    do
                                    {
                                       param1.addObject(_loc5_);
                                    }
                                    while(!(_loc9_ || _loc3_));
                                    
                                    if(!_loc9_)
                                    {
                                       break;
                                    }
                                    if(false)
                                    {
                                       continue;
                                    }
                                    addr131:
                                    §§push(_loc2_);
                                    if(_loc9_)
                                    {
                                       §§push(§§pop() + 1);
                                       if(_loc9_)
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
                  §§goto(addr131);
               }
               §§goto(addr55);
            }
            break;
         }
         var _loc3_:* = §§pop();
         if(_loc9_)
         {
            while(_loc3_ < this.§[%§.length)
            {
               _loc7_ = this.§[%§[_loc3_];
               _loc6_ = new §8C§(_loc7_.type,_loc7_.index1,_loc7_.index2,_loc7_.point1,_loc7_.point2,_loc7_.§]!,§,_loc7_.§ h§,_loc7_.lowerLimit,_loc7_.upperLimit,_loc7_.§5Q§,_loc7_.motorSpeed,_loc7_.§6!'§,_loc7_.maxTorque);
               if(!_loc9_)
               {
                  continue;
               }
               param1.§9!U§(_loc6_);
               if(!(_loc9_ || _loc3_))
               {
                  continue;
               }
               §§push(_loc3_);
               if(!(_loc8_ && this))
               {
                  §§push(§§pop() + 1);
                  if(!_loc8_)
                  {
                     addr227:
                     §§push(Number(§§pop()));
                  }
                  _loc3_ = §§pop();
                  continue;
               }
               §§goto(addr227);
            }
         }
      }
      
      public function §var§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:int = 0;
         while(true)
         {
            if(this.§=U§.length <= _loc1_)
            {
               if(!(_loc2_ && _loc2_))
               {
                  if(!(_loc2_ && this))
                  {
                     break;
                  }
                  continue;
                  addr89:
               }
            }
            else if(this.§=U§[_loc1_].isGround())
            {
               if(_loc3_ || _loc2_)
               {
                  _loc1_++;
               }
               §§goto(addr89);
            }
            else
            {
               this.§"!>§(this.§=U§[_loc1_]);
            }
         }
      }
      
      public function §'!A§(param1:Point, param2:Point) : Array
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:Array = new Array();
         var _loc4_:* = Number(0);
         while(true)
         {
            §§push(_loc4_);
            if(_loc6_ || param1)
            {
               if(§§pop() >= this.§=U§.length)
               {
                  if(_loc6_)
                  {
                     if(!(_loc5_ && param2))
                     {
                        break;
                     }
                     addr104:
                     _loc3_.push(this.§=U§[_loc4_]);
                     while(true)
                     {
                        addr61:
                        while(true)
                        {
                           §§push(_loc4_);
                           if(_loc6_ || param2)
                           {
                              §§push(§§pop() + 1);
                              if(!_loc5_)
                              {
                                 addr74:
                                 §§push(Number(§§pop()));
                                 while(true)
                                 {
                                    _loc4_ = §§pop();
                                 }
                                 addr74:
                              }
                           }
                           §§goto(addr74);
                        }
                     }
                     addr110:
                  }
                  while(_loc5_)
                  {
                     §§goto(addr110);
                  }
                  continue;
               }
               if(this.§=U§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
               {
                  §§goto(addr104);
               }
               §§goto(addr61);
            }
            §§goto(addr74);
         }
         return _loc3_;
      }
      
      public function setGroundTextureEnabled(param1:Boolean) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            this.§2Z§ = param1;
            if(!_loc4_)
            {
               this.§0!§(param1);
            }
         }
         var _loc2_:* = Number(0);
         while(true)
         {
            §§push(_loc2_);
            if(_loc3_ || _loc3_)
            {
               if(§§pop() >= this.§=U§.length)
               {
                  if(!(_loc3_ || this))
                  {
                     continue;
                  }
                  if(_loc3_)
                  {
                     break;
                  }
                  addr119:
               }
               else if(this.§=U§[_loc2_].isTexture())
               {
                  if(_loc3_ || param1)
                  {
                     this.§=U§[_loc2_].sprite.visible = !this.§2Z§;
                  }
                  §§goto(addr119);
               }
               §§push(_loc2_);
               if(_loc3_ || _loc2_)
               {
                  §§push(§§pop() + 1);
                  if(!_loc4_)
                  {
                     §§push(Number(§§pop()));
                  }
               }
            }
            _loc2_ = §§pop();
         }
      }
      
      public function setDamageEnabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§4! § = param1;
         }
      }
      
      public function §6!4§() : Boolean
      {
         return this.§4! §;
      }
      
      public function §8!?§() : int
      {
         return this.§&! §;
      }
      
      public function §#E§() : int
      {
         return this.§%!A§;
      }
      
      public function §8B§(param1:String) : §+0§
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§+0§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§=U§.length)
         {
            _loc3_ = this.§=U§[_loc2_] as §+0§;
            if(!(_loc5_ && param1))
            {
               if(_loc3_.uniqueID == param1)
               {
                  if(!(_loc5_ && _loc2_))
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
