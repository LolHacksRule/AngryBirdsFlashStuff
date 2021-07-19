package §-!7§
{
   import §%!$§.§=m§;
   import §,u§.§-!#§;
   import §,u§.§]!M§;
   import §2!-§.Texture;
   import §3]§.§8[§;
   import §4W§.§>c§;
   import §9"§.b2Vec2;
   import §9N§.§&!V§;
   import §9N§.§'!Q§;
   import §9N§.§9!%§;
   import §9N§.§^_§;
   import §<!+§.§with§;
   import §?7§.§!S§;
   import §?7§.§#!+§;
   import §?7§.§&!5§;
   import §?7§.§,!§;
   import §?7§.§=!5§;
   import §?f§.§,v§;
   import §?f§.§-&§;
   import §@,§.§4h§;
   import §`a§.§>?§;
   import §`a§.Sprite;
   import flash.display.BitmapData;
   import flash.display.BitmapDataChannel;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §&$§
   {
       
      
      protected var §5! §:Vector.<§@m§>;
      
      protected var §7!2§:int;
      
      public var §8@§:§9!%§;
      
      public var §6D§:Vector.<§?L§>;
      
      protected var §4R§:Sprite;
      
      protected var §-X§:Sprite;
      
      private var §67§:Sprite;
      
      private var §=!9§:Sprite;
      
      private var §`W§:Sprite;
      
      protected var §?j§:Vector.<Texture>;
      
      protected var §2j§:Vector.<§]!M§>;
      
      protected var §#!A§:int = 1;
      
      public var mMightyEagleAdded:Boolean = false;
      
      public var mMightyEagleHasTouchedGround:Boolean = false;
      
      public var §`P§:Boolean = false;
      
      public var mSardineCanAdded:Boolean = false;
      
      public var mMightyEagleTimer:Number = 0;
      
      protected var §#!4§:Boolean = false;
      
      protected var §[,§:Number = 0.07;
      
      protected var §#!0§:int;
      
      protected var §50§:int = 0;
      
      private var §4L§:int = 0;
      
      private var §#l§:int = 0;
      
      private var §-]§:Boolean = true;
      
      private var §7B§:Boolean = true;
      
      public function §&$§(param1:§9!%§, param2:§with§, param3:Sprite)
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         var _loc5_:§-!#§ = null;
         var _loc6_:§]!M§ = null;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:§@m§ = null;
         var _loc10_:§@m§ = null;
         if(!_loc14_)
         {
            this.§5! § = new Vector.<§@m§>();
            while(true)
            {
               this.§6D§ = new Vector.<§?L§>();
               loop1:
               while(true)
               {
                  this.§?j§ = new Vector.<Texture>();
                  while(true)
                  {
                     super();
                     continue loop1;
                     addr257:
                     if(_loc14_ && this)
                     {
                        continue;
                     }
                     §§push(this.§-X§);
                     loop7:
                     while(true)
                     {
                        §§pop().§=!;§ = false;
                        loop8:
                        while(true)
                        {
                           this.§7B§ = true;
                           loop9:
                           while(!_loc14_)
                           {
                              this.§-]§ = true;
                              while(!(_loc14_ && param3))
                              {
                                 this.§4R§ = new Sprite();
                                 while(true)
                                 {
                                    this.§67§ = new Sprite();
                                    while(true)
                                    {
                                       this.§=!9§ = new Sprite();
                                       loop13:
                                       while(_loc13_ || param1)
                                       {
                                          if(_loc14_)
                                          {
                                             continue loop8;
                                          }
                                          addr201:
                                          if(_loc13_ || param3)
                                          {
                                             this.§`W§ = new Sprite();
                                             while(true)
                                             {
                                                §§push(this.§-X§);
                                                loop15:
                                                while(true)
                                                {
                                                   §§pop().addChild(this.§4R§);
                                                   addr178:
                                                   while(_loc13_)
                                                   {
                                                      §§push(this.§-X§);
                                                      while(true)
                                                      {
                                                         §§pop().addChild(this.§67§);
                                                         addr171:
                                                         while(true)
                                                         {
                                                            §§push(this.§-X§);
                                                            continue loop15;
                                                         }
                                                         addr97:
                                                         if(!(_loc14_ && this))
                                                         {
                                                            continue loop7;
                                                         }
                                                      }
                                                   }
                                                   continue loop13;
                                                }
                                             }
                                             addr186:
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                this.§-X§ = param3;
                                                break loop9;
                                                §§goto(addr201);
                                             }
                                             addr269:
                                          }
                                       }
                                    }
                                 }
                                 if(!(_loc13_ || this))
                                 {
                                    continue;
                                 }
                                 if(!(_loc13_ || param1))
                                 {
                                    continue loop1;
                                 }
                                 §§goto(addr87);
                              }
                           }
                           addr250:
                           addr274:
                           while(_loc13_ || param3)
                           {
                              §§goto(addr257);
                           }
                           while(true)
                           {
                              this.§7!2§ = 0;
                              §§goto(addr269);
                              §§goto(addr250);
                           }
                        }
                     }
                  }
               }
               if(_loc14_ && this)
               {
                  continue;
               }
               §§push(this);
               §§push(§8[§.§8V§(param2.theme).§#!Q§);
               §§push(this.§8@§.§null §.§?H§);
               if(!(_loc14_ && param2))
               {
                  §§push(this.§8@§);
                  if(!_loc14_)
                  {
                     §§push(§§pop().§null §);
                     if(_loc13_)
                     {
                        §§push(§§pop().§'N§);
                        if(!(_loc14_ && param3))
                        {
                           addr76:
                           §§push(§§pop() + §§pop());
                           if(!_loc14_)
                           {
                              addr71:
                              §§push(§§pop() / 2);
                           }
                           §§push(this.§8@§.§null §.§;U§);
                           if(!_loc14_)
                           {
                              addr79:
                              §§push(§§pop() + §'!Q§.§5r§);
                           }
                           §§goto(addr82);
                        }
                        §§goto(addr79);
                     }
                  }
                  §§goto(addr76);
               }
               §§goto(addr71);
            }
         }
         §§goto(addr186);
      }
      
      public function get §[!M§() : Sprite
      {
         return this.§`W§;
      }
      
      public function get §1!+§() : Sprite
      {
         return this.§-X§;
      }
      
      public function dispose() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:Texture = null;
         loop0:
         while(true)
         {
            if(this.§5! §.length > 0)
            {
               this.removeObjectWithIndex(0);
               continue;
            }
            loop1:
            while(true)
            {
               this.§5! § = null;
               while(true)
               {
                  §§push(this.§-X§);
                  if(!(_loc3_ && _loc3_))
                  {
                     if(§§pop())
                     {
                        if(!_loc3_)
                        {
                           addr110:
                           this.§-X§.dispose();
                        }
                        loop3:
                        while(!_loc3_)
                        {
                           if(!_loc3_)
                           {
                              this.§-X§ = null;
                              while(true)
                              {
                                 if(_loc2_ || this)
                                 {
                                    if(_loc2_ || this)
                                    {
                                       this.§4R§ = null;
                                       if(!_loc3_)
                                       {
                                          this.§`W§ = null;
                                          loop5:
                                          while(true)
                                          {
                                             addr40:
                                             while(true)
                                             {
                                                this.§67§ = null;
                                                continue loop5;
                                             }
                                          }
                                       }
                                       return;
                                    }
                                    break;
                                 }
                                 continue loop3;
                              }
                              continue loop0;
                              continue;
                           }
                           continue loop1;
                        }
                        continue;
                     }
                     §§goto(addr132);
                  }
                  §§goto(addr110);
               }
            }
         }
      }
      
      private function §1Z§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§4R§.visible = param1;
         }
      }
      
      private function §[K§() : void
      {
         var _loc16_:Boolean = false;
         var _loc17_:Boolean = true;
         var _loc3_:§@m§ = null;
         var _loc4_:Rectangle = null;
         var _loc5_:* = NaN;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         var _loc8_:* = 0;
         var _loc9_:int = 0;
         var _loc10_:BitmapData = null;
         var _loc11_:BitmapData = null;
         var _loc12_:Texture = null;
         var _loc13_:§>?§ = null;
         var _loc1_:Rectangle = null;
         var _loc2_:Vector.<§@m§> = new Vector.<§@m§>();
         for each(_loc3_ in this.§5! §)
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
            _loc4_ = _loc3_.sprite.getBounds(this.§-X§);
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
                        loop4:
                        while(true)
                        {
                           loop5:
                           while(true)
                           {
                              §§push(_loc1_.width > 2048);
                              if(!_loc16_)
                              {
                                 if(!§§pop())
                                 {
                                    loop15:
                                    while(true)
                                    {
                                       §§pop();
                                       loop7:
                                       for(; _loc17_ || _loc3_; continue loop15)
                                       {
                                          if(_loc17_ || this)
                                          {
                                             addr264:
                                             §§push(_loc1_.height > 2048);
                                             if(_loc16_ && _loc2_)
                                             {
                                                continue loop15;
                                             }
                                             loop6:
                                             while(true)
                                             {
                                                if(!§§pop())
                                                {
                                                   if(_loc17_ || _loc1_)
                                                   {
                                                      if(!(_loc17_ || _loc1_))
                                                      {
                                                         continue loop7;
                                                      }
                                                      if(!(_loc16_ && this))
                                                      {
                                                         if(!_loc16_)
                                                         {
                                                            if(_loc16_)
                                                            {
                                                               continue loop4;
                                                            }
                                                            §§push(int(_loc1_.width));
                                                            while(true)
                                                            {
                                                               _loc6_ = §§pop();
                                                               break loop6;
                                                               addr163:
                                                               loop10:
                                                               while(!(_loc16_ && _loc3_))
                                                               {
                                                                  if(!(_loc16_ && _loc2_))
                                                                  {
                                                                     _loc7_ = §§pop();
                                                                     while(!(_loc16_ && _loc2_))
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§push(int(_loc1_.left));
                                                                           while(_loc17_ || _loc3_)
                                                                           {
                                                                              _loc8_ = §§pop();
                                                                              while(true)
                                                                              {
                                                                                 if(_loc16_)
                                                                                 {
                                                                                    break loop6;
                                                                                 }
                                                                                 continue loop1;
                                                                              }
                                                                              continue loop1;
                                                                           }
                                                                           continue loop10;
                                                                        }
                                                                        if(!(_loc17_ || _loc3_))
                                                                        {
                                                                           continue;
                                                                        }
                                                                        if(false)
                                                                        {
                                                                           §§goto(addr137);
                                                                        }
                                                                        else
                                                                        {
                                                                           addr323:
                                                                           _loc10_ = new BitmapData(_loc6_,_loc7_,true,0);
                                                                           if(!(_loc16_ && _loc3_))
                                                                           {
                                                                              this.§>,§(_loc10_.rect,_loc10_,_loc5_);
                                                                           }
                                                                           _loc11_ = this.§?k§(_loc2_,_loc6_,_loc7_,_loc8_,_loc9_,_loc5_);
                                                                           if(_loc17_ || _loc3_)
                                                                           {
                                                                              _loc10_.copyChannel(_loc11_,_loc11_.rect,new Point(0,0),BitmapDataChannel.ALPHA,BitmapDataChannel.ALPHA);
                                                                           }
                                                                           _loc12_ = this.§8@§.§#G§.§8E§(_loc10_);
                                                                           if(_loc17_ || _loc2_)
                                                                           {
                                                                              this.§?j§.push(_loc12_);
                                                                           }
                                                                           (_loc13_ = new §>?§(_loc12_)).x = _loc8_ / _loc5_;
                                                                           if(_loc17_ || this)
                                                                           {
                                                                              _loc13_.y = _loc9_ / _loc5_;
                                                                              while(true)
                                                                              {
                                                                                 _loc13_.scaleX = 1 / _loc5_;
                                                                                 while(_loc17_)
                                                                                 {
                                                                                    _loc13_.scaleY = 1 / _loc5_;
                                                                                    loop19:
                                                                                    while(true)
                                                                                    {
                                                                                       addr426:
                                                                                       while(true)
                                                                                       {
                                                                                          this.§4R§.addChild(_loc13_);
                                                                                          continue loop19;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr431);
                                                                        }
                                                                     }
                                                                     _loc1_.right /= 2;
                                                                     _loc1_.bottom /= 2;
                                                                     §§push(_loc5_);
                                                                     if(!_loc16_)
                                                                     {
                                                                        §§push(§§pop() / 2);
                                                                        if(!(_loc16_ && _loc3_))
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                        }
                                                                     }
                                                                     if(_loc17_)
                                                                     {
                                                                        _loc5_ = §§pop();
                                                                        break loop7;
                                                                     }
                                                                     break loop5;
                                                                     addr306:
                                                                     addr290:
                                                                     addr298:
                                                                  }
                                                                  continue loop2;
                                                               }
                                                            }
                                                         }
                                                         else
                                                         {
                                                            _loc1_.top /= 2;
                                                            §§goto(addr306);
                                                            addr316:
                                                         }
                                                      }
                                                      §§goto(addr290);
                                                   }
                                                   break;
                                                }
                                                _loc1_.left /= 2;
                                                §§goto(addr316);
                                                §§goto(addr264);
                                             }
                                             while(true)
                                             {
                                                §§goto(addr163);
                                             }
                                          }
                                          §§goto(addr298);
                                       }
                                       continue loop5;
                                    }
                                    addr249:
                                 }
                                 §§goto(addr198);
                              }
                              §§goto(addr249);
                           }
                           continue loop3;
                        }
                     }
                  }
               }
            }
            §§goto(addr464);
         }
         §§goto(addr158);
      }
      
      private function §?k§(param1:Vector.<§@m§>, param2:int, param3:int, param4:int, param5:int, param6:Number) : BitmapData
      {
         var _loc16_:Boolean = true;
         var _loc17_:Boolean = false;
         var _loc7_:§@m§ = null;
         var _loc11_:§!S§ = null;
         var _loc12_:Array = null;
         var _loc13_:Rectangle = null;
         var _loc8_:BitmapData = new BitmapData(param2,param3,true,0);
         var _loc9_:BitmapData = new BitmapData(1,1,true,4294967295);
         var _loc10_:Matrix = new Matrix();
         loop0:
         for each(_loc7_ in param1)
         {
            _loc12_ = (_loc11_ = _loc7_.§8!Q§.shape).§!!<§();
            _loc13_ = new Rectangle(_loc12_[0].x / §9!%§.§catch§ * param6,_loc12_[0].y / §9!%§.§catch§ * param6,(_loc12_[1].x - _loc12_[0].x) / §9!%§.§catch§ * param6,(_loc12_[1].y - _loc12_[0].y) / §9!%§.§catch§ * param6);
            if(_loc16_ || param1)
            {
               _loc10_.identity();
               while(true)
               {
                  _loc10_.scale(_loc13_.width,_loc13_.height);
               }
               addr214:
            }
            loop2:
            while(true)
            {
               _loc10_.translate(-_loc13_.width / 2,-_loc13_.height / 2);
               while(_loc16_)
               {
                  _loc10_.rotate((360 - _loc7_.§?!"§()) / 180 * Math.PI);
                  loop4:
                  while(_loc16_)
                  {
                     do
                     {
                        _loc10_.translate(_loc7_.sprite.x * param6 - param4,_loc7_.sprite.y * param6 - param5);
                        while(!_loc17_)
                        {
                           _loc8_.draw(_loc9_,_loc10_);
                           if(_loc16_)
                           {
                              if(_loc17_ && param1)
                              {
                                 continue loop4;
                              }
                              §§goto(addr151);
                              continue loop4;
                           }
                        }
                        continue loop2;
                     }
                     while(false);
                     
                     continue loop0;
                  }
               }
               §§goto(addr214);
            }
         }
         if(_loc16_ || param3)
         {
            _loc9_.dispose();
         }
         return _loc8_;
      }
      
      private function §>,§(param1:Rectangle, param2:BitmapData, param3:Number) : void
      {
         var _loc16_:Boolean = true;
         var _loc17_:Boolean = false;
         var _loc6_:BitmapData = null;
         var _loc7_:Matrix = null;
         var _loc8_:* = 0;
         var _loc9_:* = 0;
         var _loc10_:* = 0;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:int = 0;
         var _loc14_:int = 0;
         var _loc15_:int = 0;
         §§push(this.§8@§.background.§]!S§());
         if(_loc16_ || param3)
         {
            §§push(§§pop());
         }
         var _loc4_:* = §§pop();
         var _loc5_:§>c§;
         if(_loc5_ = this.§8@§.§4w§.§]]§(_loc4_))
         {
            _loc6_ = new BitmapData(_loc5_.bitmapData.width * param3,_loc5_.bitmapData.height * param3);
            (_loc7_ = new Matrix()).scale(param3,param3);
            if(!_loc17_)
            {
               _loc6_.draw(_loc5_.bitmapData,_loc7_);
               loop0:
               while(true)
               {
                  §§push(_loc6_.width - 2);
                  while(true)
                  {
                     §§push(int(§§pop()));
                     while(true)
                     {
                        _loc8_ = §§pop();
                        while(true)
                        {
                           §§push(_loc6_.height - 2);
                           loop4:
                           while(true)
                           {
                              §§push(int(§§pop()));
                              addr402:
                              while(true)
                              {
                                 _loc9_ = §§pop();
                                 addr403:
                                 while(true)
                                 {
                                    §§push(param1.top / _loc9_);
                                    addr393:
                                    while(true)
                                    {
                                       §§push(int(§§pop()));
                                       addr394:
                                       while(true)
                                       {
                                          _loc10_ = §§pop();
                                          addr395:
                                          loop9:
                                          while(true)
                                          {
                                             if(param1.top < 0)
                                             {
                                                loop10:
                                                while(true)
                                                {
                                                   §§push(_loc10_);
                                                   addr383:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() - 1);
                                                      addr384:
                                                      while(true)
                                                      {
                                                         _loc10_ = §§pop();
                                                         addr385:
                                                         while(_loc16_)
                                                         {
                                                         }
                                                         continue loop9;
                                                      }
                                                   }
                                                   addr281:
                                                   while(true)
                                                   {
                                                      if(!(_loc17_ && param2))
                                                      {
                                                         continue loop0;
                                                      }
                                                      continue loop10;
                                                      addr224:
                                                      if(!(_loc16_ || param2))
                                                      {
                                                         continue;
                                                      }
                                                      if(!(_loc17_ && param3))
                                                      {
                                                         loop33:
                                                         while(true)
                                                         {
                                                            §§push(_loc14_);
                                                            if(!_loc17_)
                                                            {
                                                               if(_loc16_)
                                                               {
                                                                  if(!(_loc17_ && param3))
                                                                  {
                                                                     §§push(_loc13_);
                                                                     if(!(_loc17_ && this))
                                                                     {
                                                                        if(§§pop() >= §§pop())
                                                                        {
                                                                           if(!(_loc17_ && param3))
                                                                           {
                                                                              if(_loc16_ || param2)
                                                                              {
                                                                                 _loc6_.dispose();
                                                                                 addr123:
                                                                                 if(!(_loc17_ && param3))
                                                                                 {
                                                                                    if(true)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    loop34:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc15_);
                                                                                       addr134:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc11_);
                                                                                          addr135:
                                                                                          while(true)
                                                                                          {
                                                                                             if(§§pop() >= §§pop())
                                                                                             {
                                                                                                if(_loc16_)
                                                                                                {
                                                                                                   _loc14_++;
                                                                                                   addr139:
                                                                                                   while(!(_loc16_ || param1))
                                                                                                   {
                                                                                                      loop36:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc16_ || param2)
                                                                                                         {
                                                                                                            continue loop34;
                                                                                                         }
                                                                                                         addr173:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            _loc15_++;
                                                                                                            continue loop36;
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   continue loop33;
                                                                                                   addr139:
                                                                                                }
                                                                                                §§goto(addr139);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                param2.copyPixels(_loc6_,_loc6_.rect,new Point(_loc14_ * _loc8_,_loc15_ * _loc9_));
                                                                                             }
                                                                                             §§goto(addr173);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    addr132:
                                                                                 }
                                                                                 §§goto(addr139);
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr180:
                                                                              }
                                                                              §§goto(addr132);
                                                                           }
                                                                           §§goto(addr123);
                                                                        }
                                                                        else
                                                                        {
                                                                           addr179:
                                                                           _loc15_ = _loc10_;
                                                                           addr178:
                                                                        }
                                                                        §§goto(addr180);
                                                                     }
                                                                     §§goto(addr135);
                                                                  }
                                                                  §§goto(addr178);
                                                               }
                                                               §§goto(addr179);
                                                            }
                                                            §§goto(addr134);
                                                         }
                                                         addr428:
                                                         return;
                                                         addr238:
                                                      }
                                                      §§goto(addr385);
                                                   }
                                                   §§goto(addr384);
                                                }
                                             }
                                             while(true)
                                             {
                                                §§push(param1.bottom / _loc9_);
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
            §§goto(addr275);
         }
         §§goto(addr428);
      }
      
      public function addObjectParseBirds(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §@m§
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc10_:§@m§ = null;
         var _loc11_:* = param2;
         if(!_loc13_)
         {
            if("BIRD_BLACK" === _loc11_)
            {
               if(_loc12_)
               {
                  §§push(0);
                  if(_loc12_ || this)
                  {
                  }
                  §§goto(addr317);
               }
               else
               {
                  §§goto(addr231);
               }
            }
            else
            {
               if("BIRD_BLUE" === _loc11_)
               {
                  if(_loc12_ || this)
                  {
                     addr231:
                     §§push(1);
                     if(!_loc12_)
                     {
                        addr286:
                     }
                  }
               }
               else if("BIRD_GREEN" === _loc11_)
               {
                  if(!(_loc13_ && param3))
                  {
                     §§push(2);
                     if(_loc13_ && param1)
                     {
                        addr312:
                     }
                     §§goto(addr317);
                  }
                  else
                  {
                     addr259:
                     §§push(3);
                     if(!(_loc13_ && param3))
                     {
                        §§goto(addr317);
                     }
                     else
                     {
                        §§goto(addr286);
                     }
                  }
               }
               else if("BIRD_WHITE" === _loc11_)
               {
                  if(_loc12_)
                  {
                     §§goto(addr259);
                  }
                  else
                  {
                     addr292:
                     §§push(5);
                     if(_loc13_)
                     {
                     }
                     §§goto(addr317);
                  }
               }
               else
               {
                  if("BIRD_YELLOW" === _loc11_)
                  {
                     if(!(_loc13_ && param1))
                     {
                        §§push(4);
                        if(_loc12_ || param2)
                        {
                           §§goto(addr286);
                        }
                        §§goto(addr317);
                     }
                     else
                     {
                        §§goto(addr292);
                     }
                  }
                  else
                  {
                     if("BIRD_RED" === _loc11_)
                     {
                        if(_loc12_)
                        {
                           §§goto(addr292);
                        }
                     }
                     else if("BIRD_REDBIG" !== _loc11_)
                     {
                        addr317:
                        switch(§§pop())
                        {
                           case 0:
                              _loc10_ = new §]!$§(this,param1,this.§8@§.mLevelEngine.mWorld,this.§8@§,this.§7!2§,param2,param3,param4,param5,param9);
                              break;
                           case 1:
                              _loc10_ = new §;!+§(this,param1,this.§8@§.mLevelEngine.mWorld,this.§8@§,this.§7!2§,param2,param3,param4,param5,param8,param9);
                              break;
                           case 2:
                              _loc10_ = new §^7§(this,param1,this.§8@§.mLevelEngine.mWorld,this.§8@§,this.§7!2§,param2,param3,param4,param5,param9);
                              break;
                           case 3:
                              _loc10_ = new §]!W§(this,param1,this.§8@§.mLevelEngine.mWorld,this.§8@§,this.§7!2§,param2,param3,param4,param5,param9);
                              break;
                           case 4:
                              _loc10_ = new § !2§(this,param1,this.§8@§.mLevelEngine.mWorld,this.§8@§,this.§7!2§,param2,param3,param4,param5,param9);
                              break;
                           case 5:
                              _loc10_ = new §;7§(this,param1,this.§8@§.mLevelEngine.mWorld,this.§8@§,this.§7!2§,param2,param3,param4,param5,param8,param9);
                              break;
                           case 6:
                              _loc10_ = new §!v§(this,param1,this.§8@§.mLevelEngine.mWorld,this.§8@§,this.§7!2§,param2,param3,param4,param5,param8,param9);
                              break;
                           default:
                              _loc10_ = new §^!1§(this,param1,this.§8@§.mLevelEngine.mWorld,this.§8@§,this.§7!2§,param2,param3,param4,param5,param8,param9);
                        }
                        return _loc10_;
                        §§push(7);
                     }
                     §§goto(addr317);
                  }
                  §§goto(addr317);
               }
               §§goto(addr317);
               if(!_loc13_)
               {
                  §§goto(addr312);
               }
            }
            §§goto(addr317);
         }
         §§goto(addr259);
      }
      
      public function hasBirds() : Boolean
      {
         return this.§50§ > 0;
      }
      
      public function addObject(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : §@m§
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         var _loc10_:Sprite;
         (_loc10_ = new Sprite()).scaleX = param8;
         if(!(_loc15_ && this))
         {
            _loc10_.scaleY = param8;
         }
         var _loc11_:§@m§;
         §§push((_loc11_ = this.§>Z§(_loc10_,param1,param2,param3,param4,param5,param6,param7,param8)) is §^!1§);
         if(_loc14_)
         {
            if(§§pop())
            {
               if(!(_loc15_ && this))
               {
                  var _loc12_:*;
                  §§push((_loc12_ = this).§50§);
                  if(_loc14_ || param2)
                  {
                     §§push(§§pop() + 1);
                  }
                  var _loc13_:* = §§pop();
                  if(_loc14_ || param3)
                  {
                     _loc12_.§50§ = _loc13_;
                  }
                  if(!_loc15_)
                  {
                     addr309:
                     §§push(_loc11_.isTexture());
                     loop24:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           this.§5! §[this.§5! §.length] = _loc11_;
                           loop0:
                           while(true)
                           {
                              loop1:
                              while(true)
                              {
                                 §§push(_loc11_ is §^!1§);
                                 if(!(_loc15_ && param2))
                                 {
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       loop27:
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             loop2:
                                             while(true)
                                             {
                                                §§pop();
                                                addr286:
                                                addr312:
                                                while(_loc14_)
                                                {
                                                   §§push(_loc11_.§;!B§());
                                                   if(_loc14_)
                                                   {
                                                      §§push(!§§pop());
                                                   }
                                                   while(true)
                                                   {
                                                      if(_loc15_)
                                                      {
                                                         continue loop2;
                                                      }
                                                   }
                                                }
                                                while(true)
                                                {
                                                   §§push(_loc10_);
                                                   §§push(this.§-]§);
                                                   if(!(_loc15_ && param3))
                                                   {
                                                      §§push(!§§pop());
                                                   }
                                                   §§pop().visible = §§pop();
                                                   addr334:
                                                   while(true)
                                                   {
                                                      this.§5! §[this.§5! §.length] = _loc11_;
                                                      addr308:
                                                      while(true)
                                                      {
                                                         continue loop1;
                                                      }
                                                   }
                                                }
                                             }
                                             addr285:
                                          }
                                          while(true)
                                          {
                                             if(!§§pop())
                                             {
                                                §§push(_loc11_.front);
                                                if(!(_loc15_ && this))
                                                {
                                                   §§push(Boolean(§§pop()));
                                                }
                                                loop6:
                                                while(true)
                                                {
                                                   §§push(§§pop());
                                                   if(!(_loc14_ || param3))
                                                   {
                                                      continue loop27;
                                                   }
                                                   if(§§pop())
                                                   {
                                                      while(true)
                                                      {
                                                         loop11:
                                                         while(true)
                                                         {
                                                            if(!§§pop())
                                                            {
                                                               this.§=!9§.addChild(_loc10_);
                                                               loop12:
                                                               for(; !_loc15_; if(!(_loc14_ || this))
                                                               {
                                                                  continue;
                                                               },§§goto(addr169),§§push(this.§8@§))
                                                               {
                                                                  if(_loc14_)
                                                                  {
                                                                     loop13:
                                                                     while(true)
                                                                     {
                                                                        §§push(param5);
                                                                        loop14:
                                                                        while(true)
                                                                        {
                                                                           if(!_loc15_)
                                                                           {
                                                                              if(!_loc15_)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    if(!(_loc15_ && param1))
                                                                                    {
                                                                                       continue loop12;
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                    }
                                                                                    addr171:
                                                                                 }
                                                                                 loop17:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(param6);
                                                                                    if(_loc15_ && param1)
                                                                                    {
                                                                                       continue loop14;
                                                                                    }
                                                                                    if(!_loc14_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    if(_loc14_)
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          if(_loc14_ || this)
                                                                                          {
                                                                                             if(!(_loc15_ && param2))
                                                                                             {
                                                                                                §§push(this.§8@§);
                                                                                                if(_loc14_)
                                                                                                {
                                                                                                   §§pop().activeObject = _loc11_;
                                                                                                   addr126:
                                                                                                   if(_loc15_)
                                                                                                   {
                                                                                                      continue;
                                                                                                   }
                                                                                                   if(_loc14_ || param3)
                                                                                                   {
                                                                                                      §§goto(addr87);
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§pop().§+!'§(_loc11_);
                                                                                                      continue loop17;
                                                                                                   }
                                                                                                   addr169:
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                addr196:
                                                                                                while(true)
                                                                                                {
                                                                                                   this.§`W§.addChild(_loc10_);
                                                                                                }
                                                                                                addr196:
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc14_ || param2)
                                                                                                {
                                                                                                   if(!(_loc14_ || param3))
                                                                                                   {
                                                                                                      break loop14;
                                                                                                   }
                                                                                                   continue loop13;
                                                                                                }
                                                                                                addr264:
                                                                                                while(_loc14_ || param3)
                                                                                                {
                                                                                                   continue loop13;
                                                                                                }
                                                                                                §§goto(addr308);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr126);
                                                                                       }
                                                                                       addr87:
                                                                                       return _loc11_;
                                                                                    }
                                                                                    while(_loc14_)
                                                                                    {
                                                                                       §§pop();
                                                                                       break loop12;
                                                                                    }
                                                                                    §§goto(addr256);
                                                                                    addr237:
                                                                                 }
                                                                                 continue loop6;
                                                                              }
                                                                              continue loop24;
                                                                           }
                                                                           continue loop11;
                                                                        }
                                                                        §§goto(addr334);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        this.§67§.addChild(_loc10_);
                                                                     }
                                                                     addr260:
                                                                  }
                                                                  §§goto(addr264);
                                                               }
                                                               while(_loc14_ || param2)
                                                               {
                                                                  if(_loc14_)
                                                                  {
                                                                     §§push(param9);
                                                                     continue loop6;
                                                                  }
                                                                  continue loop0;
                                                               }
                                                               §§goto(addr286);
                                                            }
                                                            §§goto(addr196);
                                                         }
                                                      }
                                                      addr194:
                                                   }
                                                   §§goto(addr237);
                                                }
                                                continue loop27;
                                             }
                                             §§goto(addr260);
                                          }
                                       }
                                    }
                                    addr283:
                                 }
                                 §§goto(addr285);
                              }
                           }
                           addr299:
                        }
                        §§goto(addr312);
                     }
                  }
                  §§goto(addr299);
               }
               §§goto(addr196);
            }
            §§goto(addr309);
         }
         §§goto(addr283);
      }
      
      protected function §>Z§(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §@m§
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc10_:§@m§ = null;
         var _loc11_:§,!§ = null;
         if(_loc12_)
         {
            §§push(param2);
            if(_loc12_ || param2)
            {
               if(§§pop().indexOf("BIRD") == 0)
               {
                  if(_loc12_)
                  {
                     _loc10_ = this.addObjectParseBirds(param1,param2,param3,param4,param5,param6,param7,param8,param9);
                  }
                  else
                  {
                     addr57:
                     _loc10_ = new §;!T§(this,param1,this.§8@§.mLevelEngine.mWorld,this.§8@§,this.§7!2§,param2,param3,param4,param5,param9);
                  }
                  §§goto(addr239);
               }
               else
               {
                  §§push(param2);
               }
               §§goto(addr57);
            }
            if(§§pop().indexOf("PIG") == 0)
            {
               §§goto(addr57);
            }
            else
            {
               §§push((_loc11_ = §&!5§.§;@§(param2)) == null);
               if(_loc12_ || param1)
               {
                  §§push(§§pop());
                  if(!(_loc13_ && this))
                  {
                     if(§§pop())
                     {
                        if(_loc12_)
                        {
                           §§pop();
                           if(_loc12_)
                           {
                              §§push(param2);
                              if(!_loc13_)
                              {
                                 §§push(§§pop().indexOf("MISC_") == 0);
                                 if(!(_loc13_ && param2))
                                 {
                                    addr130:
                                    if(§§pop())
                                    {
                                       if(!_loc13_)
                                       {
                                          addr139:
                                          param2 = "MISC_FOOD_" + param2.substring(5);
                                          if(!(_loc13_ && param1))
                                          {
                                             _loc11_ = §&!5§.§;@§(param2);
                                             addr152:
                                             §§push(_loc11_.§5x§);
                                             if(_loc12_ || param3)
                                             {
                                                §§push(§,!§.§&!Q§);
                                                if(_loc12_)
                                                {
                                                   §§push(§§pop() == §§pop());
                                                   if(!_loc13_)
                                                   {
                                                      addr168:
                                                      if(!§§pop())
                                                      {
                                                         if(_loc12_ || param3)
                                                         {
                                                            addr177:
                                                            §§pop();
                                                            §§goto(addr186);
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr185);
                                                }
                                                addr185:
                                                if(§§pop())
                                                {
                                                   addr186:
                                                   if(!_loc13_)
                                                   {
                                                      addr182:
                                                      §§push(_loc11_.§5x§);
                                                      §§push(§,!§.§!?§);
                                                   }
                                                   _loc10_ = new §--§(this,param1,this.§8@§.mLevelEngine.mWorld,this.§8@§,this.§7!2§,param2,param3,param4,param5,param9,_loc11_.front);
                                                }
                                                else
                                                {
                                                   _loc10_ = new §@m§(this,param1,this.§8@§.mLevelEngine.mWorld,this.§8@§,this.§7!2§,param2,param3,param4,param5,param9,_loc11_.front);
                                                }
                                                §§goto(addr239);
                                                §§push(§§pop() == §§pop());
                                             }
                                             §§goto(addr182);
                                          }
                                       }
                                       §§goto(addr186);
                                    }
                                    §§goto(addr152);
                                 }
                                 §§goto(addr168);
                              }
                              §§goto(addr139);
                           }
                           §§goto(addr182);
                        }
                        §§goto(addr185);
                     }
                     §§goto(addr130);
                  }
                  §§goto(addr168);
               }
               §§goto(addr177);
            }
         }
         §§goto(addr57);
      }
      
      public function §#P§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§@m§ = null;
         var _loc1_:* = int(this.§5! §.length - 1);
         loop0:
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§5! §[_loc1_] as §@m§;
            if(!(_loc4_ && _loc2_))
            {
               if(_loc2_)
               {
                  loop5:
                  while(true)
                  {
                     if(_loc2_.§4^§ <= 0)
                     {
                        if(_loc3_ || _loc1_)
                        {
                           this.removeObjectWithIndex(_loc1_,true,true,true);
                        }
                        loop6:
                        while(true)
                        {
                           addr43:
                           while(true)
                           {
                              §§push(_loc1_);
                              if(_loc3_)
                              {
                                 §§push(§§pop() - 1);
                              }
                              _loc1_ = §§pop();
                              if(_loc3_)
                              {
                                 if(!(_loc3_ || this))
                                 {
                                    continue loop6;
                                 }
                                 if(true)
                                 {
                                    break;
                                 }
                                 while(true)
                                 {
                                    _loc2_.§7!+§();
                                    addr88:
                                 }
                                 addr70:
                              }
                              while(!(_loc3_ || this))
                              {
                                 §§goto(addr70);
                              }
                           }
                           continue loop0;
                        }
                     }
                     else
                     {
                        addr83:
                        _loc2_.§-r§();
                     }
                     while(_loc4_)
                     {
                        continue loop5;
                        §§goto(addr83);
                     }
                     §§goto(addr88);
                  }
                  addr91:
               }
               §§goto(addr43);
            }
            §§goto(addr91);
         }
      }
      
      public function addExplosions(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            this.§6D§.push(§?L§.§<!V§(param1,param2,param3));
            do
            {
               §=m§.playSound("TntExplosions","ChannelExplosions");
            }
            while(!(_loc5_ || this));
            
         }
      }
      
      public function §+m§(param1:Number, param2:Number) : int
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:§@m§ = null;
         var _loc3_:* = int(this.§5! §.length - 1);
         while(true)
         {
            §§push(_loc3_);
            if(!_loc6_)
            {
               if(§§pop() < 0)
               {
                  break;
               }
               if(_loc4_ = this.§5! §[_loc3_])
               {
                  if(_loc5_ || this)
                  {
                     if(_loc4_.isInCoordinates(param1,param2))
                     {
                        if(_loc6_ && _loc3_)
                        {
                           continue;
                        }
                        §§push(_loc3_);
                        if(!(_loc6_ && param2))
                        {
                           return §§pop();
                        }
                     }
                     else
                     {
                        addr80:
                        §§push(_loc3_);
                        if(_loc5_ || param1)
                        {
                           §§push(§§pop() - 1);
                        }
                     }
                     _loc3_ = §§pop();
                     continue;
                  }
               }
               §§goto(addr80);
            }
            break;
         }
         return §§pop();
      }
      
      public function §7l§(param1:Number, param2:Number) : §@m§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:§@m§ = null;
         var _loc3_:* = int(this.§5! §.length - 1);
         while(true)
         {
            if(_loc3_ < 0)
            {
               return null;
            }
            if(_loc4_ = this.§5! §[_loc3_])
            {
               if(_loc6_ && _loc3_)
               {
                  break;
               }
               if(_loc4_.isInCoordinates(param1,param2))
               {
                  if(_loc5_)
                  {
                     break;
                  }
               }
            }
            §§push(_loc3_);
            if(_loc5_ || _loc3_)
            {
               §§push(§§pop() - 1);
            }
            _loc3_ = §§pop();
         }
         return _loc4_;
      }
      
      public function §'!P§(param1:int) : §@m§
      {
         return this.§5! §[param1];
      }
      
      public function §>!=§(param1:Number, param2:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:§@m§ = null;
         var _loc3_:* = int(this.§5! §.length - 1);
         while(_loc3_ >= 0)
         {
            (_loc4_ = this.§5! §[_loc3_] as §@m§).§>!=§(param2,param1);
            if(!(_loc5_ && param1))
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
      
      private function §&d§(param1:§@m§, param2:Number) : Boolean
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc4_:* = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:* = NaN;
         var _loc7_:§@m§ = null;
         if(_loc9_ || this)
         {
            §§push(this.mSardineCanAdded);
            if(!(_loc8_ && this))
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
                     if(!(_loc8_ && this))
                     {
                        §§push(param1.§4^§);
                        loop0:
                        while(true)
                        {
                           §§push(param1.§,>§);
                           loop1:
                           while(true)
                           {
                              if(§§pop() != §§pop())
                              {
                                 §§push(this.§#!0§);
                                 loop2:
                                 while(true)
                                 {
                                    §§push(0);
                                    addr525:
                                    while(true)
                                    {
                                       if(§§pop() == §§pop())
                                       {
                                          if(_loc9_)
                                          {
                                             this.§#!0§ = this.§8@§.§@3§;
                                          }
                                          while(true)
                                          {
                                             addr319:
                                             if(!(_loc9_ || this))
                                             {
                                                continue;
                                             }
                                             loop40:
                                             while(true)
                                             {
                                                §§push(_loc4_);
                                                if(_loc9_)
                                                {
                                                   §§push(§&!V§.§+!I§);
                                                   if(!_loc8_)
                                                   {
                                                      if(!(_loc8_ && _loc3_))
                                                      {
                                                         if(§§pop() < §§pop())
                                                         {
                                                            break;
                                                         }
                                                         loop41:
                                                         while(true)
                                                         {
                                                            §§push(param1.§`!#§());
                                                            loop42:
                                                            while(true)
                                                            {
                                                               §§push(§§pop().GetPosition());
                                                               loop43:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop().x);
                                                                  if(_loc9_)
                                                                  {
                                                                     if(!_loc8_)
                                                                     {
                                                                        if(_loc9_)
                                                                        {
                                                                           §§push(§&!V§.§'2§);
                                                                           loop44:
                                                                           while(_loc9_)
                                                                           {
                                                                              §§push(§§pop() - §§pop());
                                                                              loop45:
                                                                              while(_loc9_ || _loc3_)
                                                                              {
                                                                                 §§push(Number(§§pop()));
                                                                                 while(_loc9_)
                                                                                 {
                                                                                    continue loop0;
                                                                                 }
                                                                                 loop51:
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc9_)
                                                                                    {
                                                                                       addr445:
                                                                                       §§push(§&!V§.§+!I§);
                                                                                       while(true)
                                                                                       {
                                                                                          if(§§pop() < §§pop())
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(this.mMightyEagleTimer);
                                                                                                addr448:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(param2);
                                                                                                   break loop44;
                                                                                                }
                                                                                             }
                                                                                             addr446:
                                                                                          }
                                                                                          §§goto(addr645);
                                                                                       }
                                                                                       addr445:
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§&!V§.§?!4§);
                                                                                       loop54:
                                                                                       while(true)
                                                                                       {
                                                                                          if(§§pop() < §§pop())
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(this);
                                                                                                §§push(this.§[,§);
                                                                                                if(!_loc8_)
                                                                                                {
                                                                                                   §§push(param2);
                                                                                                   if(_loc9_)
                                                                                                   {
                                                                                                      §§push(§§pop() * §&!V§.§@6§);
                                                                                                   }
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                }
                                                                                                §§pop().§[,§ = §§pop();
                                                                                                addr580:
                                                                                                while(true)
                                                                                                {
                                                                                                }
                                                                                             }
                                                                                             addr567:
                                                                                          }
                                                                                          loop57:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(param1.§`!#§());
                                                                                             loop58:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(param2);
                                                                                                if(_loc9_ || this)
                                                                                                {
                                                                                                   §§push(§§pop() * this.§[,§);
                                                                                                }
                                                                                                §§pop().§;[§(§§pop());
                                                                                                loop59:
                                                                                                while(_loc9_)
                                                                                                {
                                                                                                   this.§#!0§ = 0;
                                                                                                   loop60:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      addr509:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(param1.§5!@§());
                                                                                                         if(_loc9_)
                                                                                                         {
                                                                                                            §§push(Boolean(§§pop()));
                                                                                                         }
                                                                                                         loop6:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop());
                                                                                                            loop7:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(!§§pop())
                                                                                                               {
                                                                                                                  loop8:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§pop();
                                                                                                                     addr518:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(this.§2!T§(param1));
                                                                                                                        while(_loc9_ || _loc3_)
                                                                                                                        {
                                                                                                                           §§push(Boolean(§§pop()));
                                                                                                                           if(_loc8_ && param2)
                                                                                                                           {
                                                                                                                              continue;
                                                                                                                           }
                                                                                                                           if(§§pop())
                                                                                                                           {
                                                                                                                              if(!_loc8_)
                                                                                                                              {
                                                                                                                                 continue loop41;
                                                                                                                              }
                                                                                                                              §§goto(addr645);
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              addr581:
                                                                                                                              §§push(this);
                                                                                                                              §§push("BIRD_MIGHTY_EAGLE");
                                                                                                                              §§push(_loc5_);
                                                                                                                              §§push(_loc6_);
                                                                                                                              §§push(§&!V§.§88§);
                                                                                                                              if(!(_loc8_ && _loc3_))
                                                                                                                              {
                                                                                                                                 §§push(§§pop() * 1.2);
                                                                                                                              }
                                                                                                                              _loc7_ = §§pop().addObject(§§pop(),§§pop(),§§pop(),§§pop());
                                                                                                                              if(_loc9_ || param2)
                                                                                                                              {
                                                                                                                                 this.mMightyEagleAdded = true;
                                                                                                                                 loop62:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    addr621:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       this.§#!0§ = 0;
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(_loc9_)
                                                                                                                                          {
                                                                                                                                             _loc7_.§%n§.§;!Q§(1.82);
                                                                                                                                             if(!(_loc8_ && param1))
                                                                                                                                             {
                                                                                                                                                break;
                                                                                                                                             }
                                                                                                                                             continue;
                                                                                                                                          }
                                                                                                                                          continue loop62;
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(true)
                                                                                                                                 {
                                                                                                                                    break loop40;
                                                                                                                                 }
                                                                                                                                 §§goto(addr621);
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        continue loop8;
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop());
                                                                                                                     addr499:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(!§§pop())
                                                                                                                        {
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§pop();
                                                                                                                              addr501:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(_loc9_ || _loc3_)
                                                                                                                                 {
                                                                                                                                    continue loop2;
                                                                                                                                 }
                                                                                                                                 continue loop60;
                                                                                                                              }
                                                                                                                              continue loop60;
                                                                                                                           }
                                                                                                                           addr500:
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           addr437:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              addr438:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(§§pop())
                                                                                                                                 {
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       continue loop51;
                                                                                                                                    }
                                                                                                                                    addr439:
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    §§goto(addr645);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           addr437:
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr404:
                                                                                                                     if(_loc8_ && param1)
                                                                                                                     {
                                                                                                                        continue;
                                                                                                                     }
                                                                                                                     §§pop();
                                                                                                                     loop32:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc4_);
                                                                                                                        loop33:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§&!V§.§@%§);
                                                                                                                           loop34:
                                                                                                                           while(!(_loc8_ && param2))
                                                                                                                           {
                                                                                                                              §§push(§§pop() > §§pop());
                                                                                                                              while(!(_loc8_ && param2))
                                                                                                                              {
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(§§pop())
                                                                                                                                    {
                                                                                                                                       continue loop32;
                                                                                                                                    }
                                                                                                                                    continue loop40;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              loop30:
                                                                                                                              while(!_loc8_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop());
                                                                                                                                 if(_loc9_)
                                                                                                                                 {
                                                                                                                                    if(_loc9_)
                                                                                                                                    {
                                                                                                                                       if(_loc8_ && this)
                                                                                                                                       {
                                                                                                                                          continue loop7;
                                                                                                                                       }
                                                                                                                                       if(§§pop())
                                                                                                                                       {
                                                                                                                                          while(_loc9_ || param1)
                                                                                                                                          {
                                                                                                                                             §§goto(addr404);
                                                                                                                                          }
                                                                                                                                          loop18:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§pop();
                                                                                                                                             loop19:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(!(_loc8_ && param2))
                                                                                                                                                {
                                                                                                                                                   if(!(_loc8_ && this))
                                                                                                                                                   {
                                                                                                                                                      §§push(this.§8@§.§@3§);
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(this.§#!0§ + §&!V§.§,C§);
                                                                                                                                                         if(!(_loc8_ && this))
                                                                                                                                                         {
                                                                                                                                                            if(!(_loc9_ || param2))
                                                                                                                                                            {
                                                                                                                                                               continue loop54;
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr437);
                                                                                                                                                            §§push(§§pop() > §§pop());
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr445);
                                                                                                                                                         }
                                                                                                                                                         addr645:
                                                                                                                                                         return _loc3_;
                                                                                                                                                         addr237:
                                                                                                                                                         if(_loc8_ && param1)
                                                                                                                                                         {
                                                                                                                                                            continue;
                                                                                                                                                         }
                                                                                                                                                         _loc6_ = §§pop();
                                                                                                                                                         if(_loc9_)
                                                                                                                                                         {
                                                                                                                                                            if(!_loc9_)
                                                                                                                                                            {
                                                                                                                                                               continue loop19;
                                                                                                                                                            }
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(this.§2!T§(param1));
                                                                                                                                                               if(!_loc8_)
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc8_)
                                                                                                                                                                  {
                                                                                                                                                                     addr90:
                                                                                                                                                                     if(_loc9_ || param1)
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr97);
                                                                                                                                                                     }
                                                                                                                                                                     else
                                                                                                                                                                     {
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop());
                                                                                                                                                                           addr468:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              if(§§pop())
                                                                                                                                                                              {
                                                                                                                                                                                 continue loop18;
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr437);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr90);
                                                                                                                                                                        }
                                                                                                                                                                        addr467:
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr645);
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr339);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  addr131:
                                                                                                                                                                  if(_loc9_)
                                                                                                                                                                  {
                                                                                                                                                                     if(!(_loc8_ && param2))
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc8_)
                                                                                                                                                                        {
                                                                                                                                                                           _loc3_ = §§pop();
                                                                                                                                                                           if(!(_loc8_ && param2))
                                                                                                                                                                           {
                                                                                                                                                                              addr150:
                                                                                                                                                                              if(!(_loc8_ && _loc3_))
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc8_)
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop32;
                                                                                                                                                                                 }
                                                                                                                                                                                 if(_loc9_ || this)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(false)
                                                                                                                                                                                    {
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(param1.§`!#§());
                                                                                                                                                                                          if(!_loc9_)
                                                                                                                                                                                          {
                                                                                                                                                                                             break;
                                                                                                                                                                                          }
                                                                                                                                                                                          if(_loc8_ && _loc3_)
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop58;
                                                                                                                                                                                          }
                                                                                                                                                                                          §§push(§§pop().GetPosition());
                                                                                                                                                                                          if(!(_loc9_ || this))
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop43;
                                                                                                                                                                                          }
                                                                                                                                                                                          §§push(§§pop().y);
                                                                                                                                                                                          if(!_loc8_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!_loc8_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!_loc9_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue loop33;
                                                                                                                                                                                                }
                                                                                                                                                                                                if(_loc9_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§&!V§.§'2§);
                                                                                                                                                                                                   if(_loc9_ || this)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§&!V§.§^5§);
                                                                                                                                                                                                      if(!(_loc8_ && param1))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                                                                         if(!(_loc8_ && param1))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr223:
                                                                                                                                                                                                            if(_loc8_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop44;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            if(!_loc8_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr228:
                                                                                                                                                                                                               §§push(§§pop() * 1.07);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            else
                                                                                                                                                                                                            {
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue loop30;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr381:
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         if(!_loc9_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue loop34;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§push(§§pop() - §§pop());
                                                                                                                                                                                                         if(!_loc8_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr235:
                                                                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                                                                            if(_loc8_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop45;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr237);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr235);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr228);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr223);
                                                                                                                                                                                                }
                                                                                                                                                                                                else
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§goto(addr448);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             else
                                                                                                                                                                                             {
                                                                                                                                                                                                §§goto(addr289);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr235);
                                                                                                                                                                                       }
                                                                                                                                                                                       continue loop42;
                                                                                                                                                                                       addr168:
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr581);
                                                                                                                                                                                 }
                                                                                                                                                                                 else
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr439);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              else
                                                                                                                                                                              {
                                                                                                                                                                                 while(!_loc8_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr319);
                                                                                                                                                                                    §§goto(addr150);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr518);
                                                                                                                                                                                 addr307:
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr645);
                                                                                                                                                                        }
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr500);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr645);
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr397);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr438);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr645);
                                                                                                                                                      }
                                                                                                                                                      continue loop54;
                                                                                                                                                   }
                                                                                                                                                   continue loop59;
                                                                                                                                                }
                                                                                                                                                §§goto(addr501);
                                                                                                                                             }
                                                                                                                                             continue loop59;
                                                                                                                                          }
                                                                                                                                          addr397:
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          §§goto(addr346);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       §§goto(addr499);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    §§goto(addr468);
                                                                                                                                 }
                                                                                                                                 §§goto(addr437);
                                                                                                                              }
                                                                                                                              addr339:
                                                                                                                              continue loop6;
                                                                                                                           }
                                                                                                                           continue loop1;
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                continue loop57;
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 addr289:
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§goto(addr381);
                                                                                 §§goto(addr281);
                                                                              }
                                                                              addr281:
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop() + §§pop());
                                                                           }
                                                                           addr278:
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                           break loop43;
                                                                        }
                                                                     }
                                                                     break;
                                                                  }
                                                                  §§goto(addr281);
                                                               }
                                                               while(true)
                                                               {
                                                                  _loc4_ = §§pop();
                                                                  §§goto(addr452);
                                                               }
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr445);
                                                   }
                                                   §§goto(addr278);
                                                }
                                                §§goto(addr281);
                                             }
                                             this.mMightyEagleTimer = _loc4_;
                                             §§goto(addr645);
                                          }
                                       }
                                       §§goto(addr509);
                                    }
                                 }
                              }
                              §§goto(addr562);
                           }
                        }
                     }
                     §§goto(addr249);
                  }
                  else
                  {
                     addr63:
                     §§push(false);
                     if(_loc8_ && param1)
                     {
                        §§goto(addr73);
                     }
                  }
                  §§goto(addr73);
               }
               else
               {
                  §§push(this.mMightyEagleAdded);
                  if(_loc9_ || this)
                  {
                     if(§§pop())
                     {
                        if(!_loc8_)
                        {
                           §§goto(addr63);
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
               }
               return §§pop();
            }
            §§goto(addr73);
         }
         §§goto(addr72);
      }
      
      private function §"n§(param1:§@m§, param2:Number) : Boolean
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc5_:§@m§ = null;
         if(!_loc9_)
         {
            §§push(this.§#!4§);
            if(!(_loc9_ && this))
            {
               §§push(!§§pop());
               if(_loc8_ || param2)
               {
                  if(§§pop())
                  {
                     loop21:
                     while(true)
                     {
                        §§pop();
                        addr80:
                        loop22:
                        while(true)
                        {
                           loop3:
                           while(true)
                           {
                              §§push(this.mMightyEagleTimer);
                              if(_loc9_)
                              {
                                 break;
                              }
                              §§push(§§pop() > §&!V§.§[7§);
                              if(!_loc9_)
                              {
                                 while(§§pop())
                                 {
                                    do
                                    {
                                       this.§#!4§ = true;
                                       do
                                       {
                                          this.§8@§.§80§();
                                       }
                                       while(_loc9_ && param2);
                                       
                                    }
                                    while(!_loc8_);
                                    
                                    if(!(_loc9_ && this))
                                    {
                                       if(true)
                                       {
                                          break;
                                       }
                                       continue loop3;
                                    }
                                    continue loop22;
                                 }
                                 §§push(Number(3));
                                 break;
                                 addr54:
                              }
                              continue loop21;
                           }
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
                              if(!_loc9_)
                              {
                                 addr96:
                                 §§push(this.§8@§.particles);
                                 §§push(§-&§.§+H§);
                                 §§push(§,v§.§-!;§);
                                 §§push(§-&§.§ ,§);
                                 §§push(param1.§`!#§().GetPosition().x);
                                 if(!(_loc9_ && param1))
                                 {
                                    §§push(_loc3_);
                                    if(!_loc9_)
                                    {
                                       §§push(§§pop() - §§pop());
                                       if(_loc8_ || _loc3_)
                                       {
                                          addr158:
                                          addr165:
                                          addr164:
                                          addr127:
                                          §§push(Math.random() * (_loc3_ * 2));
                                          if(_loc8_)
                                          {
                                             §§push(§§pop() + §§pop());
                                          }
                                          §§pop().addParticle(§§pop(),§§pop(),§§pop(),§§pop(),§§pop() + Math.random() * (_loc3_ * 2),3500,"",§-&§.§%6§(param1.§ h§),0,0,1,0,4);
                                          var _loc4_:int = 1;
                                          if(_loc8_)
                                          {
                                             §§push(this.mMightyEagleHasTouchedGround);
                                             loop4:
                                             while(true)
                                             {
                                                if(!§§pop())
                                                {
                                                   this.mMightyEagleHasTouchedGround = param1.§`!#§().GetPosition().y >= -5.5;
                                                   break;
                                                }
                                                while(true)
                                                {
                                                   §§push(param1);
                                                   §§push(§&!V§.§[>§);
                                                   if(_loc8_ || _loc3_)
                                                   {
                                                      §§push(§§pop() * param2);
                                                   }
                                                   §§pop().§6q§(§§pop());
                                                   while(_loc8_ || _loc3_)
                                                   {
                                                      loop14:
                                                      while(true)
                                                      {
                                                         §§push(param1.§%n§);
                                                         loop15:
                                                         while(true)
                                                         {
                                                            §§pop().§+l§ = true;
                                                            addr206:
                                                            addr238:
                                                            loop16:
                                                            while(_loc8_ || this)
                                                            {
                                                               if(!_loc9_)
                                                               {
                                                                  §§push(param1.§%n§);
                                                                  if(_loc9_)
                                                                  {
                                                                     continue loop15;
                                                                  }
                                                                  §§pop().§3f§();
                                                                  if(_loc9_)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  if(_loc9_)
                                                                  {
                                                                     break loop14;
                                                                  }
                                                                  addr192:
                                                                  if(_loc8_ || param2)
                                                                  {
                                                                     if(false)
                                                                     {
                                                                        continue loop14;
                                                                     }
                                                                     addr309:
                                                                     var _loc6_:int = 0;
                                                                     var _loc7_:* = this.§5! §;
                                                                     loop17:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§hasnext(_loc7_,_loc6_));
                                                                        if(_loc8_)
                                                                        {
                                                                           if(!§§pop())
                                                                           {
                                                                              if(_loc8_ || this)
                                                                              {
                                                                                 if(!(_loc9_ && this))
                                                                                 {
                                                                                    if(_loc8_ || this)
                                                                                    {
                                                                                       this.§switch§();
                                                                                       if(!_loc9_)
                                                                                       {
                                                                                          addr411:
                                                                                          §§push(this.mMightyEagleTimer > 6000);
                                                                                          if(!(_loc9_ && param1))
                                                                                          {
                                                                                             if(§§pop())
                                                                                             {
                                                                                                if(!_loc9_)
                                                                                                {
                                                                                                   §§pop();
                                                                                                   if(_loc8_ || param2)
                                                                                                   {
                                                                                                      §§push(this.isPigsAlive());
                                                                                                      if(_loc8_)
                                                                                                      {
                                                                                                         §§push(Boolean(§§pop()));
                                                                                                         if(!(_loc9_ && param2))
                                                                                                         {
                                                                                                            addr446:
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               if(!(_loc9_ && param2))
                                                                                                               {
                                                                                                                  _loc6_ = 0;
                                                                                                                  if(_loc8_)
                                                                                                                  {
                                                                                                                     addr458:
                                                                                                                     _loc7_ = this.§5! §;
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§hasnext(_loc7_,_loc6_));
                                                                                                                        break loop17;
                                                                                                                     }
                                                                                                                     addr514:
                                                                                                                  }
                                                                                                                  if(_loc8_ || param2)
                                                                                                                  {
                                                                                                                     addr560:
                                                                                                                     loop18:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        param1.§!K§(param2,new Point(1,_loc4_ * §&!V§.§^5§),§&!V§.§+!3§);
                                                                                                                        if(!_loc8_)
                                                                                                                        {
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(!(_loc8_ || param2))
                                                                                                                              {
                                                                                                                                 break loop4;
                                                                                                                              }
                                                                                                                              continue loop18;
                                                                                                                           }
                                                                                                                           addr552:
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr525:
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr528);
                                                                                                            }
                                                                                                            §§goto(addr560);
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr525);
                                                                                                }
                                                                                                addr528:
                                                                                                return false;
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr446);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr560);
                                                                                 }
                                                                              }
                                                                              §§goto(addr458);
                                                                           }
                                                                           else
                                                                           {
                                                                              _loc5_ = §§nextvalue(_loc6_,_loc7_);
                                                                              §§push(Boolean(_loc5_));
                                                                              if(!_loc9_)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    if(_loc8_ || _loc3_)
                                                                                    {
                                                                                       addr334:
                                                                                       §§pop();
                                                                                       if(!(_loc9_ && param1))
                                                                                       {
                                                                                          §§push(_loc5_.§7!?§());
                                                                                          if(_loc9_ && param1)
                                                                                          {
                                                                                          }
                                                                                          addr352:
                                                                                          if(§§pop())
                                                                                          {
                                                                                             if(_loc8_)
                                                                                             {
                                                                                                §§push(_loc5_.§`!#§());
                                                                                                if(!(_loc9_ && _loc3_))
                                                                                                {
                                                                                                   §§pop().SetAwake(true);
                                                                                                   if(_loc9_ && _loc3_)
                                                                                                   {
                                                                                                      continue;
                                                                                                   }
                                                                                                   §§push(_loc5_.§`!#§());
                                                                                                }
                                                                                                §§pop().SetLinearVelocity(new b2Vec2(0,-18));
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       continue;
                                                                                    }
                                                                                    §§push(Boolean(§§pop()));
                                                                                 }
                                                                                 §§goto(addr352);
                                                                              }
                                                                              §§goto(addr334);
                                                                           }
                                                                        }
                                                                        break;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        if(!§§pop())
                                                                        {
                                                                           §§goto(addr458);
                                                                        }
                                                                        else
                                                                        {
                                                                           _loc5_ = §§nextvalue(_loc6_,_loc7_);
                                                                           §§push(Boolean(_loc5_));
                                                                           if(!_loc9_)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 if(_loc8_)
                                                                                 {
                                                                                    §§pop();
                                                                                    if(!(_loc9_ && param1))
                                                                                    {
                                                                                       §§push(_loc5_.§7!?§());
                                                                                       if(!_loc8_)
                                                                                       {
                                                                                       }
                                                                                       addr490:
                                                                                       if(§§pop())
                                                                                       {
                                                                                          if(_loc8_ || _loc3_)
                                                                                          {
                                                                                             §§push(_loc5_);
                                                                                             §§push(_loc5_.§,>§);
                                                                                             if(!(_loc9_ && param2))
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
                                                                           §§goto(addr490);
                                                                        }
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        this.mSardineCanAdded = false;
                                                                        break loop14;
                                                                        §§goto(addr192);
                                                                     }
                                                                     addr233:
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  while(true)
                                                                  {
                                                                     this.§8@§.§8!&§();
                                                                     break loop16;
                                                                  }
                                                                  addr269:
                                                               }
                                                            }
                                                            while(_loc8_ || param2)
                                                            {
                                                               param1.§,!L§(§=!5§.§,! §);
                                                               §§goto(addr233);
                                                               §§goto(addr206);
                                                            }
                                                            continue loop4;
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             while(true)
                                             {
                                                this.§`P§ = this.mMightyEagleHasTouchedGround;
                                                §§goto(addr552);
                                             }
                                          }
                                          §§goto(addr307);
                                       }
                                       §§push(param1.§`!#§().GetPosition().y);
                                       if(!_loc9_)
                                       {
                                          §§push(_loc3_);
                                          if(!(_loc9_ && param1))
                                          {
                                             §§push(§§pop() - §§pop());
                                             if(!(_loc9_ && _loc3_))
                                             {
                                                §§goto(addr158);
                                             }
                                             §§goto(addr165);
                                          }
                                          §§goto(addr164);
                                       }
                                    }
                                    §§goto(addr158);
                                 }
                                 §§goto(addr127);
                              }
                              §§goto(addr158);
                           }
                           §§goto(addr96);
                        }
                     }
                     addr79:
                  }
                  §§goto(addr54);
               }
            }
            §§goto(addr79);
         }
         §§goto(addr80);
      }
      
      private function §?!H§() : void
      {
         var _loc20_:Boolean = true;
         var _loc21_:Boolean = false;
         var _loc1_:§?L§ = null;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc6_:§@m§ = null;
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
         while(this.§6D§.length > 0)
         {
            _loc1_ = this.§6D§.shift();
            if(!(_loc21_ && _loc3_))
            {
               §§push(_loc1_.§0b§);
               if(!_loc21_)
               {
                  §§push(Number(§§pop()));
                  loop1:
                  while(true)
                  {
                     _loc2_ = §§pop();
                     loop2:
                     while(true)
                     {
                        §§push(_loc1_.x);
                        if(!_loc21_)
                        {
                           §§push(Number(§§pop()));
                           if(_loc20_)
                           {
                              if(_loc20_)
                              {
                                 _loc3_ = §§pop();
                                 loop3:
                                 for(; !_loc21_; if(!(_loc20_ || _loc1_))
                                 {
                                    continue;
                                 },if(false)
                                 {
                                    §§goto(addr94);
                                 },§§push(0),if(_loc20_ || _loc2_)
                                 {
                                    var _loc18_:* = §§pop();
                                    if(_loc20_)
                                    {
                                       loop6:
                                       for each(_loc6_ in this.§5! §)
                                       {
                                          §§push(_loc6_.§`!#§());
                                          if(!(_loc21_ && this))
                                          {
                                             §§push(§§pop().GetPosition());
                                             if(_loc20_ || _loc1_)
                                             {
                                                §§push(§§pop().x);
                                                if(_loc20_ || _loc3_)
                                                {
                                                   §§push(_loc3_);
                                                   if(!_loc21_)
                                                   {
                                                      §§push(§§pop() - §§pop());
                                                      if(_loc20_)
                                                      {
                                                         §§push(Number(§§pop()));
                                                         if(_loc20_)
                                                         {
                                                            _loc8_ = §§pop();
                                                            if(_loc20_)
                                                            {
                                                               §§push(_loc6_.§`!#§());
                                                               loop7:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop().GetPosition());
                                                                  addr502:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop().y);
                                                                     loop40:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc4_);
                                                                        loop41:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() - §§pop());
                                                                           loop42:
                                                                           while(true)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                              loop27:
                                                                              while(true)
                                                                              {
                                                                                 _loc9_ = §§pop();
                                                                                 loop28:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(Number(Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_)));
                                                                                    loop21:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop());
                                                                                       loop22:
                                                                                       while(true)
                                                                                       {
                                                                                          _loc10_ = §§pop();
                                                                                          if(_loc20_)
                                                                                          {
                                                                                             §§push(_loc1_.§0b§);
                                                                                             loop23:
                                                                                             for(; §§pop() > §§pop(); loop26:
                                                                                             for(; !(_loc21_ && _loc2_); §§push(_loc10_),if(_loc21_ && this)
                                                                                             {
                                                                                                continue;
                                                                                             },if(_loc20_ || this)
                                                                                             {
                                                                                                if(_loc20_)
                                                                                                {
                                                                                                   if(!_loc20_)
                                                                                                   {
                                                                                                      continue loop41;
                                                                                                   }
                                                                                                   §§push(§§pop() / §§pop());
                                                                                                   if(_loc20_)
                                                                                                   {
                                                                                                      §§goto(addr267);
                                                                                                   }
                                                                                                   §§goto(addr270);
                                                                                                }
                                                                                                §§goto(addr388);
                                                                                             },§§goto(addr404))
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   if(§§pop() > §§pop())
                                                                                                   {
                                                                                                      continue loop6;
                                                                                                   }
                                                                                                   if(!(_loc21_ && _loc2_))
                                                                                                   {
                                                                                                      §§push(_loc5_);
                                                                                                      loop47:
                                                                                                      while(!(_loc21_ && _loc2_))
                                                                                                      {
                                                                                                         if(_loc21_ && _loc3_)
                                                                                                         {
                                                                                                            continue loop42;
                                                                                                         }
                                                                                                         §§push(Number(§§pop()));
                                                                                                         loop48:
                                                                                                         while(_loc20_)
                                                                                                         {
                                                                                                            if(_loc20_ || this)
                                                                                                            {
                                                                                                               _loc14_ = §§pop();
                                                                                                               loop49:
                                                                                                               for(; _loc20_; if(!(_loc20_ || this))
                                                                                                               {
                                                                                                                  continue;
                                                                                                               },if(true)
                                                                                                               {
                                                                                                                  continue loop6;
                                                                                                               },§§goto(addr219))
                                                                                                               {
                                                                                                                  if(_loc21_)
                                                                                                                  {
                                                                                                                     continue loop7;
                                                                                                                  }
                                                                                                                  if(!_loc21_)
                                                                                                                  {
                                                                                                                     if(_loc20_ || _loc3_)
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(_loc10_);
                                                                                                                           if(_loc21_)
                                                                                                                           {
                                                                                                                              while(_loc20_)
                                                                                                                              {
                                                                                                                                 §§goto(addr270);
                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                              }
                                                                                                                              break;
                                                                                                                              addr267:
                                                                                                                           }
                                                                                                                           if(_loc21_)
                                                                                                                           {
                                                                                                                              continue loop48;
                                                                                                                           }
                                                                                                                           if(!_loc20_)
                                                                                                                           {
                                                                                                                              continue loop47;
                                                                                                                           }
                                                                                                                           if(!_loc21_)
                                                                                                                           {
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(1);
                                                                                                                                 if(!_loc21_)
                                                                                                                                 {
                                                                                                                                    if(_loc20_ || _loc3_)
                                                                                                                                    {
                                                                                                                                       if(§§pop() > §§pop())
                                                                                                                                       {
                                                                                                                                          if(!_loc21_)
                                                                                                                                          {
                                                                                                                                             §§push(_loc14_);
                                                                                                                                             if(!_loc21_)
                                                                                                                                             {
                                                                                                                                                continue loop26;
                                                                                                                                             }
                                                                                                                                             addr270:
                                                                                                                                             addr270:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(!_loc21_)
                                                                                                                                                {
                                                                                                                                                   _loc14_ = §§pop();
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   addr445:
                                                                                                                                                   loop31:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                      loop32:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         _loc12_ = §§pop();
                                                                                                                                                         addr447:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(!(_loc21_ && _loc3_))
                                                                                                                                                            {
                                                                                                                                                               if(!_loc20_)
                                                                                                                                                               {
                                                                                                                                                                  break loop23;
                                                                                                                                                                  addr378:
                                                                                                                                                               }
                                                                                                                                                               §§push(_loc11_);
                                                                                                                                                               while(!_loc21_)
                                                                                                                                                               {
                                                                                                                                                                  if(!(_loc21_ && _loc2_))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc9_);
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc21_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc10_);
                                                                                                                                                                           if(_loc20_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() / §§pop());
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!_loc21_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                    break loop48;
                                                                                                                                                                                 }
                                                                                                                                                                                 continue loop22;
                                                                                                                                                                              }
                                                                                                                                                                              addr404:
                                                                                                                                                                           }
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() / §§pop());
                                                                                                                                                                              §§goto(addr390);
                                                                                                                                                                           }
                                                                                                                                                                           addr390:
                                                                                                                                                                           addr441:
                                                                                                                                                                        }
                                                                                                                                                                        addr442:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(!_loc21_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                              continue loop31;
                                                                                                                                                                           }
                                                                                                                                                                           addr470:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() / §§pop());
                                                                                                                                                                              addr471:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                                                                 addr472:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    _loc11_ = §§pop();
                                                                                                                                                                                    addr473:
                                                                                                                                                                                    while(!_loc20_)
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop28;
                                                                                                                                                                                    }
                                                                                                                                                                                    addr412:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc10_);
                                                                                                                                                                                       break loop47;
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     addr388:
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr471);
                                                                                                                                                               }
                                                                                                                                                               continue loop32;
                                                                                                                                                            }
                                                                                                                                                            addr461:
                                                                                                                                                            loop8:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc11_);
                                                                                                                                                               addr462:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(!(_loc21_ && this))
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr470);
                                                                                                                                                                     §§push(_loc10_);
                                                                                                                                                                  }
                                                                                                                                                                  addr497:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     _loc11_ = §§pop();
                                                                                                                                                                     addr498:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc10_);
                                                                                                                                                                        addr459:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(1);
                                                                                                                                                                           addr460:
                                                                                                                                                                           while(§§pop() <= §§pop())
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr412);
                                                                                                                                                                           }
                                                                                                                                                                           continue loop8;
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     break loop22;
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   addr445:
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          loop51:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             addr195:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                _loc6_.applyDamage(_loc14_,false,false,false,true);
                                                                                                                                                if(_loc20_ || _loc3_)
                                                                                                                                                {
                                                                                                                                                   break loop51;
                                                                                                                                                }
                                                                                                                                                continue loop51;
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          continue loop49;
                                                                                                                                       }
                                                                                                                                       §§goto(addr195);
                                                                                                                                    }
                                                                                                                                    §§goto(addr460);
                                                                                                                                 }
                                                                                                                                 addr421:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(§§pop() > §§pop())
                                                                                                                                    {
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(_loc11_);
                                                                                                                                          if(!_loc21_)
                                                                                                                                          {
                                                                                                                                             if(!(_loc20_ || _loc2_))
                                                                                                                                             {
                                                                                                                                                continue loop21;
                                                                                                                                             }
                                                                                                                                             §§push(_loc8_);
                                                                                                                                             if(!(_loc21_ && _loc2_))
                                                                                                                                             {
                                                                                                                                                §§goto(addr441);
                                                                                                                                                §§push(_loc10_);
                                                                                                                                             }
                                                                                                                                             §§goto(addr442);
                                                                                                                                          }
                                                                                                                                          §§goto(addr445);
                                                                                                                                       }
                                                                                                                                       addr422:
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       §§goto(addr274);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              addr229:
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              _loc13_ = §§pop();
                                                                                                                              continue loop7;
                                                                                                                           }
                                                                                                                           §§goto(addr270);
                                                                                                                        }
                                                                                                                        §§goto(addr276);
                                                                                                                        addr219:
                                                                                                                     }
                                                                                                                     §§goto(addr473);
                                                                                                                  }
                                                                                                                  §§goto(addr422);
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!_loc21_)
                                                                                                                  {
                                                                                                                     if(_loc20_ || _loc3_)
                                                                                                                     {
                                                                                                                        §§goto(addr274);
                                                                                                                     }
                                                                                                                     §§goto(addr498);
                                                                                                                  }
                                                                                                                  §§goto(addr447);
                                                                                                               }
                                                                                                               addr333:
                                                                                                               addr366:
                                                                                                            }
                                                                                                            §§goto(addr378);
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc20_)
                                                                                                            {
                                                                                                               §§goto(addr410);
                                                                                                               §§push(Number(§§pop()));
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§goto(addr459);
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc20_)
                                                                                                         {
                                                                                                            if(!_loc21_)
                                                                                                            {
                                                                                                               if(_loc21_)
                                                                                                               {
                                                                                                                  continue loop27;
                                                                                                               }
                                                                                                               §§goto(addr421);
                                                                                                               §§push(0);
                                                                                                            }
                                                                                                            break;
                                                                                                         }
                                                                                                         §§goto(addr472);
                                                                                                      }
                                                                                                      §§goto(addr462);
                                                                                                   }
                                                                                                   §§goto(addr333);
                                                                                                }
                                                                                             })
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc10_);
                                                                                                   addr276:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!(_loc20_ || this))
                                                                                                      {
                                                                                                         break loop22;
                                                                                                      }
                                                                                                      if(_loc20_ || _loc3_)
                                                                                                      {
                                                                                                         §§push(_loc1_.§`u§);
                                                                                                         continue loop23;
                                                                                                      }
                                                                                                      continue loop40;
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc1_.push);
                                                                                                break loop22;
                                                                                             }
                                                                                          }
                                                                                          break;
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§goto(addr497);
                                                                                       }
                                                                                       continue loop28;
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc6_.§`!#§());
                                                                     if(_loc21_ && _loc2_)
                                                                     {
                                                                        continue loop7;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§pop().ApplyImpulse(new b2Vec2(_loc12_,_loc13_),new b2Vec2(_loc3_,_loc4_));
                                                                        §§goto(addr366);
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr461);
                                                         }
                                                         §§goto(addr445);
                                                      }
                                                      §§goto(addr471);
                                                   }
                                                   §§goto(addr299);
                                                }
                                                §§goto(addr229);
                                             }
                                             §§goto(addr502);
                                          }
                                          §§goto(addr357);
                                       }
                                    }
                                    if(_loc20_)
                                    {
                                       §§goto(addr757);
                                       §§push(this.§8@§);
                                    }
                                    §§goto(addr722);
                                 },§§goto(addr566))
                                 {
                                    loop4:
                                    while(true)
                                    {
                                       §§push(_loc1_.y);
                                       if(!(_loc21_ && _loc1_))
                                       {
                                          §§push(Number(§§pop()));
                                          loop5:
                                          while(true)
                                          {
                                             _loc4_ = §§pop();
                                             if(_loc20_ || _loc2_)
                                             {
                                                §§push(_loc1_.damage);
                                                if(_loc20_)
                                                {
                                                   §§push(Number(§§pop()));
                                                   if(!_loc21_)
                                                   {
                                                      if(!_loc20_)
                                                      {
                                                         continue;
                                                      }
                                                      _loc5_ = §§pop();
                                                      if(_loc20_ || _loc2_)
                                                      {
                                                         continue loop3;
                                                      }
                                                      addr722:
                                                      loop80:
                                                      while(true)
                                                      {
                                                         §§push(_loc7_);
                                                         loop81:
                                                         while(true)
                                                         {
                                                            §§push(180);
                                                            if(_loc20_)
                                                            {
                                                               §§push(§§pop() / Math.PI);
                                                               if(_loc20_ || _loc3_)
                                                               {
                                                                  §§push(§§pop() / §§pop());
                                                                  loop82:
                                                                  while(true)
                                                                  {
                                                                     if(_loc20_ || this)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                           loop83:
                                                                           for(; !(_loc21_ && this); §§push(§§pop() + §§pop()),if(_loc20_ || this)
                                                                           {
                                                                              continue loop82;
                                                                           })
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 _loc17_ = §§pop();
                                                                                 addr683:
                                                                                 addr713:
                                                                                 while(!(_loc21_ && _loc3_))
                                                                                 {
                                                                                    if(_loc20_)
                                                                                    {
                                                                                       loop85:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(this.§8@§);
                                                                                          if(!(_loc21_ && _loc3_))
                                                                                          {
                                                                                             §§push(§§pop().particles);
                                                                                             if(_loc21_ && _loc1_)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             §§push(§-&§.§,G§);
                                                                                             if(_loc20_)
                                                                                             {
                                                                                                §§push(§,v§.§-!;§);
                                                                                                if(_loc20_)
                                                                                                {
                                                                                                   §§push(§-&§.§ ,§);
                                                                                                   if(_loc20_)
                                                                                                   {
                                                                                                      §§push(_loc3_);
                                                                                                      if(!(_loc21_ && _loc3_))
                                                                                                      {
                                                                                                         §§push(_loc4_);
                                                                                                         if(!(_loc21_ && _loc1_))
                                                                                                         {
                                                                                                            §§push(_loc16_);
                                                                                                            §§push("");
                                                                                                            §§push(§-&§.§'=§);
                                                                                                            §§push(_loc15_);
                                                                                                            if(!_loc21_)
                                                                                                            {
                                                                                                               §§push(§§pop() * Math.cos(_loc17_));
                                                                                                            }
                                                                                                            §§push(_loc15_);
                                                                                                            if(!_loc21_)
                                                                                                            {
                                                                                                               §§push(-§§pop());
                                                                                                               if(!(_loc21_ && this))
                                                                                                               {
                                                                                                                  §§push(§§pop() * Math.sin(_loc17_));
                                                                                                               }
                                                                                                            }
                                                                                                            §§pop().addParticle(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),20,0);
                                                                                                            if(!_loc21_)
                                                                                                            {
                                                                                                               break loop5;
                                                                                                            }
                                                                                                            continue loop0;
                                                                                                         }
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc4_);
                                                                                                         }
                                                                                                         addr767:
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§pop().addParticle(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),600,"",§-&§.§'=§,0,0,0,0,1,20,true);
                                                                                                         addr780:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(30);
                                                                                                            while(true)
                                                                                                            {
                                                                                                               _loc7_ = §§pop();
                                                                                                               addr754:
                                                                                                               addr526:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  addr791:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc7_);
                                                                                                                     addr792:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        break loop81;
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               if(_loc20_ || _loc3_)
                                                                                                               {
                                                                                                                  §§push(5);
                                                                                                                  if(_loc21_ && _loc1_)
                                                                                                                  {
                                                                                                                     break loop81;
                                                                                                                  }
                                                                                                                  continue loop83;
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                      }
                                                                                                      addr766:
                                                                                                   }
                                                                                                   §§goto(addr767);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                   }
                                                                                                   addr764:
                                                                                                }
                                                                                                §§goto(addr766);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                }
                                                                                                addr762:
                                                                                             }
                                                                                             §§goto(addr764);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop().particles);
                                                                                                break loop85;
                                                                                             }
                                                                                             addr757:
                                                                                          }
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§goto(addr762);
                                                                                       }
                                                                                       addr573:
                                                                                    }
                                                                                    §§goto(addr754);
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc20_ || _loc2_)
                                                                                    {
                                                                                       if(!_loc21_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       §§goto(addr780);
                                                                                    }
                                                                                    addr750:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(1250);
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(Math.random() * 750);
                                                                                          addr699:
                                                                                          addr519:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop() + §§pop());
                                                                                             break loop83;
                                                                                          }
                                                                                          if(_loc21_ && _loc2_)
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                          §§goto(addr526);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 continue loop80;
                                                                              }
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              if(_loc20_ || _loc3_)
                                                                              {
                                                                                 if(_loc20_)
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(Number(§§pop()));
                                                                                       break loop82;
                                                                                    }
                                                                                    addr709:
                                                                                 }
                                                                                 break loop2;
                                                                              }
                                                                              addr749:
                                                                              while(true)
                                                                              {
                                                                                 _loc15_ = §§pop();
                                                                                 §§goto(addr750);
                                                                              }
                                                                           }
                                                                        }
                                                                        addr674:
                                                                     }
                                                                     break;
                                                                     if(_loc21_ && this)
                                                                     {
                                                                        continue;
                                                                     }
                                                                     §§push(int(§§pop()));
                                                                     if(!(_loc21_ && _loc2_))
                                                                     {
                                                                        if(_loc21_)
                                                                        {
                                                                           continue loop81;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           _loc7_ = §§pop();
                                                                           if(!_loc20_)
                                                                           {
                                                                              continue loop0;
                                                                           }
                                                                           if(!_loc21_)
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 if(false)
                                                                                 {
                                                                                    §§goto(addr573);
                                                                                 }
                                                                                 §§goto(addr791);
                                                                              }
                                                                              addr571:
                                                                           }
                                                                           §§goto(addr683);
                                                                        }
                                                                     }
                                                                     §§goto(addr792);
                                                                  }
                                                                  while(_loc20_)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        _loc16_ = §§pop();
                                                                        §§goto(addr713);
                                                                     }
                                                                  }
                                                                  break loop4;
                                                               }
                                                               §§goto(addr699);
                                                            }
                                                            break;
                                                         }
                                                         while(§§pop() < §§pop())
                                                         {
                                                            §§push(0.75);
                                                            if(_loc20_ || _loc1_)
                                                            {
                                                               §§push(_loc2_);
                                                               if(!(_loc21_ && _loc1_))
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  break loop4;
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() + §§pop());
                                                                  break loop2;
                                                               }
                                                               addr747:
                                                            }
                                                            §§goto(addr749);
                                                         }
                                                         continue loop0;
                                                      }
                                                   }
                                                   §§goto(addr712);
                                                }
                                                §§goto(addr682);
                                             }
                                             break;
                                          }
                                          while(true)
                                          {
                                             §§push(_loc7_);
                                             if(_loc20_)
                                             {
                                                §§goto(addr519);
                                             }
                                             §§goto(addr792);
                                          }
                                       }
                                       break;
                                    }
                                    while(true)
                                    {
                                       §§goto(addr747);
                                    }
                                 }
                                 continue;
                              }
                              continue loop1;
                           }
                           §§goto(addr674);
                        }
                        break;
                     }
                     while(true)
                     {
                        §§goto(addr749);
                     }
                  }
               }
               §§goto(addr709);
            }
            §§goto(addr571);
         }
      }
      
      protected function getMainExplosionCoreName(param1:int) : String
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
         return §-&§.§9'§;
      }
      
      public function §`!"§(param1:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:§@m§ = null;
         var _loc3_:* = int(this.§5! §.length - 1);
         loop0:
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§5! §[_loc3_];
            if(_loc4_)
            {
               §§push(_loc2_.§?u§());
               loop1:
               for(; !§§pop(); if(_loc5_ && this)
               {
                  continue;
               },§§goto(addr132))
               {
                  §§push(_loc2_.§;!B§());
                  loop2:
                  while(!_loc5_)
                  {
                     if(!§§pop())
                     {
                        §§push(this.§2!T§(_loc2_));
                        loop3:
                        while(!§§pop())
                        {
                           §§push(_loc2_.isReadyToBeRemoved(param1));
                           loop4:
                           while(true)
                           {
                              if(!(_loc4_ || param1))
                              {
                                 continue loop3;
                                 if(!§§pop())
                                 {
                                    §§push(_loc2_.§ !?§());
                                    if(!_loc4_)
                                    {
                                       continue;
                                    }
                                    if(_loc5_)
                                    {
                                       continue loop2;
                                    }
                                    if(§§pop())
                                    {
                                       loop10:
                                       while(true)
                                       {
                                          if(!_loc5_)
                                          {
                                             _loc2_.update(param1);
                                             loop11:
                                             while(true)
                                             {
                                                if(_loc4_)
                                                {
                                                   if(!(_loc4_ || param1))
                                                   {
                                                      break loop3;
                                                   }
                                                   addr36:
                                                   while(true)
                                                   {
                                                      §§push(_loc3_);
                                                      if(_loc4_ || _loc3_)
                                                      {
                                                         §§push(§§pop() - 1);
                                                      }
                                                      _loc3_ = §§pop();
                                                      if(_loc4_)
                                                      {
                                                         if(!_loc5_)
                                                         {
                                                            if(true)
                                                            {
                                                               addr53:
                                                               break;
                                                            }
                                                            continue;
                                                         }
                                                         continue loop10;
                                                      }
                                                      continue loop11;
                                                   }
                                                   continue loop0;
                                                   addr36:
                                                }
                                                else
                                                {
                                                   loop9:
                                                   while(true)
                                                   {
                                                      if(_loc4_)
                                                      {
                                                         this.removeObjectWithIndex(_loc3_,false,true,true);
                                                         addr150:
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            this.removeObjectWithIndex(_loc3_,false,false,false);
                                                            break loop9;
                                                         }
                                                         addr177:
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      §§goto(addr36);
                                                   }
                                                   addr158:
                                                   addr148:
                                                }
                                                §§goto(addr36);
                                             }
                                          }
                                          while(true)
                                          {
                                             if(!_loc4_)
                                             {
                                                break loop4;
                                             }
                                             if(!(_loc5_ && this))
                                             {
                                                if(!(_loc5_ && param1))
                                                {
                                                   §§goto(addr53);
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                      §§goto(addr36);
                                                   }
                                                   addr190:
                                                }
                                                §§goto(addr36);
                                             }
                                             §§goto(addr158);
                                             §§goto(addr150);
                                          }
                                          addr215:
                                          while(true)
                                          {
                                             addr178:
                                             while(true)
                                             {
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr36);
                                 }
                              }
                              continue loop1;
                              addr132:
                           }
                           while(true)
                           {
                              if(!_loc5_)
                              {
                                 if(_loc4_ || this)
                                 {
                                    if(!_loc5_)
                                    {
                                       while(true)
                                       {
                                          _loc2_.§,!L§(§=!5§.§^!X§);
                                          §§goto(addr148);
                                       }
                                       addr144:
                                    }
                                    while(true)
                                    {
                                       this.removeObjectWithIndex(_loc3_,false,false,false);
                                    }
                                    addr199:
                                 }
                                 §§goto(addr215);
                              }
                              else
                              {
                                 while(true)
                                 {
                                    this.§"n§(_loc2_,param1);
                                 }
                                 addr186:
                              }
                              §§goto(addr190);
                           }
                        }
                        while(true)
                        {
                           if(!(_loc4_ || param1))
                           {
                              break loop1;
                           }
                           _loc2_.§,!L§(§=!5§.§^!X§);
                           §§goto(addr177);
                        }
                     }
                     §§goto(addr186);
                  }
                  while(true)
                  {
                     if(§§pop())
                     {
                        §§goto(addr199);
                     }
                     §§goto(addr178);
                  }
               }
               while(true)
               {
                  §§goto(addr198);
               }
            }
            §§goto(addr144);
         }
         if(!_loc5_)
         {
            this.§?!H§();
         }
      }
      
      private function §switch§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§]!M§ = null;
         for each(_loc1_ in this.§2j§)
         {
            if(!_loc4_)
            {
               this.§8@§.mLevelEngine.mWorld.§+`§(_loc1_.set);
            }
         }
      }
      
      public function §9u§() : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§@m§ = null;
         var _loc1_:int = 0;
         while(true)
         {
            if(_loc1_ >= this.§5! §.length)
            {
               return false;
            }
            _loc2_ = this.§5! §[_loc1_];
            if(_loc3_ && _loc3_)
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
               if(!(_loc3_ && _loc2_))
               {
                  break;
               }
            }
            _loc1_++;
         }
         §§goto(addr65);
         §§push(true);
      }
      
      public function §2!T§(param1:§@m§) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
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
                     while(true)
                     {
                        §§pop();
                        loop3:
                        while(true)
                        {
                           §§push(param1.§8!Q§.§ s§() == §#!+§.§#D§);
                           if(_loc2_ || _loc3_)
                           {
                              if(!(_loc2_ || param1))
                              {
                                 break;
                              }
                              §§push(!§§pop());
                              while(true)
                              {
                                 §§push(Boolean(§§pop()));
                                 addr60:
                                 if(_loc2_ || _loc3_)
                                 {
                                    §§push(Boolean(§§pop()));
                                    loop9:
                                    while(true)
                                    {
                                       do
                                       {
                                          if(§§pop())
                                          {
                                             if(!(_loc3_ && param1))
                                             {
                                                if(_loc2_)
                                                {
                                                   while(true)
                                                   {
                                                      §§push(true);
                                                      addr90:
                                                      loop12:
                                                      while(true)
                                                      {
                                                         if(_loc2_ || param1)
                                                         {
                                                            return §§pop();
                                                            addr125:
                                                         }
                                                         while(!_loc3_)
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(§§pop());
                                                               if(_loc3_)
                                                               {
                                                                  continue loop1;
                                                               }
                                                               if(!§§pop())
                                                               {
                                                                  continue loop9;
                                                               }
                                                               loop7:
                                                               while(true)
                                                               {
                                                                  §§pop();
                                                                  addr143:
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§8@§.§null §.§-8§(param1.§`!#§().GetPosition().x,param1.§`!#§().GetPosition().y));
                                                                     if(!(_loc3_ && param1))
                                                                     {
                                                                        continue loop7;
                                                                     }
                                                                     continue loop12;
                                                                  }
                                                                  continue loop12;
                                                               }
                                                            }
                                                         }
                                                         continue loop0;
                                                      }
                                                   }
                                                   addr89:
                                                }
                                                §§goto(addr143);
                                             }
                                             else
                                             {
                                                if(!_loc2_)
                                                {
                                                   break loop9;
                                                }
                                                addr24:
                                                §§push(false);
                                                if(_loc2_)
                                                {
                                                   continue;
                                                }
                                             }
                                             §§goto(addr90);
                                          }
                                          §§goto(addr24);
                                       }
                                       while(_loc3_);
                                       
                                       return §§pop();
                                    }
                                    continue loop3;
                                 }
                              }
                           }
                           §§goto(addr125);
                        }
                     }
                  }
                  §§goto(addr127);
               }
            }
         }
         §§goto(addr89);
      }
      
      public function removeObjectWithIndex(param1:int, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(_loc9_ || this)
         {
            if(param1 < 0)
            {
               if(_loc9_)
               {
                  return;
               }
            }
         }
         var _loc5_:§@m§;
         §§push((_loc5_ = this.§5! §[param1]).§7!?§());
         if(!_loc8_)
         {
            if(§§pop())
            {
               if(!(_loc8_ && param3))
               {
                  var _loc6_:*;
                  §§push((_loc6_ = this).§4L§);
                  if(_loc9_ || this)
                  {
                     §§push(§§pop() + 1);
                  }
                  var _loc7_:* = §§pop();
                  if(_loc9_)
                  {
                     _loc6_.§4L§ = _loc7_;
                  }
                  if(!_loc8_)
                  {
                     addr282:
                     if(_loc5_ == this.§8@§.activeObject)
                     {
                        while(true)
                        {
                           §§push(this.§8@§);
                           addr289:
                           loop4:
                           while(true)
                           {
                              §§pop().activeObject = null;
                              addr291:
                              while(true)
                              {
                                 continue loop4;
                              }
                           }
                        }
                        addr287:
                     }
                     while(true)
                     {
                        §§push(param2);
                        addr241:
                        loop17:
                        while(true)
                        {
                           if(§§pop())
                           {
                              loop14:
                              while(true)
                              {
                                 §§push(this.§8@§);
                                 if(!_loc8_)
                                 {
                                    §§push(_loc5_.§8!Q§.score);
                                    §§push(§^_§.§3F§);
                                    §§push(true);
                                    §§push(_loc5_.§`!#§().GetPosition().x);
                                    §§push(_loc5_.§`!#§().GetPosition().y);
                                    if(_loc9_ || this)
                                    {
                                       §§push(3);
                                       if(!(_loc8_ && param2))
                                       {
                                          addr276:
                                          §§push(§§pop() - §§pop());
                                          §§push(§-&§.§7!W§(_loc5_.§ h§));
                                       }
                                       §§pop().addScore(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
                                       while(true)
                                       {
                                          addr214:
                                          while(true)
                                          {
                                             §§push(param3);
                                             addr216:
                                             loop2:
                                             while(true)
                                             {
                                                if(_loc9_ || this)
                                                {
                                                   if(§§pop())
                                                   {
                                                      addr224:
                                                      while(true)
                                                      {
                                                         if(_loc9_ || param3)
                                                         {
                                                            _loc5_.addDestructionParticles(this.§8@§.particles);
                                                            while(true)
                                                            {
                                                               if(!_loc8_)
                                                               {
                                                                  break loop2;
                                                               }
                                                               §§goto(addr291);
                                                            }
                                                            addr236:
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr287);
                                                         }
                                                         §§goto(addr291);
                                                      }
                                                      addr224:
                                                   }
                                                   break;
                                                }
                                                continue loop17;
                                             }
                                             while(true)
                                             {
                                                §§push(param4);
                                                loop12:
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      addr210:
                                                      while(true)
                                                      {
                                                         this.checkExplosions(_loc5_);
                                                         addr213:
                                                         while(true)
                                                         {
                                                         }
                                                      }
                                                      addr210:
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(_loc5_.isTexture());
                                                      if(!_loc9_)
                                                      {
                                                         continue loop12;
                                                      }
                                                      if(!(_loc8_ && param3))
                                                      {
                                                         while(true)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               if(!(_loc8_ && param1))
                                                               {
                                                                  if(!_loc8_)
                                                                  {
                                                                     addr188:
                                                                     while(true)
                                                                     {
                                                                        this.§^H§(_loc5_.sprite);
                                                                        §§goto(addr192);
                                                                     }
                                                                     addr188:
                                                                  }
                                                                  §§goto(addr236);
                                                               }
                                                               addr192:
                                                               while(true)
                                                               {
                                                                  if(!(_loc8_ && this))
                                                                  {
                                                                     if(_loc9_ || param1)
                                                                     {
                                                                        continue;
                                                                     }
                                                                     continue loop14;
                                                                  }
                                                                  §§goto(addr213);
                                                               }
                                                               _loc5_ = null;
                                                               if(_loc9_ || this)
                                                               {
                                                                  this.§5! §[param1] = null;
                                                                  this.§5! §.splice(param1,1);
                                                                  addr331:
                                                                  if(_loc8_)
                                                                  {
                                                                     §§goto(addr331);
                                                                  }
                                                               }
                                                               return;
                                                            }
                                                            §§goto(addr188);
                                                         }
                                                         addr178:
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr216);
                                                      }
                                                      §§goto(addr224);
                                                   }
                                                   §§goto(addr210);
                                                }
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr276);
                                 }
                                 §§goto(addr289);
                              }
                           }
                           §§goto(addr214);
                        }
                     }
                  }
                  §§goto(addr210);
               }
               §§goto(addr291);
            }
            else
            {
               §§push(_loc5_.§ !?§());
               if(_loc9_ || param3)
               {
                  if(§§pop())
                  {
                     if(_loc9_ || this)
                     {
                        §§push((_loc6_ = this).§#l§);
                        if(!_loc8_)
                        {
                           §§push(§§pop() + 1);
                        }
                        _loc7_ = §§pop();
                        if(_loc9_ || param3)
                        {
                           _loc6_.§#l§ = _loc7_;
                        }
                        if(_loc9_)
                        {
                           §§push((_loc6_ = this).§50§);
                           if(!_loc8_)
                           {
                              §§push(§§pop() - 1);
                           }
                           _loc7_ = §§pop();
                           if(_loc9_ || param1)
                           {
                              _loc6_.§50§ = _loc7_;
                           }
                           if(!(_loc8_ && param1))
                           {
                              addr137:
                              §§goto(addr282);
                           }
                           §§goto(addr213);
                        }
                        §§goto(addr137);
                     }
                     §§goto(addr188);
                  }
                  §§goto(addr282);
               }
            }
            §§goto(addr241);
         }
         §§goto(addr178);
      }
      
      private function §^H§(param1:Sprite) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            §§push(this.§=!9§);
            if(!_loc2_)
            {
               if(!§§pop().contains(param1))
               {
                  loop0:
                  while(true)
                  {
                     §§push(this.§67§);
                     if(_loc3_)
                     {
                        if(§§pop().contains(param1))
                        {
                           addr139:
                           if(!_loc2_)
                           {
                              §§push(this.§67§);
                              break;
                           }
                           if(!(_loc2_ && _loc3_))
                           {
                              return;
                           }
                           addr167:
                           addr169:
                           this.§=!9§.removeChild(param1);
                           return;
                           addr171:
                        }
                        else
                        {
                           loop1:
                           while(true)
                           {
                              §§push(this.§4R§);
                              if(_loc3_ || this)
                              {
                                 if(!§§pop().contains(param1))
                                 {
                                    while(true)
                                    {
                                       §§push(this.§`W§);
                                       if(!_loc2_)
                                       {
                                          if(!§§pop().contains(param1))
                                          {
                                             return;
                                          }
                                          if(!_loc2_)
                                          {
                                             if(!_loc2_)
                                             {
                                                addr46:
                                                this.§`W§.removeChild(param1);
                                             }
                                             else
                                             {
                                                §§goto(addr139);
                                             }
                                          }
                                          if(!(_loc2_ && param1))
                                          {
                                             if(_loc2_ && param1)
                                             {
                                                §§push(this.§4R§);
                                             }
                                             else
                                             {
                                                addr110:
                                             }
                                             if(!(_loc2_ && this))
                                             {
                                                return;
                                             }
                                             continue loop0;
                                             break loop1;
                                          }
                                          if(_loc2_ && _loc3_)
                                          {
                                             break;
                                          }
                                          if(!(_loc2_ && _loc3_))
                                          {
                                             continue;
                                          }
                                          continue loop1;
                                       }
                                       §§goto(addr46);
                                    }
                                    addr114:
                                    if(_loc3_ || _loc2_)
                                    {
                                       return;
                                    }
                                    §§goto(addr171);
                                 }
                                 §§goto(addr110);
                              }
                              break;
                           }
                           §§pop().removeChild(param1);
                           §§goto(addr114);
                        }
                        §§goto(addr171);
                     }
                     break;
                  }
                  §§pop().removeChild(param1);
                  §§goto(addr139);
               }
               §§goto(addr167);
            }
            §§goto(addr169);
         }
         §§goto(addr167);
      }
      
      protected function checkExplosions(param1:§@m§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(param1.§7J§());
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
                        addr139:
                        do
                        {
                           §§push(param1.§"!J§());
                           if(!_loc2_)
                           {
                              §§push(Boolean(§§pop()));
                           }
                           if(!(_loc3_ || _loc2_))
                           {
                              continue loop2;
                           }
                        }
                        while(_loc3_ || this);
                        
                        continue loop1;
                     }
                  }
                  while(§§pop())
                  {
                     if(_loc3_ || this)
                     {
                        §§push(param1.§ h§);
                        if(!_loc3_)
                        {
                           continue loop0;
                        }
                        if(§§pop().toUpperCase() != §]!W§.§'`§)
                        {
                           this.addExplosions(§?L§.§6!1§,param1.§`!#§().GetPosition().x,param1.§`!#§().GetPosition().y);
                           if(!(_loc2_ && _loc3_))
                           {
                              if(!(_loc2_ && param1))
                              {
                                 break;
                              }
                           }
                           addr113:
                           if(_loc3_ || param1)
                           {
                              break;
                              addr120:
                           }
                           §§goto(addr139);
                        }
                        this.addExplosions(§?L§.§'H§,param1.§`!#§().GetPosition().x,param1.§`!#§().GetPosition().y);
                     }
                     §§goto(addr113);
                  }
                  return;
               }
            }
         }
         §§goto(addr120);
      }
      
      public function §3!K§(param1:Object, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            this.removeObjectWithIndex(this.§5! §.indexOf(param1),param2,param3,param4);
         }
      }
      
      public function §<R§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §§push(this.§-X§);
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
            addr78:
         }
         while(true)
         {
            §§push(this.§-X§);
            if(!_loc3_)
            {
               §§push(param2);
               if(_loc4_ || param2)
               {
                  if(!(_loc3_ && param1))
                  {
                     addr55:
                     §§push(-§§pop());
                     if(_loc4_ || _loc3_)
                     {
                        §§pop().y = §§pop();
                        if(!_loc3_)
                        {
                           break;
                        }
                        continue;
                     }
                     §§goto(addr79);
                  }
                  §§goto(addr80);
               }
               §§goto(addr55);
            }
            else
            {
               §§goto(addr78);
            }
         }
      }
      
      public function isPigsAlive(param1:Boolean = false) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§@m§ = null;
         var _loc2_:int = 0;
         loop0:
         while(_loc2_ < this.§5! §.length)
         {
            _loc3_ = this.§5! §[_loc2_] as §@m§;
            if(!(_loc4_ && _loc2_))
            {
               §§push(Boolean(_loc3_));
               if(!(_loc4_ && param1))
               {
                  §§push(§§pop());
                  loop1:
                  while(true)
                  {
                     if(§§pop())
                     {
                        addr257:
                        while(true)
                        {
                           §§pop();
                           addr258:
                           while(true)
                           {
                              §§push(_loc3_.§7!?§());
                              addr226:
                              while(true)
                              {
                                 §§push(Boolean(§§pop()));
                              }
                           }
                        }
                        addr257:
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
                                    while(_loc5_)
                                    {
                                       §§push(_loc3_.§4^§);
                                       loop7:
                                       while(true)
                                       {
                                          §§push(0);
                                          addr182:
                                          while(true)
                                          {
                                             §§push(§§pop() > §§pop());
                                             if(_loc5_)
                                             {
                                                if(_loc4_ && param1)
                                                {
                                                   break;
                                                }
                                                while(true)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      loop24:
                                                      while(true)
                                                      {
                                                         _loc2_++;
                                                         if(_loc5_ || param1)
                                                         {
                                                            break;
                                                         }
                                                         addr142:
                                                         while(true)
                                                         {
                                                            continue loop24;
                                                         }
                                                      }
                                                      addr49:
                                                      addr40:
                                                      if(!(_loc4_ && param1))
                                                      {
                                                         if(true)
                                                         {
                                                            continue loop0;
                                                         }
                                                         loop20:
                                                         while(true)
                                                         {
                                                            §§push(_loc3_.§%n§);
                                                            if(!_loc4_)
                                                            {
                                                               §§push(§§pop().mTryToScream);
                                                               if(_loc5_)
                                                               {
                                                                  continue loop7;
                                                               }
                                                               addr147:
                                                               while(true)
                                                               {
                                                                  §§push(0);
                                                                  addr148:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() <= §§pop());
                                                                     loop17:
                                                                     while(true)
                                                                     {
                                                                        if(_loc5_ || _loc3_)
                                                                        {
                                                                           if(!_loc4_)
                                                                           {
                                                                              if(!(_loc5_ || param1))
                                                                              {
                                                                                 break;
                                                                              }
                                                                              §§push(§§pop());
                                                                              if(_loc5_)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    while(_loc5_ || param1)
                                                                                    {
                                                                                       §§pop();
                                                                                       while(true)
                                                                                       {
                                                                                          continue loop20;
                                                                                          §§goto(addr49);
                                                                                       }
                                                                                       if(!(_loc5_ || _loc3_))
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          addr100:
                                                                                          while(true)
                                                                                          {
                                                                                             if(§§pop())
                                                                                             {
                                                                                                if(!(_loc4_ && param1))
                                                                                                {
                                                                                                   if(!(_loc5_ || _loc2_))
                                                                                                   {
                                                                                                      while(_loc5_ || _loc3_)
                                                                                                      {
                                                                                                         §§push(_loc3_.§%n§);
                                                                                                         break loop20;
                                                                                                      }
                                                                                                      continue loop6;
                                                                                                      addr215:
                                                                                                   }
                                                                                                   if(_loc5_ || _loc2_)
                                                                                                   {
                                                                                                      §§push(true);
                                                                                                      while(!(_loc5_ || this))
                                                                                                      {
                                                                                                         continue loop17;
                                                                                                      }
                                                                                                      return §§pop();
                                                                                                      addr134:
                                                                                                   }
                                                                                                   addr194:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(param1);
                                                                                                      addr195:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(!§§pop());
                                                                                                         addr196:
                                                                                                         while(_loc5_)
                                                                                                         {
                                                                                                            §§push(§§pop());
                                                                                                            while(_loc5_ || this)
                                                                                                            {
                                                                                                               continue loop1;
                                                                                                            }
                                                                                                            continue loop4;
                                                                                                         }
                                                                                                         §§goto(addr226);
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr142);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr40);
                                                                                          }
                                                                                          continue loop0;
                                                                                          addr100:
                                                                                       }
                                                                                       §§goto(addr196);
                                                                                    }
                                                                                    §§goto(addr257);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr100);
                                                                                 }
                                                                              }
                                                                              §§goto(addr199);
                                                                           }
                                                                           §§goto(addr195);
                                                                        }
                                                                        else
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§pop();
                                                                              continue loop17;
                                                                           }
                                                                           addr214:
                                                                        }
                                                                        §§goto(addr215);
                                                                     }
                                                                     continue loop3;
                                                                  }
                                                               }
                                                            }
                                                            break;
                                                         }
                                                         while(true)
                                                         {
                                                            §§goto(addr147);
                                                         }
                                                      }
                                                      §§goto(addr177);
                                                   }
                                                   §§goto(addr194);
                                                }
                                             }
                                             §§goto(addr195);
                                          }
                                          continue loop5;
                                       }
                                    }
                                    §§goto(addr258);
                                 }
                              }
                              §§goto(addr192);
                           }
                        }
                     }
                  }
               }
               §§goto(addr257);
            }
            §§goto(addr258);
         }
         return false;
      }
      
      public function §7e§(param1:Boolean = false) : int
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:§@m§ = null;
         var _loc2_:int = 0;
         var _loc3_:int = this.§5! §.length - 1;
         loop0:
         while(true)
         {
            §§push(_loc3_);
            if(!_loc5_)
            {
               if(§§pop() < 0)
               {
                  §§push(_loc2_);
                  break;
               }
               §§push(Boolean(_loc4_ = this.§5! §[_loc3_] as §@m§));
               if(_loc6_)
               {
                  §§push(§§pop());
                  if(!(_loc5_ && _loc3_))
                  {
                     if(§§pop())
                     {
                        if(_loc6_ || param1)
                        {
                           §§pop();
                           if(!_loc5_)
                           {
                              §§push(_loc4_.§7!?§());
                              if(!(_loc5_ && param1))
                              {
                                 addr222:
                                 §§push(Boolean(§§pop()));
                                 loop21:
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    addr223:
                                    loop22:
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          while(true)
                                          {
                                             §§pop();
                                             addr235:
                                             while(true)
                                             {
                                                §§push(_loc4_.§4^§);
                                                addr192:
                                                loop19:
                                                while(true)
                                                {
                                                   §§push(0);
                                                   addr193:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() > §§pop());
                                                      continue loop19;
                                                   }
                                                }
                                             }
                                          }
                                          addr234:
                                       }
                                       while(true)
                                       {
                                          loop17:
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                loop1:
                                                while(true)
                                                {
                                                   §§push(param1);
                                                   loop2:
                                                   while(true)
                                                   {
                                                      §§push(!§§pop());
                                                      if(!(_loc5_ && this))
                                                      {
                                                         §§push(§§pop());
                                                         loop3:
                                                         while(true)
                                                         {
                                                            if(_loc5_)
                                                            {
                                                               continue loop22;
                                                            }
                                                            if(!§§pop())
                                                            {
                                                               addr209:
                                                               while(true)
                                                               {
                                                                  §§pop();
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc4_.§%n§);
                                                                     loop8:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop().mTryToBlink);
                                                                        loop9:
                                                                        while(true)
                                                                        {
                                                                           if(_loc6_ || _loc2_)
                                                                           {
                                                                              §§push(0);
                                                                              loop10:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop() <= §§pop());
                                                                                 while(_loc6_)
                                                                                 {
                                                                                    if(_loc5_)
                                                                                    {
                                                                                       continue loop21;
                                                                                    }
                                                                                    §§push(§§pop());
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       continue loop3;
                                                                                    }
                                                                                    if(§§pop())
                                                                                    {
                                                                                       loop12:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!(_loc6_ || _loc3_))
                                                                                          {
                                                                                             continue loop17;
                                                                                          }
                                                                                          if(!_loc5_)
                                                                                          {
                                                                                             §§pop();
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc5_ && this)
                                                                                                {
                                                                                                   break;
                                                                                                   addr99:
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc4_.§%n§);
                                                                                                   if(_loc5_)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   §§push(§§pop().mTryToScream);
                                                                                                   if(_loc5_ && param1)
                                                                                                   {
                                                                                                      continue loop9;
                                                                                                   }
                                                                                                   §§push(0);
                                                                                                   if(!_loc6_)
                                                                                                   {
                                                                                                      continue loop10;
                                                                                                   }
                                                                                                   if(_loc6_)
                                                                                                   {
                                                                                                      continue loop12;
                                                                                                   }
                                                                                                }
                                                                                                continue loop8;
                                                                                                addr83:
                                                                                                if(!(_loc6_ || _loc2_))
                                                                                                {
                                                                                                   continue;
                                                                                                }
                                                                                                if(!(_loc5_ && param1))
                                                                                                {
                                                                                                   if(true)
                                                                                                   {
                                                                                                      continue loop0;
                                                                                                   }
                                                                                                   §§goto(addr99);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr235);
                                                                                                }
                                                                                             }
                                                                                             continue loop1;
                                                                                          }
                                                                                          §§goto(addr234);
                                                                                          §§goto(addr193);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr144);
                                                                                 }
                                                                                 continue loop2;
                                                                              }
                                                                           }
                                                                           §§goto(addr192);
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               addr209:
                                                            }
                                                            §§goto(addr144);
                                                         }
                                                      }
                                                      §§goto(addr209);
                                                   }
                                                }
                                                addr196:
                                             }
                                             §§goto(addr63);
                                          }
                                       }
                                    }
                                 }
                                 addr222:
                              }
                              §§goto(addr222);
                           }
                           §§goto(addr196);
                        }
                     }
                     §§goto(addr222);
                  }
                  §§goto(addr223);
               }
               §§goto(addr209);
            }
            break;
         }
         return §§pop();
      }
      
      public function §2§() : int
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§@m§ = null;
         var _loc1_:int = 0;
         var _loc3_:int = 0;
         for each(_loc2_ in this.§5! §)
         {
            if(!_loc6_)
            {
               §§push(Boolean(_loc2_));
               if(!(_loc6_ && _loc3_))
               {
                  if(§§pop())
                  {
                     if(!_loc6_)
                     {
                        addr59:
                        §§pop();
                        if(_loc5_)
                        {
                           addr62:
                           §§push(_loc2_.§?!<§());
                           if(!(_loc6_ && _loc1_))
                           {
                              addr72:
                              if(!§§pop())
                              {
                                 continue;
                              }
                              if(_loc6_ && _loc2_)
                              {
                                 continue;
                              }
                           }
                           §§goto(addr72);
                        }
                        _loc1_++;
                        continue;
                     }
                  }
                  §§goto(addr72);
               }
               §§goto(addr59);
            }
            §§goto(addr62);
         }
         return _loc1_;
      }
      
      public function §5a§() : int
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§@m§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§5! §)
         {
            if(!_loc5_)
            {
               §§push(Boolean(_loc2_));
               if(_loc6_)
               {
                  if(§§pop())
                  {
                     if(!_loc5_)
                     {
                        addr55:
                        §§pop();
                        if(!(_loc6_ || _loc1_))
                        {
                           continue;
                        }
                        addr63:
                        §§push(_loc2_.isTexture());
                        if(!(_loc5_ && this))
                        {
                           §§push(Boolean(§§pop()));
                        }
                     }
                  }
                  if(§§pop())
                  {
                     if(!_loc5_)
                     {
                        _loc1_++;
                     }
                  }
                  continue;
               }
               §§goto(addr55);
            }
            §§goto(addr63);
         }
         return _loc1_;
      }
      
      public function makePigsSmile(param1:Number = 1) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§@m§ = null;
         var _loc2_:int = this.§5! §.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§5! §[_loc2_];
            if(_loc4_)
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
                                 addr130:
                                 loop13:
                                 while(true)
                                 {
                                    addr46:
                                    while(true)
                                    {
                                       §§push(_loc3_.§4^§ > 0);
                                       if(_loc4_)
                                       {
                                          break;
                                       }
                                       continue loop8;
                                    }
                                    if(_loc5_)
                                    {
                                       continue loop1;
                                    }
                                    addr55:
                                    if(_loc4_ || _loc3_)
                                    {
                                       if(_loc4_)
                                       {
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                if(!(_loc5_ && _loc2_))
                                                {
                                                   if(_loc4_ || _loc2_)
                                                   {
                                                      §§push(_loc3_.§%n§);
                                                      §§push(§'x§.§ H§);
                                                      if(!(_loc5_ && this))
                                                      {
                                                         §§push(§§pop() * param1);
                                                      }
                                                      §§pop().mTryToScream = §§pop();
                                                      while(true)
                                                      {
                                                         if(!(_loc5_ && param1))
                                                         {
                                                            continue;
                                                         }
                                                         continue loop13;
                                                      }
                                                      continue loop13;
                                                      addr104:
                                                   }
                                                   break;
                                                }
                                                §§goto(addr104);
                                             }
                                             §§goto(addr36);
                                          }
                                          while(true)
                                          {
                                             §§push(_loc3_.§7!?§());
                                          }
                                          addr147:
                                          addr64:
                                       }
                                       while(true)
                                       {
                                          §§pop();
                                          §§goto(addr147);
                                       }
                                       addr146:
                                    }
                                    while(true)
                                    {
                                       §§push(Boolean(§§pop()));
                                       continue loop1;
                                       §§goto(addr55);
                                    }
                                 }
                              }
                           }
                           §§goto(addr64);
                        }
                        continue;
                        addr124:
                     }
                     §§goto(addr146);
                  }
               }
            }
            §§goto(addr130);
         }
      }
      
      public function §>1§() : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§@m§ = null;
         var _loc1_:* = int(this.§5! §.length - 1);
         loop0:
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§5! §[_loc1_] as §@m§;
            if(!_loc4_)
            {
               §§push(Boolean(_loc2_));
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
                              §§push(_loc2_.§ !?§());
                              while(true)
                              {
                                 §§push(Boolean(§§pop()));
                                 addr114:
                                 while(_loc3_ || _loc2_)
                                 {
                                 }
                                 addr67:
                                 continue loop3;
                                 if(!(_loc4_ && _loc3_))
                                 {
                                    if(_loc3_)
                                    {
                                       loop9:
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             if(_loc4_)
                                             {
                                                loop10:
                                                while(_loc3_ || _loc1_)
                                                {
                                                   while(true)
                                                   {
                                                      §§push(_loc1_);
                                                      if(!_loc4_)
                                                      {
                                                         §§push(§§pop() - 1);
                                                      }
                                                      _loc1_ = §§pop();
                                                      if(_loc4_)
                                                      {
                                                         continue loop10;
                                                      }
                                                      if(true)
                                                      {
                                                         break loop9;
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(_loc2_.§4^§ > 0);
                                                         if(_loc3_ || _loc1_)
                                                         {
                                                            break;
                                                         }
                                                         §§goto(addr93);
                                                      }
                                                      if(!(_loc3_ || this))
                                                      {
                                                         §§goto(addr114);
                                                      }
                                                      §§goto(addr67);
                                                   }
                                                }
                                                continue loop4;
                                             }
                                             if(!_loc4_)
                                             {
                                                §§push(true);
                                                loop11:
                                                while(_loc4_ && _loc3_)
                                                {
                                                   while(true)
                                                   {
                                                      §§pop();
                                                      continue loop11;
                                                   }
                                                }
                                                return §§pop();
                                                addr93:
                                             }
                                             while(true)
                                             {
                                             }
                                             §§goto(addr48);
                                          }
                                          §§goto(addr38);
                                       }
                                       continue loop0;
                                       addr86:
                                    }
                                    continue loop1;
                                 }
                              }
                           }
                        }
                     }
                     while(true)
                     {
                        §§push(§§pop());
                        if(_loc4_ && _loc2_)
                        {
                           break;
                        }
                        if(§§pop())
                        {
                           §§goto(addr131);
                        }
                        §§goto(addr86);
                     }
                  }
               }
            }
            §§goto(addr132);
         }
         return false;
      }
      
      public function isWorldAtSleep() : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§@m§ = null;
         var _loc1_:* = int(this.§5! §.length - 1);
         loop0:
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§5! §[_loc1_] as §@m§;
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
                              §§push(_loc2_.§4^§);
                              loop5:
                              while(true)
                              {
                                 §§push(0);
                                 addr223:
                                 while(true)
                                 {
                                    §§push(§§pop() > §§pop());
                                    addr224:
                                    while(true)
                                    {
                                       §§push(Boolean(§§pop()));
                                       addr226:
                                       while(!_loc4_)
                                       {
                                       }
                                       continue loop1;
                                    }
                                 }
                                 loop23:
                                 while(true)
                                 {
                                    §§push(_loc2_.§4^§);
                                    if(!(_loc3_ || _loc2_))
                                    {
                                       continue loop5;
                                    }
                                    §§push(0);
                                    if(!_loc4_)
                                    {
                                       §§push(§§pop() > §§pop());
                                       if(_loc3_)
                                       {
                                          if(!_loc4_)
                                          {
                                             if(_loc3_)
                                             {
                                                loop21:
                                                while(!§§pop())
                                                {
                                                   loop22:
                                                   while(true)
                                                   {
                                                      §§push(_loc1_);
                                                      if(!_loc4_)
                                                      {
                                                         §§push(§§pop() - 1);
                                                      }
                                                      if(_loc3_)
                                                      {
                                                         _loc1_ = §§pop();
                                                         if(!_loc3_)
                                                         {
                                                            if(_loc3_ || _loc3_)
                                                            {
                                                               if(!(_loc4_ && _loc1_))
                                                               {
                                                                  if(!(_loc4_ && _loc3_))
                                                                  {
                                                                     continue;
                                                                  }
                                                                  loop27:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc2_.§!!A§());
                                                                     loop28:
                                                                     while(true)
                                                                     {
                                                                        §§push(Boolean(§§pop()));
                                                                        addr206:
                                                                        loop15:
                                                                        while(true)
                                                                        {
                                                                           if(!(_loc4_ && this))
                                                                           {
                                                                              §§push(§§pop());
                                                                              loop16:
                                                                              while(!_loc4_)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop();
                                                                                       addr218:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc2_.§5!@§());
                                                                                          if(!(_loc4_ && _loc2_))
                                                                                          {
                                                                                             §§push(!§§pop());
                                                                                             break loop23;
                                                                                          }
                                                                                          §§goto(addr186);
                                                                                       }
                                                                                    }
                                                                                    addr217:
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       addr178:
                                                                                       if(!(_loc4_ && this))
                                                                                       {
                                                                                          §§push(false);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr218);
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc2_.§ !?§());
                                                                                          if(!_loc4_)
                                                                                          {
                                                                                             if(!(_loc3_ || _loc1_))
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             §§push(Boolean(§§pop()));
                                                                                             while(!_loc4_)
                                                                                             {
                                                                                                §§push(§§pop());
                                                                                                if(!_loc4_)
                                                                                                {
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      addr150:
                                                                                                      while(_loc3_ || _loc1_)
                                                                                                      {
                                                                                                         §§pop();
                                                                                                         break loop22;
                                                                                                      }
                                                                                                      break loop23;
                                                                                                      addr150:
                                                                                                   }
                                                                                                   continue loop21;
                                                                                                }
                                                                                                continue loop16;
                                                                                                if(_loc4_ && this)
                                                                                                {
                                                                                                   continue;
                                                                                                }
                                                                                                if(!_loc4_)
                                                                                                {
                                                                                                   if(_loc4_)
                                                                                                   {
                                                                                                      continue loop28;
                                                                                                   }
                                                                                                   if(_loc3_ || this)
                                                                                                   {
                                                                                                      return §§pop();
                                                                                                   }
                                                                                                   §§goto(addr224);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr217);
                                                                                                }
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(!§§pop());
                                                                                                if(!_loc3_)
                                                                                                {
                                                                                                   continue loop15;
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      continue loop27;
                                                                                                   }
                                                                                                   continue loop22;
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr150);
                                                                                       }
                                                                                       addr131:
                                                                                    }
                                                                                    addr186:
                                                                                    return §§pop();
                                                                                 }
                                                                              }
                                                                              while(!(_loc4_ && _loc3_))
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop();
                                                                                       addr239:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc2_.§5x§);
                                                                                          addr195:
                                                                                          while(true)
                                                                                          {
                                                                                             §§goto(addr198);
                                                                                             continue loop22;
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    addr238:
                                                                                 }
                                                                                 §§goto(addr201);
                                                                              }
                                                                              continue loop2;
                                                                              addr230:
                                                                           }
                                                                           continue loop3;
                                                                        }
                                                                        continue loop4;
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr178);
                                                            }
                                                         }
                                                         if(!(_loc3_ || _loc2_))
                                                         {
                                                            break loop21;
                                                         }
                                                         if(true)
                                                         {
                                                            continue loop0;
                                                         }
                                                         continue loop23;
                                                         break;
                                                      }
                                                      §§goto(addr195);
                                                   }
                                                   while(true)
                                                   {
                                                      if(!_loc4_)
                                                      {
                                                         continue loop23;
                                                      }
                                                      if(!_loc4_)
                                                      {
                                                         if(_loc4_)
                                                         {
                                                            continue loop4;
                                                         }
                                                         §§goto(addr131);
                                                      }
                                                      §§goto(addr239);
                                                   }
                                                }
                                                §§goto(addr80);
                                                §§push(false);
                                             }
                                             §§goto(addr226);
                                          }
                                          §§goto(addr150);
                                       }
                                       §§goto(addr80);
                                    }
                                    else
                                    {
                                       §§goto(addr223);
                                    }
                                 }
                                 while(true)
                                 {
                                    if(!_loc4_)
                                    {
                                       if(!_loc4_)
                                       {
                                          §§goto(addr176);
                                       }
                                       §§goto(addr238);
                                    }
                                    §§goto(addr206);
                                 }
                              }
                           }
                        }
                     }
                     while(true)
                     {
                        §§goto(addr230);
                     }
                  }
               }
            }
            §§goto(addr218);
         }
         return true;
      }
      
      public function §[!I§(param1:Boolean = false) : §@m§
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc5_:* = 0;
         var _loc6_:§@m§ = null;
         if(_loc7_ || this)
         {
            if(!this.isPigsAlive())
            {
               if(!_loc8_)
               {
                  §§goto(addr33);
               }
            }
            var _loc2_:int = this.§5! §.length;
            §§push(1);
            if(!(_loc8_ && _loc2_))
            {
               §§push(int(§§pop() + Math.random() * this.§7e§(param1)));
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
                     if(_loc7_)
                     {
                        _loc5_ = §§pop();
                        if(_loc8_ && param1)
                        {
                           break;
                        }
                        do
                        {
                           §§push(_loc5_);
                        }
                        while(!_loc8_);
                        
                        continue loop1;
                        addr290:
                     }
                     while(true)
                     {
                        §§push(_loc2_);
                        if(_loc8_)
                        {
                           break;
                        }
                        if(§§pop() >= §§pop())
                        {
                           if(_loc7_)
                           {
                              break loop2;
                           }
                        }
                        else
                        {
                           §§push(Boolean(_loc6_ = this.§5! §[_loc5_]));
                           if(_loc7_ || _loc3_)
                           {
                              §§push(§§pop());
                              if(!(_loc8_ && this))
                              {
                                 if(§§pop())
                                 {
                                    if(_loc7_)
                                    {
                                       §§pop();
                                       if(!(_loc8_ && _loc2_))
                                       {
                                          §§push(_loc6_.§7!?§());
                                          if(!_loc8_)
                                          {
                                             §§push(Boolean(§§pop()));
                                             loop23:
                                             while(true)
                                             {
                                                §§push(§§pop());
                                                loop22:
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
                                                            §§push(_loc6_.§4^§);
                                                            while(true)
                                                            {
                                                               §§push(0);
                                                               addr251:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() > §§pop());
                                                               }
                                                               addr181:
                                                               if(_loc8_ && _loc3_)
                                                               {
                                                                  continue;
                                                               }
                                                               §§push(0);
                                                               if(_loc7_)
                                                               {
                                                                  if(!(_loc8_ && _loc2_))
                                                                  {
                                                                     §§push(§§pop() <= §§pop());
                                                                     if(!(_loc8_ && _loc2_))
                                                                     {
                                                                        if(_loc7_ || this)
                                                                        {
                                                                           if(!_loc8_)
                                                                           {
                                                                              if(!_loc8_)
                                                                              {
                                                                                 loop26:
                                                                                 while(true)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       loop12:
                                                                                       while(!(_loc7_ || _loc2_))
                                                                                       {
                                                                                          loop13:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc6_.§%n§);
                                                                                             if(!_loc8_)
                                                                                             {
                                                                                                §§push(§§pop().mTryToScream);
                                                                                                if(!(_loc8_ && _loc3_))
                                                                                                {
                                                                                                   §§goto(addr181);
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(0);
                                                                                                   addr233:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop() <= §§pop());
                                                                                                      addr234:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop());
                                                                                                         if(!_loc7_)
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(!(_loc8_ && _loc2_))
                                                                                                               {
                                                                                                                  if(!§§pop())
                                                                                                                  {
                                                                                                                     addr276:
                                                                                                                     loop15:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§pop();
                                                                                                                        addr277:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(_loc8_)
                                                                                                                           {
                                                                                                                              break loop15;
                                                                                                                           }
                                                                                                                           §§push(_loc6_.§%n§);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     continue loop6;
                                                                                                                     addr276:
                                                                                                                  }
                                                                                                                  continue loop26;
                                                                                                               }
                                                                                                               continue loop22;
                                                                                                            }
                                                                                                            continue loop22;
                                                                                                            addr268:
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               continue loop13;
                                                                                                            }
                                                                                                            continue loop26;
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                addr232:
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§goto(addr232);
                                                                                             }
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             if(!§§pop())
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   _loc5_++;
                                                                                                   if(_loc7_)
                                                                                                   {
                                                                                                      if(!(_loc8_ && param1))
                                                                                                      {
                                                                                                         if(!(_loc8_ && _loc2_))
                                                                                                         {
                                                                                                            if(false)
                                                                                                            {
                                                                                                               addr130:
                                                                                                               if(_loc4_ >= _loc3_)
                                                                                                               {
                                                                                                                  break;
                                                                                                               }
                                                                                                               continue;
                                                                                                            }
                                                                                                            §§goto(addr290);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr277);
                                                                                                         }
                                                                                                      }
                                                                                                      break;
                                                                                                   }
                                                                                                   if(!(_loc8_ && _loc2_))
                                                                                                   {
                                                                                                      if(_loc8_ && _loc2_)
                                                                                                      {
                                                                                                         continue loop12;
                                                                                                      }
                                                                                                      if(!(_loc8_ && _loc3_))
                                                                                                      {
                                                                                                         continue;
                                                                                                      }
                                                                                                      addr254:
                                                                                                      addr254:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(param1);
                                                                                                         if(_loc7_)
                                                                                                         {
                                                                                                            if(_loc8_)
                                                                                                            {
                                                                                                               continue loop5;
                                                                                                            }
                                                                                                            §§push(!§§pop());
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc8_ && _loc2_)
                                                                                                               {
                                                                                                                  continue loop23;
                                                                                                               }
                                                                                                               §§goto(addr268);
                                                                                                               §§push(§§pop());
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr276);
                                                                                                      }
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      addr227:
                                                                                                   }
                                                                                                   §§goto(addr130);
                                                                                                }
                                                                                                return _loc6_;
                                                                                                addr110:
                                                                                             }
                                                                                             §§goto(addr254);
                                                                                          }
                                                                                       }
                                                                                       _loc4_++;
                                                                                       §§goto(addr227);
                                                                                    }
                                                                                    §§goto(addr110);
                                                                                 }
                                                                              }
                                                                              §§goto(addr260);
                                                                           }
                                                                           §§goto(addr276);
                                                                        }
                                                                        §§goto(addr234);
                                                                     }
                                                                     §§goto(addr238);
                                                                  }
                                                                  §§goto(addr251);
                                                               }
                                                               §§goto(addr233);
                                                            }
                                                         }
                                                      }
                                                      addr288:
                                                   }
                                                   while(true)
                                                   {
                                                      §§goto(addr253);
                                                   }
                                                }
                                             }
                                             addr286:
                                          }
                                          §§goto(addr288);
                                       }
                                       §§goto(addr254);
                                    }
                                    §§goto(addr234);
                                 }
                                 §§goto(addr286);
                              }
                              §§goto(addr237);
                           }
                           §§goto(addr234);
                        }
                     }
                  }
                  continue loop0;
               }
            }
         }
         addr33:
         return null;
      }
      
      public function §[!%§() : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:* = 0;
         var _loc2_:* = int(this.§5! §.length - 1);
         loop0:
         while(true)
         {
            §§push(_loc2_);
            loop1:
            while(!(_loc4_ && _loc3_))
            {
               if(_loc3_ || _loc3_)
               {
                  §§push(0);
                  if(_loc3_ || this)
                  {
                     if(§§pop() < §§pop())
                     {
                        if(_loc3_)
                        {
                           if(_loc3_)
                           {
                              if(!_loc4_)
                              {
                                 if(!_loc4_)
                                 {
                                    §§push(_loc1_);
                                    loop2:
                                    for(; !(_loc4_ && _loc1_); if(_loc4_ && _loc3_)
                                    {
                                       continue;
                                    },if(_loc4_)
                                    {
                                       continue loop1;
                                    },if(!_loc4_)
                                    {
                                       if(!(_loc4_ && this))
                                       {
                                          return §§pop();
                                       }
                                       addr176:
                                       §§goto(addr194);
                                       §§push((this.§5! §[_loc2_] as §@m§).§8!Q§.score);
                                    },§§goto(addr196))
                                    {
                                       §§push(this.§8@§.slingshot.§[!%§());
                                       while(_loc3_ || _loc1_)
                                       {
                                          §§push(§§pop() + §§pop());
                                          if(_loc3_ || this)
                                          {
                                             §§push(int(§§pop()));
                                             loop5:
                                             while(true)
                                             {
                                                _loc1_ = §§pop();
                                                addr127:
                                                while(true)
                                                {
                                                   §§push(_loc1_);
                                                   if(_loc3_ || this)
                                                   {
                                                      continue loop2;
                                                   }
                                                   continue loop5;
                                                }
                                             }
                                          }
                                          else
                                          {
                                             addr168:
                                             addr171:
                                             if(_loc4_)
                                             {
                                                addr196:
                                                _loc1_ = int(§§pop());
                                                addr128:
                                                if((this.§5! §[_loc2_] as §@m§).§!!A§())
                                                {
                                                   addr151:
                                                   §§push(_loc1_);
                                                   break loop2;
                                                }
                                                §§push(_loc2_ - 1);
                                                break loop1;
                                                addr195:
                                                addr197:
                                             }
                                             _loc1_ = int(§§pop());
                                             §§goto(addr128);
                                          }
                                       }
                                       if(!_loc4_)
                                       {
                                          §§goto(addr168);
                                          §§push(§§pop() + §§pop() * int((this.§5! §[_loc2_] as §@m§).§,>§));
                                       }
                                       §§goto(addr195);
                                       §§push(§§pop() + §§pop());
                                    }
                                    §§goto(addr194);
                                    §§push(§9!%§.§#6§.getValue());
                                 }
                                 §§goto(addr197);
                              }
                              §§goto(addr151);
                           }
                           addr134:
                           if(!(_loc4_ && _loc2_))
                           {
                              continue loop0;
                           }
                           §§goto(addr168);
                        }
                        §§goto(addr127);
                     }
                     else
                     {
                        §§push(_loc1_);
                     }
                     §§goto(addr176);
                  }
                  §§goto(addr110);
               }
               §§goto(addr196);
            }
            while(true)
            {
               if(!_loc4_)
               {
                  _loc2_ = §§pop();
                  §§goto(addr134);
               }
               else
               {
                  §§goto(addr171);
               }
               §§goto(addr196);
            }
         }
      }
      
      public function §5;§(param1:§@m§, param2:§@m§) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §§push(param1.§ !?§());
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
                              §§push(param2.§ !?§());
                              if(_loc4_)
                              {
                                 §§push(Boolean(§§pop()));
                                 while(true)
                                 {
                                 }
                                 addr127:
                              }
                              loop5:
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    loop6:
                                    while(true)
                                    {
                                       §§push(param1.§`9§());
                                       loop7:
                                       while(!(_loc3_ && param2))
                                       {
                                          §§push(!§§pop());
                                          do
                                          {
                                             §§push(§§pop());
                                             if(!_loc3_)
                                             {
                                                if(§§pop())
                                                {
                                                   loop9:
                                                   while(!_loc3_)
                                                   {
                                                      §§pop();
                                                      while(_loc4_ || _loc3_)
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(param2.§`9§());
                                                            if(!(_loc3_ && param1))
                                                            {
                                                               if(_loc3_)
                                                               {
                                                                  continue loop7;
                                                               }
                                                               if(_loc3_)
                                                               {
                                                                  continue loop0;
                                                               }
                                                               §§push(!§§pop());
                                                            }
                                                            addr51:
                                                            while(_loc3_)
                                                            {
                                                               continue loop9;
                                                            }
                                                         }
                                                      }
                                                      §§push(true);
                                                      break loop7;
                                                   }
                                                   continue loop5;
                                                }
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      if(!_loc3_)
                                                      {
                                                         if(!(_loc3_ && this))
                                                         {
                                                            §§push(true);
                                                            break;
                                                         }
                                                         continue loop4;
                                                      }
                                                      if(_loc4_)
                                                      {
                                                         if(!_loc4_)
                                                         {
                                                            continue loop6;
                                                         }
                                                         addr20:
                                                         §§push(false);
                                                         if(!_loc4_)
                                                         {
                                                            break;
                                                         }
                                                         if(!_loc3_)
                                                         {
                                                            if(!(_loc3_ && param2))
                                                            {
                                                               return §§pop();
                                                            }
                                                            continue loop1;
                                                         }
                                                         §§goto(addr51);
                                                      }
                                                      §§goto(addr113);
                                                   }
                                                   §§goto(addr20);
                                                }
                                                continue;
                                             }
                                             continue loop2;
                                          }
                                          while(!(_loc4_ || param1));
                                          
                                          if(_loc4_ || this)
                                          {
                                             return §§pop();
                                          }
                                          continue loop3;
                                       }
                                       return §§pop();
                                    }
                                 }
                                 §§goto(addr129);
                              }
                           }
                        }
                     }
                     §§goto(addr127);
                  }
               }
            }
         }
         §§goto(addr120);
      }
      
      public function objectCollision(param1:§@m§, param2:§@m§) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Deobfuscation is activated but decompilation still failed. If the file is NOT obfuscated, disable "Automatic deobfuscation" for better results.
          * Error type: ExecutionException (java.lang.StackOverflowError)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public function §10§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§@m§ = null;
         var _loc1_:* = int(this.§5! §.length - 1);
         loop0:
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§5! §[_loc1_] as §@m§;
            if(_loc3_)
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
                           addr130:
                           while(true)
                           {
                              addr53:
                              while(true)
                              {
                                 §§push(_loc2_.§7!?§());
                                 if(!(_loc4_ && _loc3_))
                                 {
                                    if(_loc4_ && this)
                                    {
                                       break;
                                    }
                                    continue loop1;
                                 }
                                 addr88:
                                 if(!(_loc3_ || _loc2_))
                                 {
                                    continue loop3;
                                 }
                              }
                              continue loop2;
                           }
                        }
                     }
                     loop4:
                     while(true)
                     {
                        if(§§pop())
                        {
                           if(!_loc4_)
                           {
                              if(!(_loc4_ && _loc1_))
                              {
                                 this.removeObjectWithIndex(_loc1_,true,true,true);
                              }
                              §§goto(addr130);
                           }
                           loop5:
                           while(true)
                           {
                              addr38:
                              while(true)
                              {
                                 §§push(_loc1_);
                                 if(_loc3_ || _loc1_)
                                 {
                                    §§push(§§pop() - 1);
                                 }
                                 _loc1_ = §§pop();
                                 if(_loc3_)
                                 {
                                    break;
                                 }
                                 continue loop5;
                              }
                              if(true)
                              {
                                 break loop4;
                              }
                              §§goto(addr53);
                           }
                        }
                        §§goto(addr38);
                     }
                     continue loop0;
                  }
               }
            }
            §§goto(addr130);
         }
      }
      
      public function §2n§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§@m§ = null;
         var _loc1_:* = int(this.§5! §.length - 1);
         loop0:
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§5! §[_loc1_] as §@m§;
            if(!(_loc4_ && _loc2_))
            {
               §§push(_loc2_ == null);
               if(_loc3_ || _loc3_)
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
                        loop3:
                        while(true)
                        {
                           loop4:
                           while(true)
                           {
                              §§push(_loc2_.§"!J§());
                              if(_loc3_)
                              {
                                 if(_loc4_ && _loc2_)
                                 {
                                    continue loop2;
                                 }
                                 if(!_loc3_)
                                 {
                                    continue loop1;
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
                                    if(!_loc4_)
                                    {
                                       while(true)
                                       {
                                          this.removeObjectWithIndex(_loc1_,true,true,true);
                                       }
                                       addr89:
                                    }
                                    loop5:
                                    while(true)
                                    {
                                       addr43:
                                       while(true)
                                       {
                                          §§push(_loc1_);
                                          if(_loc3_ || _loc2_)
                                          {
                                             §§push(§§pop() - 1);
                                          }
                                          _loc1_ = §§pop();
                                          if(_loc3_)
                                          {
                                             break;
                                          }
                                          continue loop5;
                                       }
                                       if(!_loc4_)
                                       {
                                          if(true)
                                          {
                                             break loop4;
                                          }
                                          continue loop4;
                                       }
                                       continue loop3;
                                    }
                                 }
                                 §§goto(addr43);
                              }
                           }
                           continue loop0;
                        }
                     }
                  }
                  §§goto(addr85);
               }
            }
            §§goto(addr89);
         }
      }
      
      public function §"!2§() : int
      {
         return this.§5! §.length;
      }
      
      public function §=s§(param1:§with§) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:§@m§ = null;
         var _loc5_:§-!#§ = null;
         var _loc6_:§]!M§ = null;
         var _loc2_:* = Number(0);
         loop0:
         while(true)
         {
            §§push(_loc2_);
            if(!(_loc7_ && _loc3_))
            {
               if(§§pop() >= this.§5! §.length)
               {
                  §§push(Number(0));
                  break;
               }
               §§push((_loc4_ = this.§5! §[_loc2_]).§4!'§);
               if(_loc8_)
               {
                  if(!§§pop())
                  {
                     if(_loc7_ && _loc2_)
                     {
                        continue;
                     }
                  }
                  else
                  {
                     addr52:
                     if(_loc4_.isGround())
                     {
                        if(_loc7_ && this)
                        {
                           continue;
                        }
                     }
                     else
                     {
                        (_loc5_ = new §-!#§()).angle = _loc4_.§?!"§();
                        if(_loc8_ || _loc2_)
                        {
                           _loc5_.id = _loc4_.§ h§;
                           while(true)
                           {
                              _loc5_.x = _loc4_.§`!#§().GetPosition().x;
                              addr84:
                              if(_loc8_ || param1)
                              {
                                 if(false)
                                 {
                                    loop3:
                                    while(true)
                                    {
                                       _loc5_.y = _loc4_.§`!#§().GetPosition().y;
                                       while(!_loc7_)
                                       {
                                          param1.§@k§.push(_loc5_);
                                          if(!_loc8_)
                                          {
                                             continue;
                                          }
                                          §§goto(addr84);
                                       }
                                       addr110:
                                       while(true)
                                       {
                                          continue loop3;
                                       }
                                    }
                                 }
                                 addr116:
                                 §§push(_loc2_);
                                 if(!_loc7_)
                                 {
                                    §§push(§§pop() + 1);
                                    if(!(_loc7_ && this))
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                 }
                                 _loc2_ = §§pop();
                                 continue loop0;
                              }
                           }
                        }
                        §§goto(addr110);
                     }
                  }
                  §§goto(addr116);
               }
               §§goto(addr52);
            }
            break;
         }
         var _loc3_:* = §§pop();
         if(_loc8_)
         {
            while(_loc3_ < this.§2j§.length)
            {
               (_loc6_ = new §]!M§(this.§2j§[_loc3_].type,this.§2j§[_loc3_].index1,this.§2j§[_loc3_].index2)).backAndForth = this.§2j§[_loc3_].backAndForth;
               if(_loc8_ || this)
               {
                  _loc6_.collideConnected = this.§2j§[_loc3_].collideConnected;
                  while(true)
                  {
                     _loc6_.limit = this.§2j§[_loc3_].limit;
                     loop7:
                     while(true)
                     {
                        _loc6_.lowerLimit = this.§2j§[_loc3_].lowerLimit;
                        addr321:
                        while(true)
                        {
                           _loc6_.maxTorque = this.§2j§[_loc3_].maxTorque;
                           continue loop7;
                        }
                     }
                  }
               }
               §§goto(addr226);
            }
         }
      }
      
      public function §4!=§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:int = 0;
         while(true)
         {
            if(this.§5! §.length <= _loc1_)
            {
               if(_loc3_)
               {
                  if(_loc3_)
                  {
                     if(_loc3_ || _loc2_)
                     {
                        break;
                     }
                     addr78:
                     _loc1_++;
                  }
               }
               else
               {
                  addr59:
               }
               continue;
            }
            if(!this.§5! §[_loc1_].isGround())
            {
               this.§3!K§(this.§5! §[_loc1_]);
               §§goto(addr59);
            }
            §§goto(addr78);
         }
      }
      
      public function §2!&§(param1:Point, param2:Point) : Array
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
               if(§§pop() >= this.§5! §.length)
               {
                  if(_loc5_)
                  {
                     break;
                  }
                  while(true)
                  {
                     if(!(_loc6_ && this))
                     {
                        if(_loc5_)
                        {
                           break;
                        }
                        addr93:
                        while(true)
                        {
                           _loc3_.push(this.§5! §[_loc4_]);
                        }
                     }
                     while(true)
                     {
                     }
                  }
                  continue;
                  addr57:
               }
               else if(this.§5! §[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
               {
                  §§goto(addr93);
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
               §§goto(addr57);
            }
         }
         return _loc3_;
      }
      
      public function setGroundTextureEnabled(param1:Boolean) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && this))
         {
            this.§-]§ = param1;
            if(!_loc3_)
            {
               this.§1Z§(param1);
            }
         }
         var _loc2_:* = Number(0);
         while(true)
         {
            §§push(_loc2_);
            if(!(_loc3_ && _loc2_))
            {
               if(_loc4_ || _loc2_)
               {
                  if(§§pop() >= this.§5! §.length)
                  {
                     if(_loc4_)
                     {
                        break;
                     }
                     loop3:
                     while(true)
                     {
                        if(_loc4_ || this)
                        {
                           if(!_loc3_)
                           {
                              break;
                           }
                           addr101:
                           while(true)
                           {
                              this.§5! §[_loc2_].sprite.visible = !this.§-]§;
                           }
                        }
                        while(true)
                        {
                           continue loop3;
                        }
                     }
                     continue;
                     addr83:
                  }
                  else if(this.§5! §[_loc2_].isTexture())
                  {
                     §§goto(addr101);
                  }
                  while(true)
                  {
                     §§push(_loc2_);
                  }
               }
               while(true)
               {
                  §§push(§§pop() + 1);
                  if(_loc4_ || param1)
                  {
                     §§push(Number(§§pop()));
                  }
               }
            }
            while(true)
            {
               _loc2_ = §§pop();
               §§goto(addr83);
            }
         }
      }
      
      public function setDamageEnabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§7B§ = param1;
         }
      }
      
      public function §1c§() : Boolean
      {
         return this.§7B§;
      }
      
      public function §46§() : int
      {
         return this.§#l§;
      }
      
      public function §#3§() : int
      {
         return this.§4L§;
      }
   }
}
