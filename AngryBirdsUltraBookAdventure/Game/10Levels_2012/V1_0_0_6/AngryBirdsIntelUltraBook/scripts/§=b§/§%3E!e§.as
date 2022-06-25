package §=b§
{
   import §"!,§.§9!B§;
   import §"!,§.§^z§;
   import §"x§.§-8§;
   import §&a§.b2PrismaticJoint;
   import §&a§.b2WeldJoint;
   import §-d§.§%d§;
   import §-d§.§-C§;
   import §-d§.§3!F§;
   import §-d§.§7]§;
   import §-d§.§>r§;
   import §2_§.§'r§;
   import §2_§.§'u§;
   import §2_§.§,L§;
   import §2_§.§@!6§;
   import §3!G§.§ y§;
   import §4!O§.;
   import §4!O§.§0!Q§;
   import §4!O§.§5b§;
   import §4!O§.§]B§;
   import §4>§.Texture;
   import §5!c§.§9'§;
   import §7!B§.§-§;
   import §7!B§.Sprite;
   import §;%§.b2Vec2;
   import §@^§.§"i§;
   import §^!Y§.§1C§;
   import flash.display.BitmapData;
   import flash.display.BitmapDataChannel;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §>!e§
   {
       
      
      protected var §#;§:Vector.<§`!_§>;
      
      protected var §9!g§:int;
      
      public var §#!3§:§'u§;
      
      public var §8!8§:Vector.<§9#§>;
      
      protected var §`!l§:Sprite;
      
      protected var §1!,§:Sprite;
      
      private var §=!D§:Sprite;
      
      private var §8!@§:Sprite;
      
      private var §'!v§:Sprite;
      
      protected var §4,§:Vector.<Texture>;
      
      protected var §!@§:Vector.<§5b§>;
      
      protected var §!I§:int = 1;
      
      public var mMightyEagleAdded:Boolean = false;
      
      public var mMightyEagleHasTouchedGround:Boolean = false;
      
      public var §0!F§:Boolean = false;
      
      public var mSardineCanAdded:Boolean = false;
      
      public var mMightyEagleTimer:Number = 0;
      
      protected var §>!k§:Boolean = false;
      
      protected var §]L§:Number;
      
      protected var §0!Z§:int;
      
      protected var §+t§:Vector.<§]B§>;
      
      protected var §3!I§:int = 0;
      
      private var §[!w§:int = 0;
      
      private var §#!z§:int = 0;
      
      private var §[s§:int;
      
      private var §9! §:Boolean = true;
      
      private var §!!M§:Boolean = true;
      
      public function §>!e§(param1:§'u§, param2:§ y§, param3:Sprite)
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         var _loc5_:§5b§ = null;
         var _loc6_:§#4§ = null;
         var _loc7_:§`!_§ = null;
         var _loc8_:* = 0;
         var _loc9_:* = 0;
         var _loc10_:§`!_§ = null;
         var _loc11_:§`!_§ = null;
         if(_loc15_)
         {
            this.§#;§ = new Vector.<§`!_§>();
            loop0:
            while(true)
            {
               this.§8!8§ = new Vector.<§9#§>();
               loop1:
               while(true)
               {
                  this.§4,§ = new Vector.<Texture>();
                  continue loop0;
                  addr141:
                  if(_loc14_ && param1)
                  {
                     continue;
                  }
                  this.§[s§ = this.§#;§.length;
                  addr148:
                  if(!_loc14_)
                  {
                     addr47:
                     if(_loc15_ || param1)
                     {
                        if(_loc15_ || this)
                        {
                           addr61:
                           if(!(_loc14_ && param2))
                           {
                              addr68:
                              if(!_loc14_)
                              {
                                 if(false)
                                 {
                                    addr287:
                                    loop25:
                                    while(true)
                                    {
                                       §§push(this);
                                       §§push(§"i§.§<!F§(param2.theme).§]?§);
                                       §§push(this.§#!3§.§!!"§.§#!l§);
                                       if(_loc15_ || param3)
                                       {
                                          §§push(this.§#!3§);
                                          if(!_loc14_)
                                          {
                                             §§push(§§pop().§!!"§);
                                             if(!(_loc14_ && param3))
                                             {
                                                §§push(§§pop().§-!U§);
                                                if(!(_loc14_ && param3))
                                                {
                                                   addr123:
                                                   §§push(§§pop() + §§pop());
                                                   if(!(_loc14_ && param2))
                                                   {
                                                      addr118:
                                                      §§push(§§pop() / 2);
                                                   }
                                                   §§push(this.§#!3§.§!!"§.§%!^§);
                                                   if(!(_loc14_ && this))
                                                   {
                                                      §§push(§§pop() + §'r§.§6F§);
                                                   }
                                                }
                                                §§pop().addObject(§§pop(),§§pop(),§§pop());
                                                while(true)
                                                {
                                                   if(!_loc14_)
                                                   {
                                                      if(!_loc14_)
                                                      {
                                                         if(!_loc14_)
                                                         {
                                                            §§goto(addr141);
                                                         }
                                                         else
                                                         {
                                                            while(true)
                                                            {
                                                               this.§8!@§ = new Sprite();
                                                            }
                                                            addr246:
                                                         }
                                                      }
                                                      loop16:
                                                      while(_loc15_ || param2)
                                                      {
                                                         this.§'!v§ = new Sprite();
                                                         while(true)
                                                         {
                                                            if(_loc15_ || this)
                                                            {
                                                               addr220:
                                                               if(_loc15_ || this)
                                                               {
                                                                  §§push(this.§1!,§);
                                                                  loop18:
                                                                  while(true)
                                                                  {
                                                                     §§pop().addChild(this.§`!l§);
                                                                     addr203:
                                                                     addr318:
                                                                     while(true)
                                                                     {
                                                                        if(!_loc14_)
                                                                        {
                                                                           if(_loc14_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           §§push(this.§1!,§);
                                                                           continue loop18;
                                                                        }
                                                                        addr252:
                                                                        while(true)
                                                                        {
                                                                           this.§=!D§ = new Sprite();
                                                                           §§goto(addr246);
                                                                        }
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        super();
                                                                        break loop16;
                                                                     }
                                                                  }
                                                               }
                                                               break;
                                                            }
                                                            §§goto(addr282);
                                                         }
                                                         while(true)
                                                         {
                                                            if(_loc15_)
                                                            {
                                                               this.§1!,§ = param3;
                                                               break loop25;
                                                            }
                                                            break;
                                                            §§goto(addr220);
                                                         }
                                                         continue loop0;
                                                      }
                                                      while(true)
                                                      {
                                                         this.§#!3§ = param1;
                                                         §§goto(addr306);
                                                         §§goto(addr233);
                                                      }
                                                      addr233:
                                                   }
                                                   §§goto(addr196);
                                                   §§goto(addr148);
                                                }
                                                continue loop1;
                                                addr135:
                                             }
                                          }
                                          §§goto(addr123);
                                       }
                                       §§goto(addr118);
                                       §§goto(addr68);
                                    }
                                    while(_loc15_ || param1)
                                    {
                                       §§goto(addr280);
                                       §§push(this.§1!,§);
                                    }
                                    while(true)
                                    {
                                       this.§+t§ = new Vector.<§]B§>();
                                       §§goto(addr318);
                                       §§goto(addr287);
                                    }
                                    addr287:
                                    addr325:
                                 }
                                 var _loc4_:* = 0;
                                 if(_loc15_)
                                 {
                                    _loc4_ = 0;
                                 }
                                 addr408:
                                 §§push(_loc4_);
                                 if(_loc15_ || param3)
                                 {
                                    §§push(param2.§=!B§);
                                    if(_loc15_ || param3)
                                    {
                                       if(§§pop() < §§pop())
                                       {
                                          _loc6_ = param2.§>J§(_loc4_);
                                          if(_loc7_ = this.addObject(_loc6_.id,_loc6_.x,_loc6_.y,_loc6_.angle,false,false,false,1,_loc6_.front))
                                          {
                                             if(!_loc14_)
                                             {
                                                _loc7_.uniqueID = _loc6_.uniqueID;
                                                if(_loc15_)
                                                {
                                                   addr407:
                                                   _loc4_++;
                                                }
                                             }
                                             §§goto(addr408);
                                          }
                                          §§goto(addr407);
                                       }
                                       if(_loc15_)
                                       {
                                          this.§"^§();
                                          if(_loc15_ || this)
                                          {
                                             this.§@i§(true);
                                             this.§!@§ = new Vector.<§5b§>();
                                             addr506:
                                             if(_loc15_ || param1)
                                             {
                                                if(_loc14_ && this)
                                                {
                                                   §§goto(addr506);
                                                }
                                                §§push(0);
                                                if(_loc15_ || param1)
                                                {
                                                   _loc4_ = §§pop();
                                                   addr458:
                                                   addr480:
                                                   §§push(_loc4_);
                                                   if(_loc15_ || param2)
                                                   {
                                                      addr517:
                                                      addr515:
                                                      if(§§pop() < param2.§7!z§)
                                                      {
                                                         this.§!@§.push(§5b§.§4!Q§(param2.§82§(_loc4_)));
                                                         _loc4_++;
                                                         addr469:
                                                         if(_loc15_)
                                                         {
                                                            if(_loc15_ || param2)
                                                            {
                                                               if(!(_loc14_ && param3))
                                                               {
                                                                  if(false)
                                                                  {
                                                                  }
                                                                  §§goto(addr458);
                                                               }
                                                               §§goto(addr480);
                                                            }
                                                            §§goto(addr469);
                                                         }
                                                         §§goto(addr730);
                                                      }
                                                      if(!_loc14_)
                                                      {
                                                         §§push(0);
                                                      }
                                                      §§goto(addr730);
                                                   }
                                                }
                                                var _loc12_:* = §§pop();
                                                if(_loc15_ || param1)
                                                {
                                                   var _loc13_:* = this.§!@§;
                                                   addr726:
                                                   for each(_loc5_ in _loc13_)
                                                   {
                                                      §§push(int(_loc5_.index1 + this.§[s§));
                                                      if(_loc15_ || param2)
                                                      {
                                                         _loc8_ = §§pop();
                                                         if(_loc15_ || param1)
                                                         {
                                                            §§push(int(_loc5_.index2 + this.§[s§));
                                                            if(_loc15_ || param1)
                                                            {
                                                               addr574:
                                                               _loc9_ = §§pop();
                                                               if(!_loc14_)
                                                               {
                                                                  §§push(_loc8_);
                                                                  if(!_loc14_)
                                                                  {
                                                                     §§push(§§pop() < this.§#;§.length);
                                                                     if(_loc15_ || param3)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           if(_loc15_)
                                                                           {
                                                                              §§pop();
                                                                              addr604:
                                                                              if(!_loc14_)
                                                                              {
                                                                                 addr599:
                                                                                 §§push(_loc9_ < this.§#;§.length);
                                                                              }
                                                                              _loc10_ = this.§#;§[_loc8_];
                                                                              _loc11_ = this.§#;§[_loc9_];
                                                                              if(!(_loc14_ && param1))
                                                                              {
                                                                                 §§push(Boolean(_loc10_));
                                                                                 if(!_loc14_)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       addr724:
                                                                                       §§pop();
                                                                                       §§push(Boolean(_loc11_));
                                                                                       if(_loc14_ && param2)
                                                                                       {
                                                                                       }
                                                                                       §§goto(addr724);
                                                                                       addr725:
                                                                                    }
                                                                                    if(§§pop())
                                                                                    {
                                                                                       if(_loc15_ || param1)
                                                                                       {
                                                                                          if(_loc5_.type != §0!Q§.§,?§)
                                                                                          {
                                                                                             if(_loc15_ || this)
                                                                                             {
                                                                                                addr689:
                                                                                                if(_loc15_ || param2)
                                                                                                {
                                                                                                   _loc5_.§^^§ = this.§#!3§.mLevelEngine.mWorld.§%!w§(_loc5_.§]!R§(_loc10_,_loc11_));
                                                                                                   addr624:
                                                                                                   §§goto(addr726);
                                                                                                   addr717:
                                                                                                }
                                                                                                §§goto(addr725);
                                                                                             }
                                                                                             §§goto(addr717);
                                                                                          }
                                                                                          this.§+t§.push(new §]B§(_loc8_,_loc9_,_loc5_.§-N§));
                                                                                          if(!_loc15_)
                                                                                          {
                                                                                          }
                                                                                          §§goto(addr624);
                                                                                       }
                                                                                       §§goto(addr689);
                                                                                    }
                                                                                    throw new Error("Joint index out of bounds [" + _loc8_ + ", " + _loc9_ + "]");
                                                                                 }
                                                                                 §§goto(addr724);
                                                                              }
                                                                              §§goto(addr624);
                                                                           }
                                                                        }
                                                                     }
                                                                     if(§§pop())
                                                                     {
                                                                        §§goto(addr604);
                                                                     }
                                                                     §§goto(addr726);
                                                                  }
                                                                  §§goto(addr599);
                                                               }
                                                               §§goto(addr604);
                                                            }
                                                         }
                                                         §§goto(addr599);
                                                      }
                                                      §§goto(addr574);
                                                   }
                                                }
                                             }
                                             addr730:
                                             return;
                                             addr437:
                                          }
                                          §§goto(addr469);
                                       }
                                       §§goto(addr437);
                                    }
                                    §§goto(addr517);
                                 }
                                 §§goto(addr515);
                              }
                              §§goto(addr287);
                           }
                           §§goto(addr257);
                        }
                        §§goto(addr173);
                     }
                     §§goto(addr164);
                  }
                  §§goto(addr135);
               }
            }
         }
         while(true)
         {
            this.§]L§ = this.§,L§.SARDINE_CAN_INITIAL_ROTATION_SPEED;
            §§goto(addr325);
         }
      }
      
      protected function get §,L§() : Class
      {
         return §,L§;
      }
      
      public function get §#!-§() : Sprite
      {
         return this.§'!v§;
      }
      
      public function get §[![§() : Sprite
      {
         return this.§1!,§;
      }
      
      public function dispose() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:Texture = null;
         loop0:
         while(true)
         {
            if(this.§#;§.length > 0)
            {
               this.§,@§(0);
               continue;
            }
            while(true)
            {
               this.§#;§ = null;
               while(_loc3_)
               {
                  this.§+t§ = null;
                  loop3:
                  while(true)
                  {
                     §§push(this.§1!,§);
                     if(!(_loc2_ && _loc1_))
                     {
                        if(!§§pop())
                        {
                           break;
                        }
                        while(true)
                        {
                           §§push(this.§1!,§);
                        }
                        addr104:
                     }
                     while(true)
                     {
                        §§pop().dispose();
                        if(!(_loc3_ || _loc1_))
                        {
                           return;
                        }
                        addr179:
                        continue loop3;
                        §§goto(addr104);
                     }
                  }
                  addr174:
                  if(this.§4,§.length > 0)
                  {
                     _loc1_ = this.§4,§.pop();
                     if(_loc3_ || _loc3_)
                     {
                        this.§#!3§.textureManager.unregisterBitmapDataTexture(_loc1_);
                     }
                     §§goto(addr174);
                  }
                  §§goto(addr179);
               }
               continue loop0;
            }
         }
      }
      
      private function §@i§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§`!l§.visible = param1;
         }
      }
      
      private function §"^§() : void
      {
         var _loc16_:Boolean = false;
         var _loc17_:Boolean = true;
         var _loc3_:§`!_§ = null;
         var _loc4_:Rectangle = null;
         var _loc5_:* = NaN;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         var _loc8_:* = 0;
         var _loc9_:* = 0;
         var _loc10_:BitmapData = null;
         var _loc11_:BitmapData = null;
         var _loc12_:Texture = null;
         var _loc13_:§-§ = null;
         var _loc1_:Rectangle = null;
         var _loc2_:Vector.<§`!_§> = new Vector.<§`!_§>();
         for each(_loc3_ in this.§#;§)
         {
            if(!(_loc16_ && _loc2_))
            {
               if(!_loc3_.isTexture())
               {
                  continue;
               }
               if(_loc17_ || _loc2_)
               {
                  _loc2_.push(_loc3_);
               }
            }
            _loc4_ = _loc3_.sprite.getBounds(this.§1!,§);
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
         if(_loc17_ || this)
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
                                    while(true)
                                    {
                                       §§pop();
                                       addr274:
                                       loop15:
                                       while(true)
                                       {
                                          §§push(_loc1_.height > 2048);
                                          if(_loc17_ || this)
                                          {
                                             while(true)
                                             {
                                                if(!§§pop())
                                                {
                                                   if(_loc17_ || this)
                                                   {
                                                      if(_loc16_ && this)
                                                      {
                                                         break;
                                                      }
                                                      §§push(int(_loc1_.width));
                                                      while(true)
                                                      {
                                                         _loc6_ = §§pop();
                                                         addr145:
                                                         if(_loc16_ && this)
                                                         {
                                                            continue;
                                                         }
                                                         addr152:
                                                         _loc9_ = §§pop();
                                                         if(!(_loc16_ && _loc3_))
                                                         {
                                                            if(!_loc16_)
                                                            {
                                                               if(_loc17_ || _loc3_)
                                                               {
                                                                  if(false)
                                                                  {
                                                                     loop11:
                                                                     while(true)
                                                                     {
                                                                        §§push(int(_loc1_.left));
                                                                        loop12:
                                                                        while(!_loc16_)
                                                                        {
                                                                           if(_loc17_)
                                                                           {
                                                                              _loc8_ = §§pop();
                                                                              while(true)
                                                                              {
                                                                                 if(_loc16_)
                                                                                 {
                                                                                    continue loop15;
                                                                                 }
                                                                                 if(_loc16_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 §§push(int(_loc1_.top));
                                                                                 if(_loc16_ && _loc1_)
                                                                                 {
                                                                                    continue loop12;
                                                                                 }
                                                                                 §§goto(addr145);
                                                                                 §§goto(addr152);
                                                                              }
                                                                              continue loop5;
                                                                              addr180:
                                                                           }
                                                                           continue loop2;
                                                                        }
                                                                        addr189:
                                                                        while(true)
                                                                        {
                                                                           _loc7_ = §§pop();
                                                                           break loop11;
                                                                        }
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        if(_loc17_ || _loc3_)
                                                                        {
                                                                           if(_loc16_ && this)
                                                                           {
                                                                              break;
                                                                           }
                                                                           if(_loc16_)
                                                                           {
                                                                              _loc1_.top /= 2;
                                                                              break;
                                                                           }
                                                                           addr326:
                                                                           continue loop1;
                                                                        }
                                                                        addr300:
                                                                        addr256:
                                                                        while(_loc17_ || _loc3_)
                                                                        {
                                                                           §§goto(addr189);
                                                                           §§push(int(_loc1_.height));
                                                                        }
                                                                        §§push(_loc5_);
                                                                        if(_loc17_)
                                                                        {
                                                                           §§push(§§pop() / 2);
                                                                           if(!(_loc16_ && _loc2_))
                                                                           {
                                                                              addr288:
                                                                              if(!_loc17_)
                                                                              {
                                                                                 continue loop3;
                                                                              }
                                                                              §§push(Number(§§pop()));
                                                                           }
                                                                           _loc5_ = §§pop();
                                                                           continue loop5;
                                                                        }
                                                                        §§goto(addr288);
                                                                     }
                                                                     _loc1_.right /= 2;
                                                                     _loc1_.bottom /= 2;
                                                                     §§goto(addr300);
                                                                     addr308:
                                                                     addr190:
                                                                     addr171:
                                                                  }
                                                                  _loc10_ = new BitmapData(_loc6_,_loc7_,true,0);
                                                                  if(_loc17_ || _loc1_)
                                                                  {
                                                                     this.§@!q§(_loc10_.rect,_loc10_,_loc5_);
                                                                  }
                                                                  _loc11_ = this.§9!K§(_loc2_,_loc6_,_loc7_,_loc8_,_loc9_,_loc5_);
                                                                  if(_loc17_)
                                                                  {
                                                                     _loc10_.copyChannel(_loc11_,_loc11_.rect,new Point(0,0),BitmapDataChannel.ALPHA,BitmapDataChannel.ALPHA);
                                                                  }
                                                                  _loc12_ = this.§#!3§.textureManager.getTextureFromBitmapData(_loc10_);
                                                                  if(!(_loc16_ && this))
                                                                  {
                                                                     this.§4,§.push(_loc12_);
                                                                  }
                                                                  (_loc13_ = new §-§(_loc12_)).x = _loc8_ / _loc5_;
                                                                  if(_loc17_ || _loc3_)
                                                                  {
                                                                     _loc13_.y = _loc9_ / _loc5_;
                                                                     _loc13_.scaleX = 1 / _loc5_;
                                                                     _loc13_.scaleY = 1 / _loc5_;
                                                                     addr468:
                                                                     if(_loc17_)
                                                                     {
                                                                        this.§`!l§.addChild(_loc13_);
                                                                        addr427:
                                                                        if(_loc17_)
                                                                        {
                                                                           if(_loc17_)
                                                                           {
                                                                              _loc11_.dispose();
                                                                              if(!(_loc16_ && _loc2_))
                                                                              {
                                                                                 if(false)
                                                                                 {
                                                                                    §§goto(addr427);
                                                                                 }
                                                                                 §§goto(addr469);
                                                                              }
                                                                              §§goto(addr427);
                                                                              addr446:
                                                                           }
                                                                        }
                                                                        §§goto(addr468);
                                                                     }
                                                                     addr462:
                                                                     §§goto(addr462);
                                                                  }
                                                                  §§goto(addr446);
                                                               }
                                                               §§goto(addr308);
                                                            }
                                                            §§goto(addr190);
                                                         }
                                                         §§goto(addr180);
                                                      }
                                                   }
                                                   §§goto(addr256);
                                                }
                                                else
                                                {
                                                   _loc1_.left /= 2;
                                                }
                                                §§goto(addr326);
                                                continue loop15;
                                             }
                                             continue loop4;
                                             addr236:
                                          }
                                       }
                                    }
                                    addr273:
                                 }
                                 §§goto(addr236);
                              }
                              §§goto(addr273);
                           }
                        }
                     }
                  }
               }
            }
            addr469:
            return;
         }
         §§goto(addr274);
      }
      
      private function §9!K§(param1:Vector.<§`!_§>, param2:int, param3:int, param4:int, param5:int, param6:Number) : BitmapData
      {
         var _loc16_:Boolean = true;
         var _loc17_:Boolean = false;
         var _loc7_:§`!_§ = null;
         var _loc11_:§7]§ = null;
         var _loc12_:Array = null;
         var _loc13_:Rectangle = null;
         var _loc8_:BitmapData = new BitmapData(param2,param3,true,0);
         var _loc9_:BitmapData = new BitmapData(1,1,true,4294967295);
         var _loc10_:Matrix = new Matrix();
         loop0:
         for each(_loc7_ in param1)
         {
            _loc12_ = (_loc11_ = _loc7_.§'!-§.shape).§5l§();
            _loc13_ = new Rectangle(_loc12_[0].x / §'u§.§18§ * param6,_loc12_[0].y / §'u§.§18§ * param6,(_loc12_[1].x - _loc12_[0].x) / §'u§.§18§ * param6,(_loc12_[1].y - _loc12_[0].y) / §'u§.§18§ * param6);
            if(_loc16_)
            {
               _loc10_.identity();
               loop1:
               while(true)
               {
                  _loc10_.scale(_loc13_.width,_loc13_.height);
                  while(true)
                  {
                     _loc10_.translate(-_loc13_.width / 2,-_loc13_.height / 2);
                     while(!(_loc17_ && param1))
                     {
                        _loc10_.rotate((360 - _loc7_.§8c§()) / 180 * Math.PI);
                        loop4:
                        while(_loc16_ || param1)
                        {
                           loop5:
                           while(true)
                           {
                              _loc10_.translate(_loc7_.sprite.x * param6 - param4,_loc7_.sprite.y * param6 - param5);
                              loop6:
                              while(_loc16_)
                              {
                                 while(true)
                                 {
                                    _loc8_.draw(_loc9_,_loc10_);
                                    if(_loc16_)
                                    {
                                       if(_loc16_)
                                       {
                                          if(true)
                                          {
                                             break;
                                          }
                                          continue loop5;
                                       }
                                       continue loop4;
                                    }
                                    continue loop6;
                                 }
                                 continue loop0;
                              }
                              continue loop1;
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr162);
         }
         if(!(_loc17_ && param1))
         {
            _loc9_.dispose();
         }
         return _loc8_;
      }
      
      private function §@!q§(param1:Rectangle, param2:BitmapData, param3:Number) : void
      {
         var _loc16_:Boolean = true;
         var _loc17_:Boolean = false;
         var _loc6_:BitmapData = null;
         var _loc7_:Matrix = null;
         var _loc8_:* = 0;
         var _loc9_:* = 0;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:int = 0;
         var _loc14_:int = 0;
         var _loc15_:int = 0;
         §§push(this.§#!3§.background.§ 1§());
         if(!_loc17_)
         {
            §§push(§§pop());
         }
         var _loc4_:* = §§pop();
         var _loc5_:§1C§;
         if(_loc5_ = this.§#!3§.backgroundTextureManager.§2+§(_loc4_))
         {
            _loc6_ = new BitmapData(_loc5_.bitmapData.width * param3,_loc5_.bitmapData.height * param3);
            (_loc7_ = new Matrix()).scale(param3,param3);
            if(_loc16_ || param1)
            {
               _loc6_.draw(_loc5_.bitmapData,_loc7_);
               while(true)
               {
                  §§push(_loc6_.width - 2);
                  loop1:
                  while(true)
                  {
                     §§push(int(§§pop()));
                     addr380:
                     while(true)
                     {
                        _loc8_ = §§pop();
                        addr381:
                        while(true)
                        {
                           §§push(_loc6_.height - 2);
                           addr371:
                           while(true)
                           {
                              §§push(int(§§pop()));
                              addr372:
                              while(true)
                              {
                                 _loc9_ = §§pop();
                                 addr373:
                                 while(true)
                                 {
                                    §§push(param1.top / _loc9_);
                                    continue loop1;
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr177);
         }
         §§goto(addr388);
      }
      
      public function §98§(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §`!_§
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc10_:§`!_§ = null;
         var _loc11_:* = param2;
         if(!_loc13_)
         {
            §§push("BIRD_BLACK");
            if(!(_loc13_ && param2))
            {
               §§push(_loc11_);
               if(!_loc13_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(_loc12_)
                     {
                        addr225:
                        §§push(0);
                        if(!_loc12_)
                        {
                        }
                     }
                     else
                     {
                        addr243:
                        §§push(1);
                        if(!_loc12_)
                        {
                        }
                     }
                  }
                  else
                  {
                     §§push("BIRD_BLUE");
                     if(_loc12_)
                     {
                        §§push(_loc11_);
                        if(_loc12_)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(!(_loc13_ && this))
                              {
                                 §§goto(addr243);
                              }
                              else
                              {
                                 addr284:
                                 §§push(3);
                                 if(_loc13_)
                                 {
                                    addr348:
                                 }
                                 §§goto(addr360);
                              }
                           }
                           else
                           {
                              §§push("BIRD_GREEN");
                              if(_loc12_ || this)
                              {
                                 §§push(_loc11_);
                                 if(!_loc13_)
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       if(_loc12_)
                                       {
                                          §§push(2);
                                          if(!(_loc12_ || param3))
                                          {
                                             addr355:
                                          }
                                          §§goto(addr360);
                                       }
                                       else
                                       {
                                          §§goto(addr284);
                                       }
                                    }
                                    else
                                    {
                                       §§push("BIRD_WHITE");
                                       if(_loc12_)
                                       {
                                          §§push(_loc11_);
                                          if(!_loc13_)
                                          {
                                             if(§§pop() === §§pop())
                                             {
                                                if(!(_loc13_ && param3))
                                                {
                                                   §§goto(addr284);
                                                }
                                                §§goto(addr360);
                                             }
                                             else
                                             {
                                                §§push("BIRD_YELLOW");
                                                if(_loc12_ || param3)
                                                {
                                                   §§push(_loc11_);
                                                   if(_loc12_ || param2)
                                                   {
                                                      addr304:
                                                      if(§§pop() === §§pop())
                                                      {
                                                         if(_loc12_)
                                                         {
                                                            §§push(4);
                                                            if(_loc12_ || param1)
                                                            {
                                                            }
                                                            §§goto(addr360);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr345);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§push("BIRD_RED");
                                                         if(_loc12_ || this)
                                                         {
                                                            addr324:
                                                            §§push(_loc11_);
                                                            if(!_loc13_)
                                                            {
                                                               addr337:
                                                               if(§§pop() === §§pop())
                                                               {
                                                                  if(!(_loc13_ && param1))
                                                                  {
                                                                     addr345:
                                                                     §§push(5);
                                                                     if(!_loc12_)
                                                                     {
                                                                        §§goto(addr355);
                                                                     }
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  addr351:
                                                                  if("BIRD_REDBIG" !== _loc11_)
                                                                  {
                                                                     addr360:
                                                                     switch(§§pop())
                                                                     {
                                                                        case 0:
                                                                           _loc10_ = new §,!6§(this,param1,this.§#!3§.mLevelEngine.mWorld,this.§#!3§,this.§9!g§,param2,param3,param4,param5,param8,param9);
                                                                           break;
                                                                        case 1:
                                                                           _loc10_ = new §?5§(this,param1,this.§#!3§.mLevelEngine.mWorld,this.§#!3§,this.§9!g§,param2,param3,param4,param5,param8,param9);
                                                                           break;
                                                                        case 2:
                                                                           _loc10_ = new §6!x§(this,param1,this.§#!3§.mLevelEngine.mWorld,this.§#!3§,this.§9!g§,param2,param3,param4,param5,param8,param9);
                                                                           break;
                                                                        case 3:
                                                                           _loc10_ = new §;!c§(this,param1,this.§#!3§.mLevelEngine.mWorld,this.§#!3§,this.§9!g§,param2,param3,param4,param5,param8,param9);
                                                                           break;
                                                                        case 4:
                                                                           _loc10_ = new §@#§(this,param1,this.§#!3§.mLevelEngine.mWorld,this.§#!3§,this.§9!g§,param2,param3,param4,param5,param8,param9);
                                                                           break;
                                                                        case 5:
                                                                           _loc10_ = new §#!S§(this,param1,this.§#!3§.mLevelEngine.mWorld,this.§#!3§,this.§9!g§,param2,param3,param4,param5,param8,param9);
                                                                           break;
                                                                        case 6:
                                                                           _loc10_ = new §=<§(this,param1,this.§#!3§.mLevelEngine.mWorld,this.§#!3§,this.§9!g§,param2,param3,param4,param5,param8,param9);
                                                                           break;
                                                                        default:
                                                                           _loc10_ = new §0d§(this,param1,this.§#!3§.mLevelEngine.mWorld,this.§#!3§,this.§9!g§,param2,param3,param4,param5,param8,param9);
                                                                     }
                                                                     return _loc10_;
                                                                     §§push(7);
                                                                  }
                                                               }
                                                               §§goto(addr360);
                                                            }
                                                         }
                                                         §§goto(addr351);
                                                      }
                                                      §§goto(addr360);
                                                   }
                                                   §§goto(addr337);
                                                }
                                                §§goto(addr324);
                                             }
                                             §§goto(addr360);
                                          }
                                       }
                                       §§goto(addr351);
                                    }
                                    §§goto(addr360);
                                 }
                                 §§goto(addr337);
                              }
                              §§goto(addr324);
                           }
                           §§goto(addr360);
                        }
                        §§goto(addr304);
                     }
                     §§goto(addr351);
                  }
                  §§goto(addr360);
               }
               §§goto(addr351);
            }
            §§goto(addr324);
         }
         §§goto(addr225);
      }
      
      public function hasBirds() : Boolean
      {
         return this.§3!I§ > 0;
      }
      
      public function addObject(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : §`!_§
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         var _loc10_:Sprite;
         (_loc10_ = new Sprite()).scaleX = param8;
         if(_loc14_)
         {
            _loc10_.scaleY = param8;
         }
         var _loc11_:§`!_§;
         §§push((_loc11_ = this.createObject(_loc10_,param1,param2,param3,param4,param5,param6,param7,param8)).isTexture());
         if(_loc14_ || param3)
         {
            if(§§pop())
            {
               if(!_loc15_)
               {
                  §§push(_loc10_);
                  §§push(this.§9! §);
                  if(_loc14_ || param3)
                  {
                     §§push(!§§pop());
                  }
                  §§pop().visible = §§pop();
                  if(_loc14_ || param3)
                  {
                     this.§#;§[this.§#;§.length] = _loc11_;
                     loop0:
                     while(true)
                     {
                        loop1:
                        while(true)
                        {
                           §§push(_loc11_ is §0d§);
                           if(!(_loc15_ && param1))
                           {
                              §§push(§§pop());
                              if(!(_loc15_ && param1))
                              {
                                 if(§§pop())
                                 {
                                    if(_loc14_ || param2)
                                    {
                                       §§pop();
                                       continue loop0;
                                    }
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          if(_loc14_)
                                          {
                                             addr95:
                                             if(_loc15_ && param1)
                                             {
                                                continue loop0;
                                             }
                                             this.§=!D§.addChild(_loc10_);
                                             if(_loc14_)
                                             {
                                                if(_loc14_)
                                                {
                                                   if(false)
                                                   {
                                                      continue loop1;
                                                   }
                                                   addr311:
                                                   var _loc12_:*;
                                                   §§push((_loc12_ = this).§3!I§);
                                                   if(!_loc15_)
                                                   {
                                                      §§push(§§pop() + 1);
                                                   }
                                                   var _loc13_:* = §§pop();
                                                   if(!(_loc15_ && param3))
                                                   {
                                                      _loc12_.§3!I§ = _loc13_;
                                                   }
                                                   if(!(_loc15_ && param2))
                                                   {
                                                      loop5:
                                                      while(true)
                                                      {
                                                         §§push(param5);
                                                         loop6:
                                                         while(!_loc15_)
                                                         {
                                                            if(!(_loc15_ && param2))
                                                            {
                                                               if(_loc14_ || param2)
                                                               {
                                                                  addr280:
                                                                  if(§§pop())
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§#!3§);
                                                                        addr293:
                                                                        while(true)
                                                                        {
                                                                           §§pop().§?!C§(_loc11_);
                                                                           addr295:
                                                                           while(true)
                                                                           {
                                                                           }
                                                                        }
                                                                     }
                                                                     addr291:
                                                                  }
                                                                  loop10:
                                                                  while(true)
                                                                  {
                                                                     §§push(param6);
                                                                     if(!_loc15_)
                                                                     {
                                                                        if(_loc14_)
                                                                        {
                                                                           if(!(_loc15_ && param2))
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 if(_loc14_)
                                                                                 {
                                                                                    if(_loc14_)
                                                                                    {
                                                                                       if(_loc14_ || param3)
                                                                                       {
                                                                                          §§push(this.§#!3§);
                                                                                          if(_loc14_)
                                                                                          {
                                                                                             §§pop().activeObject = _loc11_;
                                                                                             addr240:
                                                                                             if(!(_loc14_ || param2))
                                                                                             {
                                                                                                continue;
                                                                                             }
                                                                                             if(_loc15_ && param1)
                                                                                             {
                                                                                                continue loop5;
                                                                                             }
                                                                                             if(_loc14_ || param3)
                                                                                             {
                                                                                                §§goto(addr204);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                addr315:
                                                                                             }
                                                                                             addr315:
                                                                                             addr315:
                                                                                             while(true)
                                                                                             {
                                                                                                continue loop5;
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(param9);
                                                                                             addr306:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(Boolean(§§pop()));
                                                                                                addr307:
                                                                                                while(true)
                                                                                                {
                                                                                                   break loop1;
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          addr323:
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr291);
                                                                                    }
                                                                                    §§goto(addr293);
                                                                                 }
                                                                                 §§goto(addr240);
                                                                              }
                                                                              addr204:
                                                                              return _loc11_;
                                                                           }
                                                                           addr319:
                                                                           §§push(Boolean(§§pop()));
                                                                           while(true)
                                                                           {
                                                                              addr321:
                                                                              if(!§§pop())
                                                                              {
                                                                                 break loop10;
                                                                              }
                                                                           }
                                                                           addr320:
                                                                           §§goto(addr307);
                                                                        }
                                                                        break;
                                                                     }
                                                                     continue loop6;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§pop();
                                                                     §§goto(addr323);
                                                                  }
                                                               }
                                                               §§goto(addr320);
                                                            }
                                                            §§goto(addr306);
                                                         }
                                                         break loop1;
                                                      }
                                                   }
                                                   this.§'!v§.addChild(_loc10_);
                                                   §§goto(addr315);
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                      continue loop1;
                                                   }
                                                   addr167:
                                                }
                                             }
                                          }
                                          §§goto(addr315);
                                       }
                                       else
                                       {
                                          §§push(_loc11_.front);
                                       }
                                    }
                                    addr91:
                                 }
                                 §§goto(addr319);
                              }
                              §§goto(addr321);
                           }
                           break;
                        }
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(!_loc15_)
                              {
                                 §§goto(addr311);
                              }
                              §§goto(addr315);
                           }
                           else
                           {
                              this.§8!@§.addChild(_loc10_);
                           }
                           §§goto(addr303);
                        }
                     }
                  }
               }
               §§goto(addr315);
            }
            else
            {
               this.§#;§[this.§#;§.length] = _loc11_;
            }
            §§goto(addr167);
         }
         §§goto(addr319);
      }
      
      public function §4!Q§(param1:int, param2:§`!_§, param3:§`!_§) : §5b§
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc6_:§5b§ = null;
         var _loc4_:int = this.§#;§.indexOf(param2) - this.§[s§;
         var _loc5_:int = this.§#;§.indexOf(param3) - this.§[s§;
         if(_loc8_)
         {
            §§push(_loc4_);
            if(_loc8_ || param2)
            {
               §§push(0);
               if(!(_loc7_ && this))
               {
                  §§push(§§pop() >= §§pop());
                  if(_loc8_ || param1)
                  {
                     if(§§pop())
                     {
                        if(!_loc7_)
                        {
                           §§pop();
                           if(!(_loc7_ && param3))
                           {
                              §§goto(addr89);
                           }
                           §§goto(addr90);
                        }
                     }
                  }
                  addr89:
                  §§goto(addr88);
               }
               addr88:
               §§goto(addr87);
            }
            addr87:
            §§goto(addr86);
         }
         addr86:
         if(_loc5_ >= 0)
         {
            (_loc6_ = new §5b§(§0!Q§.§@,§,_loc4_,_loc5_,new Point(0,0),new Point(0,0))).§^^§ = this.§#!3§.mLevelEngine.mWorld.§%!w§(_loc6_.§]!R§(param2,param3));
            addr90:
            if(_loc8_)
            {
               this.§!@§.push(_loc6_);
               if(!(_loc7_ && param1))
               {
                  return _loc6_;
               }
            }
         }
         return null;
      }
      
      public function §9!P§(param1:§5b§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            if(!(param1.§^^§ is b2WeldJoint))
            {
               if(!_loc5_)
               {
                  §§goto(addr25);
               }
            }
            var _loc2_:§`!_§ = this.§>J§(param1.index1 + this.§[s§);
            var _loc3_:§`!_§ = this.§>J§(param1.index2 + this.§[s§);
            if(!_loc5_)
            {
               this.§#!3§.mLevelEngine.mWorld.§12§(param1.§^^§);
            }
            do
            {
               param1.§^^§ = this.§#!3§.mLevelEngine.mWorld.§%!w§(param1.§]!R§(_loc2_,_loc3_));
            }
            while(_loc5_);
            
            return;
         }
         addr25:
      }
      
      public function §]!!§(param1:§`!_§) : Vector.<§5b§>
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:§5b§ = null;
         var _loc2_:Vector.<§5b§> = new Vector.<§5b§>();
         var _loc3_:int = this.§#;§.indexOf(param1) - this.§[s§;
         if(!(_loc8_ && _loc2_))
         {
            §§push(_loc3_);
            if(!_loc8_)
            {
               if(§§pop() >= 0)
               {
                  addr57:
                  addr46:
                  for each(_loc4_ in this.§!@§)
                  {
                     §§push(_loc4_.index1 == _loc3_);
                     if(!_loc8_)
                     {
                        if(!§§pop())
                        {
                           if(!(_loc8_ && _loc3_))
                           {
                              addr94:
                              §§pop();
                              if(!(_loc8_ && param1))
                              {
                                 addr106:
                                 if(_loc4_.index2 != _loc3_)
                                 {
                                    continue;
                                 }
                                 if(!(_loc7_ || this))
                                 {
                                    continue;
                                 }
                              }
                              _loc2_.push(_loc4_);
                              continue;
                           }
                        }
                        §§goto(addr106);
                     }
                     §§goto(addr94);
                  }
               }
               return _loc2_;
            }
            §§goto(addr57);
         }
         §§goto(addr46);
      }
      
      public function §>!P§() : Vector.<§5b§>
      {
         return this.§!@§;
      }
      
      public function §6!F§(param1:§`!_§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:int = this.§#;§.indexOf(param1) - this.§[s§;
         var _loc3_:int = this.§!@§.length - 1;
         while(true)
         {
            §§push(_loc3_);
            if(!_loc5_)
            {
               if(§§pop() < 0)
               {
                  if(!(_loc5_ && param1))
                  {
                     break;
                  }
                  loop1:
                  while(true)
                  {
                     if(_loc4_)
                     {
                        if(_loc4_ || param1)
                        {
                           break;
                        }
                        while(true)
                        {
                           this.§!@§.splice(_loc3_,1);
                        }
                        addr108:
                     }
                     loop3:
                     while(_loc5_ && _loc2_)
                     {
                        loop4:
                        while(true)
                        {
                           §§push(this.§!@§[_loc3_].index2 == _loc2_);
                           if(!_loc5_)
                           {
                              if(_loc5_ && this)
                              {
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       break loop4;
                                    }
                                    continue loop4;
                                 }
                                 addr130:
                              }
                              break;
                           }
                        }
                        while(true)
                        {
                           if(!§§pop())
                           {
                              break loop3;
                           }
                           §§goto(addr108);
                        }
                     }
                     while(true)
                     {
                        §§push(_loc3_);
                        if(_loc4_ || this)
                        {
                           §§push(§§pop() - 1);
                        }
                        continue loop1;
                     }
                  }
                  continue;
               }
               §§push(this.§!@§[_loc3_].index1 == _loc2_);
               §§goto(addr130);
            }
            §§goto(addr68);
         }
      }
      
      public function §`!M§(param1:§`!_§, param2:§`!_§) : Boolean
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:int = this.§#;§.indexOf(param1) - this.§[s§;
         var _loc4_:int = this.§#;§.indexOf(param2) - this.§[s§;
         var _loc5_:* = int(this.§!@§.length - 1);
         loop0:
         while(true)
         {
            §§push(_loc5_);
            if(!(_loc6_ && _loc3_))
            {
               if(§§pop() < 0)
               {
                  if(!(_loc6_ && this))
                  {
                     if(!_loc6_)
                     {
                        §§push(false);
                        if(!_loc6_)
                        {
                           if(_loc7_ || param1)
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
                                 §§push(this.§!@§[_loc5_].index1 == _loc4_);
                                 loop3:
                                 while(true)
                                 {
                                    if(_loc7_)
                                    {
                                       §§push(§§pop());
                                       if(!_loc6_)
                                       {
                                          if(§§pop())
                                          {
                                             loop4:
                                             while(true)
                                             {
                                                §§pop();
                                                addr183:
                                                while(true)
                                                {
                                                   §§push(this.§!@§[_loc5_].index2 == _loc3_);
                                                   if(_loc6_)
                                                   {
                                                      while(!_loc7_)
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(§§pop());
                                                            loop17:
                                                            while(true)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§pop();
                                                                     addr211:
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§!@§[_loc5_].index2 == _loc4_);
                                                                     }
                                                                  }
                                                                  addr210:
                                                               }
                                                               while(true)
                                                               {
                                                                  addr193:
                                                                  loop6:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop());
                                                                     addr194:
                                                                     while(true)
                                                                     {
                                                                        if(_loc6_)
                                                                        {
                                                                           continue loop17;
                                                                        }
                                                                        if(!§§pop())
                                                                        {
                                                                           break;
                                                                        }
                                                                        continue loop6;
                                                                     }
                                                                     continue loop1;
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                      return §§pop();
                                                   }
                                                   addr154:
                                                   addr154:
                                                   if(_loc7_)
                                                   {
                                                      continue loop3;
                                                   }
                                                   continue loop4;
                                                }
                                                continue loop3;
                                             }
                                          }
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                if(!(_loc6_ && this))
                                                {
                                                   §§goto(addr154);
                                                   §§push(true);
                                                }
                                                else
                                                {
                                                   loop8:
                                                   while(true)
                                                   {
                                                      addr86:
                                                      while(true)
                                                      {
                                                         if(_loc6_ && _loc3_)
                                                         {
                                                            continue loop8;
                                                         }
                                                         if(!(_loc6_ && _loc3_))
                                                         {
                                                            if(_loc7_ || param1)
                                                            {
                                                               break;
                                                            }
                                                            continue loop2;
                                                         }
                                                         §§goto(addr183);
                                                      }
                                                      continue loop0;
                                                   }
                                                   addr157:
                                                }
                                                §§goto(addr154);
                                             }
                                             while(true)
                                             {
                                                §§push(_loc5_);
                                                if(!(_loc6_ && param2))
                                                {
                                                   addr85:
                                                   §§push(§§pop() - 1);
                                                   while(true)
                                                   {
                                                      _loc5_ = §§pop();
                                                      §§goto(addr86);
                                                   }
                                                   addr85:
                                                }
                                                §§goto(addr85);
                                                §§goto(addr157);
                                             }
                                          }
                                          addr144:
                                       }
                                       §§goto(addr194);
                                    }
                                    §§goto(addr210);
                                 }
                              }
                           }
                        }
                        §§goto(addr154);
                     }
                     §§goto(addr211);
                  }
                  §§goto(addr86);
               }
               else
               {
                  §§push(this.§!@§[_loc5_].index1 == _loc3_);
               }
               §§goto(addr208);
            }
            §§goto(addr85);
         }
         return §§pop();
      }
      
      protected function createObject(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §`!_§
      {
         var _loc15_:Boolean = false;
         var _loc16_:Boolean = true;
         var _loc10_:§`!_§ = null;
         var _loc11_:§>r§ = null;
         var _loc12_:§>r§ = null;
         if(!_loc15_)
         {
            §§push(param2);
            if(_loc16_ || param2)
            {
               §§push("BIRD");
               if(!_loc15_)
               {
                  if(§§pop().indexOf(§§pop()) == 0)
                  {
                     if(_loc16_)
                     {
                        addr44:
                        _loc10_ = this.§98§(param1,param2,param3,param4,param5,param6,param7,param8,param9);
                        if(_loc16_ || param1)
                        {
                           var _loc13_:*;
                           §§push((_loc13_ = this).§#!z§);
                           if(_loc16_ || param2)
                           {
                              §§push(§§pop() + 1);
                           }
                           var _loc14_:* = §§pop();
                           if(!(_loc15_ && this))
                           {
                              _loc13_.§#!z§ = _loc14_;
                           }
                        }
                     }
                     else
                     {
                        addr95:
                        §§push(§%d§.§4!^§(param2));
                        if(!(_loc15_ && param1))
                        {
                           _loc11_ = §§pop();
                           _loc10_ = new §=B§(this,param1,this.§#!3§.mLevelEngine.mWorld,this.§#!3§,this.§9!g§,param2,param3,param4,param5,param9,_loc11_.particleJSONId,_loc11_.particleVariationCount);
                        }
                        else
                        {
                           addr134:
                           §§push((_loc12_ = §§pop()) == null);
                           if(!_loc15_)
                           {
                              §§push(§§pop());
                              if(_loc16_)
                              {
                                 if(§§pop())
                                 {
                                    if(!(_loc15_ && this))
                                    {
                                       §§pop();
                                       if(_loc16_)
                                       {
                                          §§push(param2);
                                          if(_loc16_ || this)
                                          {
                                             §§push(§§pop().indexOf("MISC_") == 0);
                                             if(!(_loc15_ && param2))
                                             {
                                                addr184:
                                                if(§§pop())
                                                {
                                                   if(_loc16_)
                                                   {
                                                      addr200:
                                                      §§push("MISC_FOOD_");
                                                      if(!(_loc15_ && this))
                                                      {
                                                         §§push(§§pop() + param2.substring(5));
                                                      }
                                                      param2 = §§pop();
                                                      if(_loc16_ || param2)
                                                      {
                                                         addr208:
                                                         _loc12_ = §%d§.§4!^§(param2);
                                                         §§push(_loc12_.§]!g§);
                                                         if(!_loc15_)
                                                         {
                                                            §§push(§>r§.§7b§);
                                                            if(!(_loc15_ && param3))
                                                            {
                                                               §§push(§§pop() == §§pop());
                                                               if(_loc16_)
                                                               {
                                                                  addr230:
                                                                  if(!§§pop())
                                                                  {
                                                                     if(!(_loc15_ && param3))
                                                                     {
                                                                        §§goto(addr238);
                                                                     }
                                                                  }
                                                                  §§goto(addr251);
                                                               }
                                                               §§goto(addr238);
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr251);
                                                   }
                                                }
                                                §§goto(addr208);
                                             }
                                             addr238:
                                             §§pop();
                                             if(_loc16_ || param3)
                                             {
                                                addr251:
                                                if(_loc12_.§]!g§ != §>r§.§@!g§)
                                                {
                                                   _loc10_ = new §`!_§(this,param1,this.§#!3§.mLevelEngine.mWorld,this.§#!3§,this.§9!g§,param2,param3,param4,param5,param9,_loc12_.front);
                                                }
                                                §§goto(addr309);
                                             }
                                             _loc10_ = new §,Y§(this,param1,this.§#!3§.mLevelEngine.mWorld,this.§#!3§,this.§9!g§,param2,param3,param4,param5,param9,_loc12_.front,_loc12_.particleJSONId,_loc12_.particleVariationCount);
                                             §§goto(addr309);
                                          }
                                          §§goto(addr200);
                                       }
                                       §§goto(addr208);
                                    }
                                 }
                                 §§goto(addr184);
                              }
                           }
                           §§goto(addr230);
                        }
                     }
                     addr309:
                     return _loc10_;
                  }
                  addr92:
                  if(param2.indexOf("PIG") == 0)
                  {
                     §§goto(addr95);
                  }
                  else
                  {
                     §§push(§%d§.§4!^§(param2));
                  }
                  §§goto(addr134);
                  §§goto(addr95);
               }
            }
            §§goto(addr92);
         }
         §§goto(addr44);
      }
      
      public function §#!#§(param1:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§`!_§ = null;
         var _loc2_:* = int(this.§#;§.length - 1);
         loop0:
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§#;§[_loc2_] as §`!_§;
            if(_loc5_)
            {
               if(_loc3_)
               {
                  if(!_loc4_)
                  {
                     if(_loc3_.§&!>§ > 0)
                     {
                        _loc3_.§;b§();
                        loop1:
                        while(true)
                        {
                           if(_loc5_ || _loc2_)
                           {
                              while(true)
                              {
                                 addr71:
                                 while(true)
                                 {
                                    _loc3_.§5!I§();
                                    loop7:
                                    while(true)
                                    {
                                       if(_loc5_)
                                       {
                                          addr76:
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
                                                continue loop1;
                                             }
                                             continue loop7;
                                             §§goto(addr76);
                                          }
                                          continue loop0;
                                          addr39:
                                       }
                                       §§goto(addr39);
                                    }
                                 }
                              }
                              addr99:
                           }
                           addr114:
                           loop3:
                           while(true)
                           {
                              §§goto(addr76);
                              addr108:
                              while(true)
                              {
                                 this.§,@§(_loc2_,true,true,true);
                                 continue loop3;
                              }
                           }
                        }
                     }
                     §§goto(addr108);
                  }
                  §§goto(addr114);
               }
               §§goto(addr76);
            }
            §§goto(addr99);
         }
         if(_loc5_)
         {
            this.§0"§(param1);
         }
      }
      
      protected function §0"§(param1:Number) : void
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc3_:§5b§ = null;
         var _loc4_:§]B§ = null;
         var _loc5_:* = 0;
         var _loc6_:§`!_§ = null;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc2_:* = int(this.§+t§.length - 1);
         while(true)
         {
            §§push(_loc2_);
            if(_loc11_)
            {
               if(§§pop() < 0)
               {
                  §§goto(addr437);
               }
               if((_loc4_ = this.§+t§[_loc2_]).§;Z§)
               {
                  if(!_loc12_)
                  {
                     §§push(_loc4_.update(param1));
                     if(_loc11_)
                     {
                        §§push(int(§§pop()));
                        if(_loc11_ || _loc3_)
                        {
                           addr63:
                           §§push(§§pop());
                           if(_loc11_)
                           {
                              _loc5_ = §§pop();
                              addr112:
                              if(!_loc12_)
                              {
                                 §§push(-1);
                              }
                              _loc2_ = §§pop() - 1;
                              continue;
                           }
                           if(§§pop() != §§pop())
                           {
                              if(!(_loc11_ || param1))
                              {
                                 continue;
                              }
                              addr78:
                              §§push(this);
                              §§push("block_");
                              if(_loc11_)
                              {
                                 §§push(§§pop() + _loc5_);
                              }
                              if(_loc6_ = §§pop().§=!u§(§§pop()))
                              {
                                 if(_loc11_ || this)
                                 {
                                    this.§^Q§(_loc6_,true,true,true);
                                    if(!_loc11_)
                                    {
                                    }
                                    addr109:
                                    §§push(_loc2_);
                                    if(_loc12_)
                                    {
                                    }
                                    §§goto(addr112);
                                 }
                                 §§goto(addr109);
                              }
                              this.§+t§.splice(_loc2_,1);
                           }
                           §§goto(addr109);
                        }
                        §§goto(addr112);
                     }
                     §§goto(addr63);
                  }
                  §§goto(addr78);
               }
               §§goto(addr109);
            }
            break;
         }
         var _loc9_:* = §§pop();
         if(!(_loc12_ && this))
         {
            loop1:
            for each(_loc3_ in this.§!@§)
            {
               if(_loc11_)
               {
                  §§push(_loc3_.type == §0!Q§.§7Z§);
                  loop2:
                  while(true)
                  {
                     §§push(§§pop());
                     loop3:
                     while(true)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              §§pop();
                              addr432:
                              while(true)
                              {
                                 §§push(Boolean(_loc3_.§9c§));
                              }
                           }
                           addr431:
                        }
                        while(true)
                        {
                           loop7:
                           while(§§pop())
                           {
                              loop8:
                              while(true)
                              {
                                 §§push(_loc3_.§^^§);
                                 loop9:
                                 while(true)
                                 {
                                    §§push((§§pop() as b2PrismaticJoint).§null §());
                                    loop10:
                                    while(true)
                                    {
                                       §§push(Number(§§pop()));
                                       loop11:
                                       while(true)
                                       {
                                          _loc7_ = §§pop();
                                          loop12:
                                          while(true)
                                          {
                                             §§push(_loc3_.§^^§);
                                             loop13:
                                             while(true)
                                             {
                                                if(!(_loc11_ || this))
                                                {
                                                   break;
                                                   addr383:
                                                }
                                                §§push((§§pop() as b2PrismaticJoint).§@!+§());
                                                while(!(_loc12_ && _loc2_))
                                                {
                                                   §§push(Number(§§pop()));
                                                   while(true)
                                                   {
                                                      _loc8_ = §§pop();
                                                      addr392:
                                                      while(!(_loc12_ && _loc2_))
                                                      {
                                                      }
                                                      continue loop12;
                                                   }
                                                }
                                                continue loop11;
                                                addr211:
                                                §§push(_loc3_.§^^§);
                                                if(!(_loc11_ || this))
                                                {
                                                   continue;
                                                }
                                                §§push(§§pop() as b2PrismaticJoint);
                                                §§push(_loc8_);
                                                if(!(_loc12_ && this))
                                                {
                                                   §§push(-§§pop());
                                                }
                                                §§pop().§4!K§(§§pop());
                                                addr232:
                                                if(true)
                                                {
                                                   break loop7;
                                                }
                                                loop39:
                                                while(true)
                                                {
                                                   §§push(_loc8_);
                                                   addr236:
                                                   loop40:
                                                   while(_loc11_ || param1)
                                                   {
                                                      if(_loc11_)
                                                      {
                                                         if(!(_loc11_ || _loc2_))
                                                         {
                                                            continue loop10;
                                                         }
                                                         §§push(0);
                                                         if(_loc11_)
                                                         {
                                                            §§push(§§pop() < §§pop());
                                                            loop41:
                                                            while(true)
                                                            {
                                                               §§push(§§pop());
                                                               if(!_loc12_)
                                                               {
                                                                  addr259:
                                                                  if(!(_loc12_ && param1))
                                                                  {
                                                                     if(!_loc12_)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           loop42:
                                                                           for(; _loc11_; §§push(§§pop() <= _loc3_.lowerLimit),if(_loc12_ && param1)
                                                                           {
                                                                              continue;
                                                                           },if(_loc12_)
                                                                           {
                                                                              continue loop41;
                                                                           },if(_loc11_)
                                                                           {
                                                                              addr167:
                                                                              if(!(_loc12_ && param1))
                                                                              {
                                                                                 if(_loc11_ || _loc2_)
                                                                                 {
                                                                                    §§goto(addr181);
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    if(!_loc11_)
                                                                                    {
                                                                                       continue loop2;
                                                                                    }
                                                                                    §§pop();
                                                                                    §§goto(addr369);
                                                                                 }
                                                                                 continue loop3;
                                                                                 addr366:
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 if(_loc11_ || _loc2_)
                                                                                 {
                                                                                    if(!(_loc12_ && param1))
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop());
                                                                                          addr319:
                                                                                          while(true)
                                                                                          {
                                                                                             if(§§pop())
                                                                                             {
                                                                                                §§goto(addr181);
                                                                                             }
                                                                                             addr320:
                                                                                             while(true)
                                                                                             {
                                                                                                §§pop();
                                                                                                §§goto(addr321);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       addr317:
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                                 addr338:
                                                                                 addr364:
                                                                                 while(_loc11_)
                                                                                 {
                                                                                    §§pop();
                                                                                    §§goto(addr341);
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop());
                                                                                    break loop41;
                                                                                 }
                                                                                 §§goto(addr167);
                                                                              }
                                                                              §§goto(addr349);
                                                                              addr303:
                                                                           },§§goto(addr320))
                                                                           {
                                                                              §§pop();
                                                                              loop43:
                                                                              while(true)
                                                                              {
                                                                                 if(_loc11_)
                                                                                 {
                                                                                    if(!_loc12_)
                                                                                    {
                                                                                       if(_loc12_ && _loc2_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       if(!(_loc12_ && param1))
                                                                                       {
                                                                                          §§push(_loc7_);
                                                                                          if(_loc11_)
                                                                                          {
                                                                                             continue loop42;
                                                                                          }
                                                                                          continue loop40;
                                                                                       }
                                                                                       continue loop8;
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(Boolean(_loc3_.§`!I§));
                                                                                       addr346:
                                                                                       while(true)
                                                                                       {
                                                                                          addr347:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop());
                                                                                             addr348:
                                                                                             while(true)
                                                                                             {
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   while(_loc11_ || this)
                                                                                                   {
                                                                                                      §§pop();
                                                                                                      while(!_loc12_)
                                                                                                      {
                                                                                                         §§push(_loc8_);
                                                                                                         while(!_loc12_)
                                                                                                         {
                                                                                                            §§push(0);
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop() > §§pop());
                                                                                                               break loop42;
                                                                                                            }
                                                                                                            break loop40;
                                                                                                         }
                                                                                                         §§goto(addr391);
                                                                                                         if(!(_loc11_ || this))
                                                                                                         {
                                                                                                            continue;
                                                                                                         }
                                                                                                         §§goto(addr211);
                                                                                                      }
                                                                                                      §§goto(addr432);
                                                                                                   }
                                                                                                   §§goto(addr431);
                                                                                                   addr349:
                                                                                                }
                                                                                                addr181:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!§§pop())
                                                                                                   {
                                                                                                      break loop7;
                                                                                                   }
                                                                                                   if(_loc11_ || _loc2_)
                                                                                                   {
                                                                                                      if(_loc12_)
                                                                                                      {
                                                                                                         continue loop43;
                                                                                                      }
                                                                                                      if(!_loc12_)
                                                                                                      {
                                                                                                         §§goto(addr194);
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         continue loop39;
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr232);
                                                                                                }
                                                                                                continue loop13;
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    addr369:
                                                                                 }
                                                                                 addr341:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc7_);
                                                                                    break loop40;
                                                                                 }
                                                                              }
                                                                              §§goto(addr392);
                                                                           }
                                                                           while(!_loc12_)
                                                                           {
                                                                              if(_loc12_)
                                                                              {
                                                                                 continue loop7;
                                                                              }
                                                                              §§push(§§pop());
                                                                              while(true)
                                                                              {
                                                                                 if(!_loc12_)
                                                                                 {
                                                                                    if(_loc12_)
                                                                                    {
                                                                                       continue loop3;
                                                                                    }
                                                                                    if(§§pop())
                                                                                    {
                                                                                       §§goto(addr338);
                                                                                    }
                                                                                    §§goto(addr317);
                                                                                 }
                                                                                 break;
                                                                                 §§goto(addr259);
                                                                              }
                                                                              §§goto(addr348);
                                                                           }
                                                                           §§goto(addr347);
                                                                        }
                                                                        §§goto(addr181);
                                                                     }
                                                                     break;
                                                                  }
                                                                  §§goto(addr333);
                                                               }
                                                               §§goto(addr319);
                                                            }
                                                            while(true)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  §§goto(addr366);
                                                               }
                                                               §§goto(addr346);
                                                            }
                                                         }
                                                         §§goto(addr327);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr383);
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      if(!(_loc12_ && param1))
                                                      {
                                                         §§goto(addr303);
                                                         §§push(§§pop() >= _loc3_.upperLimit);
                                                      }
                                                      break;
                                                      §§goto(addr236);
                                                   }
                                                   §§goto(addr324);
                                                }
                                             }
                                             continue loop9;
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                           continue loop1;
                        }
                     }
                  }
               }
               while(true)
               {
                  §§goto(addr364);
               }
            }
         }
         addr437:
         if(!(_loc12_ && param1))
         {
            break loop0;
         }
      }
      
      public function addExplosions(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || this)
         {
            this.§8!8§.push(§9#§.createExplosion(param1,param2,param3));
         }
         do
         {
            §9'§.playSound("TntExplosions","ChannelExplosions");
         }
         while(!_loc5_);
         
      }
      
      public function §;!5§(param1:Number, param2:Number) : int
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:§`!_§ = null;
         var _loc3_:* = int(this.§#;§.length - 1);
         while(true)
         {
            §§push(_loc3_);
            if(!_loc5_)
            {
               if(§§pop() < 0)
               {
                  break;
               }
               if(_loc4_ = this.§#;§[_loc3_])
               {
                  if(!_loc5_)
                  {
                     if(_loc4_.isInCoordinates(param1,param2))
                     {
                        if(_loc5_)
                        {
                           continue;
                        }
                        addr55:
                        §§push(_loc3_);
                        if(_loc6_ || this)
                        {
                           return §§pop();
                        }
                        addr89:
                        §§push(§§pop() - 1);
                     }
                     else
                     {
                        addr81:
                        §§push(_loc3_);
                        if(!(_loc5_ && _loc3_))
                        {
                           §§goto(addr89);
                        }
                     }
                     _loc3_ = §§pop();
                     continue;
                  }
                  §§goto(addr55);
               }
               §§goto(addr81);
            }
            break;
         }
         return §§pop();
      }
      
      public function §1!K§(param1:Number, param2:Number) : §`!_§
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:§`!_§ = null;
         var _loc3_:* = int(this.§#;§.length - 1);
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§#;§[_loc3_])
            {
               if(_loc6_)
               {
                  if(_loc4_.isInCoordinates(param1,param2))
                  {
                     if(_loc6_)
                     {
                        return _loc4_;
                     }
                  }
               }
            }
            §§push(_loc3_);
            if(!_loc5_)
            {
               §§push(§§pop() - 1);
            }
            _loc3_ = §§pop();
         }
         return null;
      }
      
      public function §>J§(param1:int) : §`!_§
      {
         return this.§#;§[param1];
      }
      
      public function §'!A§(param1:Number, param2:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:§`!_§ = null;
         var _loc3_:* = int(this.§#;§.length - 1);
         while(_loc3_ >= 0)
         {
            (_loc4_ = this.§#;§[_loc3_] as §`!_§).§'!A§(param2,param1);
            if(_loc6_ || _loc3_)
            {
               §§push(_loc3_);
               if(!(_loc5_ && _loc3_))
               {
                  §§push(§§pop() - 1);
               }
               _loc3_ = §§pop();
            }
         }
      }
      
      private function §4!x§(param1:§`!_§, param2:Number) : Boolean
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc4_:* = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:* = NaN;
         var _loc7_:§`!_§ = null;
         if(!(_loc8_ && this))
         {
            §§push(this.mSardineCanAdded);
            if(!(_loc8_ && _loc3_))
            {
               if(!§§pop())
               {
                  if(!(_loc8_ && _loc3_))
                  {
                     §§push(true);
                     if(_loc9_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr61:
                     §§push(this.mMightyEagleAdded);
                     if(_loc9_ || this)
                     {
                        if(§§pop())
                        {
                           if(_loc9_)
                           {
                              §§push(false);
                              if(_loc8_ && this)
                              {
                                 addr83:
                                 var _loc3_:* = §§pop();
                                 if(!(_loc8_ && _loc3_))
                                 {
                                    §§push(param1.§&!>§);
                                    loop0:
                                    while(true)
                                    {
                                       §§push(param1.§]l§);
                                       loop1:
                                       while(true)
                                       {
                                          if(§§pop() != §§pop())
                                          {
                                             §§push(this.§0!Z§);
                                             loop2:
                                             while(true)
                                             {
                                                §§push(0);
                                                addr492:
                                                while(true)
                                                {
                                                   if(§§pop() == §§pop())
                                                   {
                                                      while(true)
                                                      {
                                                         this.§0!Z§ = this.§#!3§.§[!t§;
                                                         addr498:
                                                         while(true)
                                                         {
                                                         }
                                                      }
                                                      addr493:
                                                   }
                                                   addr469:
                                                   loop6:
                                                   while(true)
                                                   {
                                                      §§push(param1.§^!R§());
                                                      loop7:
                                                      while(true)
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                         if(_loc9_ || param2)
                                                         {
                                                            §§push(§§pop());
                                                            loop8:
                                                            while(true)
                                                            {
                                                               if(!§§pop())
                                                               {
                                                                  loop40:
                                                                  while(true)
                                                                  {
                                                                     §§pop();
                                                                     loop41:
                                                                     while(!_loc8_)
                                                                     {
                                                                        §§push(this.§`h§(param1));
                                                                        loop42:
                                                                        while(true)
                                                                        {
                                                                           §§push(Boolean(§§pop()));
                                                                           if(!_loc8_)
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop());
                                                                                 loop10:
                                                                                 while(true)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       loop18:
                                                                                       while(true)
                                                                                       {
                                                                                          if(§§pop())
                                                                                          {
                                                                                             loop19:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(this.mMightyEagleTimer);
                                                                                                if(_loc9_)
                                                                                                {
                                                                                                   if(§§pop() < this.§,L§.MIGHTY_EAGLE_WAIT_TIME)
                                                                                                   {
                                                                                                      loop20:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(this.mMightyEagleTimer);
                                                                                                         if(_loc9_)
                                                                                                         {
                                                                                                            §§push(param2);
                                                                                                            while(!(_loc8_ && param1))
                                                                                                            {
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                               addr189:
                                                                                                               §§push(this.§,L§.MIGHTY_EAGLE_STARTING_DISTANCE_Y * this.§,L§.MIGHTY_EAGLE_Y_CHANGE);
                                                                                                               if(_loc9_)
                                                                                                               {
                                                                                                                  §§push(§§pop() * 1.07);
                                                                                                               }
                                                                                                               if(_loc8_)
                                                                                                               {
                                                                                                                  continue;
                                                                                                               }
                                                                                                               addr211:
                                                                                                               §§push(§§pop() - §§pop());
                                                                                                               if(_loc9_ || param2)
                                                                                                               {
                                                                                                                  addr210:
                                                                                                                  §§push(Number(§§pop()));
                                                                                                               }
                                                                                                               if(_loc9_ || this)
                                                                                                               {
                                                                                                                  if(!_loc8_)
                                                                                                                  {
                                                                                                                     if(!_loc8_)
                                                                                                                     {
                                                                                                                        _loc6_ = §§pop();
                                                                                                                        loop37:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(_loc9_ || this)
                                                                                                                           {
                                                                                                                              addr230:
                                                                                                                              if(!(_loc8_ && param1))
                                                                                                                              {
                                                                                                                                 if(!_loc9_)
                                                                                                                                 {
                                                                                                                                    continue loop19;
                                                                                                                                 }
                                                                                                                                 if(!_loc8_)
                                                                                                                                 {
                                                                                                                                    §§push(this.§`h§(param1));
                                                                                                                                    if(!_loc8_)
                                                                                                                                    {
                                                                                                                                       if(!_loc8_)
                                                                                                                                       {
                                                                                                                                          if(_loc9_)
                                                                                                                                          {
                                                                                                                                             if(_loc8_ && this)
                                                                                                                                             {
                                                                                                                                                continue loop7;
                                                                                                                                             }
                                                                                                                                             if(§§pop())
                                                                                                                                             {
                                                                                                                                                if(_loc9_)
                                                                                                                                                {
                                                                                                                                                   if(!_loc8_)
                                                                                                                                                   {
                                                                                                                                                      if(_loc9_ || param1)
                                                                                                                                                      {
                                                                                                                                                         continue loop20;
                                                                                                                                                      }
                                                                                                                                                      loop27:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(_loc9_ || _loc3_)
                                                                                                                                                         {
                                                                                                                                                            §9'§.playSound("Mighty_Eagle_Selected_1","ChannelBird");
                                                                                                                                                            break loop37;
                                                                                                                                                         }
                                                                                                                                                         addr522:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(this.§]L§);
                                                                                                                                                            break loop27;
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      addr329:
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc9_ || param2))
                                                                                                                                                         {
                                                                                                                                                            continue loop41;
                                                                                                                                                         }
                                                                                                                                                         loop36:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(param1.§3J§());
                                                                                                                                                            if(!_loc8_)
                                                                                                                                                            {
                                                                                                                                                               if(!(_loc8_ && param2))
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop().GetPosition());
                                                                                                                                                                  if(!_loc8_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop().y);
                                                                                                                                                                     if(!(_loc8_ && param1))
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr189);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr210);
                                                                                                                                                                  }
                                                                                                                                                                  loop33:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop().x);
                                                                                                                                                                     if(!_loc8_)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc9_)
                                                                                                                                                                        {
                                                                                                                                                                           if(!(_loc9_ || param1))
                                                                                                                                                                           {
                                                                                                                                                                              break;
                                                                                                                                                                           }
                                                                                                                                                                           §§push(§§pop() - this.§,L§.MIGHTY_EAGLE_STARTING_DISTANCE_X);
                                                                                                                                                                           if(_loc9_)
                                                                                                                                                                           {
                                                                                                                                                                              addr278:
                                                                                                                                                                              §§push(Number(§§pop()));
                                                                                                                                                                              while(!_loc8_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!_loc8_)
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop0;
                                                                                                                                                                                 }
                                                                                                                                                                                 addr524:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(§§pop() < this.§,L§.SARDINE_CAN_MAX_ROTATION_SPEED)
                                                                                                                                                                                    {
                                                                                                                                                                                       break loop41;
                                                                                                                                                                                    }
                                                                                                                                                                                    addr506:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(param1.§3J§());
                                                                                                                                                                                       break loop36;
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr211);
                                                                                                                                                                              }
                                                                                                                                                                              loop16:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() > this.§0!Z§ + this.§,L§.SARDINE_CAN_DELAY_AFTER_HIT);
                                                                                                                                                                                 addr388:
                                                                                                                                                                                 addr437:
                                                                                                                                                                                 while(_loc9_)
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop18;
                                                                                                                                                                                 }
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!(_loc8_ && param2))
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc9_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop());
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!§§pop())
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop18;
                                                                                                                                                                                             }
                                                                                                                                                                                             if(_loc8_ && _loc3_)
                                                                                                                                                                                             {
                                                                                                                                                                                                break;
                                                                                                                                                                                             }
                                                                                                                                                                                             §§pop();
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop16;
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          addr607:
                                                                                                                                                                                          return §§pop();
                                                                                                                                                                                          addr447:
                                                                                                                                                                                       }
                                                                                                                                                                                       continue loop40;
                                                                                                                                                                                    }
                                                                                                                                                                                    continue loop42;
                                                                                                                                                                                 }
                                                                                                                                                                                 continue loop42;
                                                                                                                                                                              }
                                                                                                                                                                              addr279:
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr279);
                                                                                                                                                                        }
                                                                                                                                                                        loop39:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc9_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() > this.§,L§.MIGHTY_EAGLE_SOUND_DELAY);
                                                                                                                                                                              if(!_loc8_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr344:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(§§pop())
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr329);
                                                                                                                                                                                    }
                                                                                                                                                                                    addr242:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc4_);
                                                                                                                                                                                       addr244:
                                                                                                                                                                                       loop30:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(§§pop() >= this.§,L§.MIGHTY_EAGLE_WAIT_TIME)
                                                                                                                                                                                          {
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc8_ && param2)
                                                                                                                                                                                                {
                                                                                                                                                                                                   break loop30;
                                                                                                                                                                                                }
                                                                                                                                                                                                if(!_loc9_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   break;
                                                                                                                                                                                                   addr259:
                                                                                                                                                                                                }
                                                                                                                                                                                                §§push(param1.§3J§());
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue loop33;
                                                                                                                                                                                                }
                                                                                                                                                                                                continue loop39;
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr493);
                                                                                                                                                                                             addr248:
                                                                                                                                                                                          }
                                                                                                                                                                                          else
                                                                                                                                                                                          {
                                                                                                                                                                                             addr603:
                                                                                                                                                                                             this.mMightyEagleTimer = _loc4_;
                                                                                                                                                                                             §§push(_loc3_);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       addr376:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop39;
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    continue loop39;
                                                                                                                                                                                 }
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() < this.§,L§.MIGHTY_EAGLE_SOUND_DELAY);
                                                                                                                                                                                    if(!_loc8_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop());
                                                                                                                                                                                       if(_loc8_)
                                                                                                                                                                                       {
                                                                                                                                                                                          break;
                                                                                                                                                                                       }
                                                                                                                                                                                       if(!(_loc8_ && _loc3_))
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop8;
                                                                                                                                                                                       }
                                                                                                                                                                                       continue loop10;
                                                                                                                                                                                    }
                                                                                                                                                                                    addr375:
                                                                                                                                                                                    addr375:
                                                                                                                                                                                    §§pop();
                                                                                                                                                                                    §§goto(addr376);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr447);
                                                                                                                                                                                 addr344:
                                                                                                                                                                                 addr327:
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr607);
                                                                                                                                                                           }
                                                                                                                                                                           else
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr344);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr278);
                                                                                                                                                                  }
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(Number(§§pop()));
                                                                                                                                                                     addr414:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        _loc4_ = §§pop();
                                                                                                                                                                        addr415:
                                                                                                                                                                        while(_loc9_)
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr344);
                                                                                                                                                                           §§push(this.mMightyEagleTimer);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr498);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  addr413:
                                                                                                                                                               }
                                                                                                                                                               break;
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr259);
                                                                                                                                                         }
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(param2);
                                                                                                                                                            if(_loc9_)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() * this.§]L§);
                                                                                                                                                            }
                                                                                                                                                            §§pop().§^j§(§§pop());
                                                                                                                                                            loop48:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               this.§0!Z§ = 0;
                                                                                                                                                               addr503:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc9_)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop6;
                                                                                                                                                                  }
                                                                                                                                                                  continue loop48;
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      addr553:
                                                                                                                                                      _loc7_ = this.addObject("BIRD_MIGHTY_EAGLE",_loc5_,_loc6_,this.§,L§.MIGHTY_EAGLE_FLYING_ANGLE * 1.2);
                                                                                                                                                      if(!_loc8_)
                                                                                                                                                      {
                                                                                                                                                         this.mMightyEagleAdded = true;
                                                                                                                                                         addr587:
                                                                                                                                                         this.§0!Z§ = 0;
                                                                                                                                                         if(_loc9_ || _loc3_)
                                                                                                                                                         {
                                                                                                                                                            _loc7_.§7![§.§+!s§(1.82);
                                                                                                                                                            if(!_loc8_)
                                                                                                                                                            {
                                                                                                                                                               if(false)
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr587);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr603);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr587);
                                                                                                                                                            addr598:
                                                                                                                                                         }
                                                                                                                                                         addr602:
                                                                                                                                                         §§goto(addr602);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr598);
                                                                                                                                                      addr301:
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr524);
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   addr146:
                                                                                                                                                   if(_loc8_)
                                                                                                                                                   {
                                                                                                                                                      continue;
                                                                                                                                                   }
                                                                                                                                                   if(_loc9_ || param1)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc9_)
                                                                                                                                                      {
                                                                                                                                                         continue loop2;
                                                                                                                                                      }
                                                                                                                                                      if(_loc9_ || param2)
                                                                                                                                                      {
                                                                                                                                                         if(false)
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr166);
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr553);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr503);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr415);
                                                                                                                                             }
                                                                                                                                             §§goto(addr553);
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§pop();
                                                                                                                                                continue loop2;
                                                                                                                                             }
                                                                                                                                             addr467:
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr388);
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       addr138:
                                                                                                                                       _loc3_ = §§pop();
                                                                                                                                       if(!(_loc8_ && this))
                                                                                                                                       {
                                                                                                                                          §§goto(addr146);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr603);
                                                                                                                                 }
                                                                                                                                 §§goto(addr456);
                                                                                                                              }
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           §§goto(addr248);
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §9'§.playSound("Mighty_Eagle_Flying_1","ChannelBird");
                                                                                                                           if(_loc9_)
                                                                                                                           {
                                                                                                                              §§goto(addr242);
                                                                                                                           }
                                                                                                                           §§goto(addr603);
                                                                                                                           §§goto(addr230);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr414);
                                                                                                                  }
                                                                                                                  §§goto(addr244);
                                                                                                               }
                                                                                                               §§goto(addr278);
                                                                                                            }
                                                                                                            continue loop1;
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr603);
                                                                                                }
                                                                                                §§goto(addr413);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr603);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              addr464:
                                                                           }
                                                                           §§goto(addr467);
                                                                        }
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§push(this);
                                                                        §§push(this.§]L§);
                                                                        if(_loc9_ || param1)
                                                                        {
                                                                           §§push(param2);
                                                                           if(_loc9_ || param2)
                                                                           {
                                                                              §§push(§§pop() * this.§,L§.SARDINE_CAN_ROTATION_ACCELERATION);
                                                                           }
                                                                           §§push(§§pop() + §§pop());
                                                                        }
                                                                        §§pop().§]L§ = §§pop();
                                                                        §§goto(addr552);
                                                                     }
                                                                  }
                                                                  addr482:
                                                               }
                                                               §§goto(addr464);
                                                            }
                                                         }
                                                         §§goto(addr482);
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr522);
                                       }
                                    }
                                 }
                                 §§goto(addr552);
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
                  }
                  return §§pop();
               }
               §§goto(addr61);
            }
            §§goto(addr83);
         }
         §§goto(addr82);
      }
      
      private function §1y§(param1:§`!_§, param2:Number) : Boolean
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc5_:§`!_§ = null;
         if(!(_loc8_ && this))
         {
            §§push(Boolean(this.§,L§.MIGHTY_EAGLE_USE_SHADE));
            loop0:
            while(true)
            {
               §§push(§§pop());
               while(true)
               {
                  if(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        addr135:
                        while(true)
                        {
                           §§push(this.§>!k§);
                           addr89:
                           while(true)
                           {
                              §§push(!§§pop());
                              if(!(_loc8_ && param2))
                              {
                                 §§push(Boolean(§§pop()));
                                 if(_loc8_ && _loc3_)
                                 {
                                    continue loop0;
                                 }
                              }
                              if(!_loc8_)
                              {
                                 break;
                              }
                              continue loop2;
                           }
                        }
                     }
                  }
                  while(true)
                  {
                     §§push(§§pop());
                     if(!(_loc9_ || param1))
                     {
                        break;
                     }
                     if(§§pop())
                     {
                        continue loop0;
                     }
                     loop8:
                     while(§§pop())
                     {
                        for(; _loc9_; this.§>!k§ = true,do
                        {
                           this.§#!3§.§7!u§();
                        }
                        while(!(_loc9_ || _loc3_));
                        ,if(_loc8_ && param2)
                        {
                           continue;
                        },if(true)
                        {
                           break loop8;
                        },while(true)
                        {
                           §§push(this.mMightyEagleTimer);
                           if(_loc9_ || this)
                           {
                              §§push(§§pop() > this.§,L§.MIGHTY_EAGLE_SHADING_DELAY);
                              if(!(_loc8_ && param2))
                              {
                                 if(_loc8_)
                                 {
                                    break;
                                 }
                                 continue loop8;
                              }
                              continue loop0;
                           }
                           addr138:
                           var _loc3_:* = §§pop();
                           if(_loc9_ || param1)
                           {
                              §§push(this);
                              §§push(this.mMightyEagleTimer);
                              if(!_loc8_)
                              {
                                 §§push(§§pop() + param2);
                              }
                              §§pop().mMightyEagleTimer = §§pop();
                              if(_loc9_ || param1)
                              {
                                 addr161:
                                 §§push(this.§#!3§.particles);
                                 §§push(§9!B§.§8v§);
                                 §§push(§^z§.§!!B§);
                                 §§push(§9!B§.§5!G§);
                                 §§push(param1.§3J§().GetPosition().x);
                                 if(!(_loc8_ && this))
                                 {
                                    §§push(_loc3_);
                                    if(!(_loc8_ && this))
                                    {
                                       §§push(§§pop() - §§pop());
                                       if(_loc9_)
                                       {
                                          addr192:
                                          §§push(Math.random() * (_loc3_ * 2));
                                          if(_loc9_ || param1)
                                          {
                                             addr206:
                                             §§push(§§pop() + §§pop());
                                             §§push(param1.§3J§().GetPosition().y);
                                             if(!_loc8_)
                                             {
                                                addr212:
                                                §§push(_loc3_);
                                                if(_loc9_)
                                                {
                                                   addr230:
                                                   §§push(§§pop() - §§pop());
                                                   if(_loc9_ || param1)
                                                   {
                                                      addr223:
                                                      §§push(Math.random() * (_loc3_ * 2));
                                                   }
                                                   §§pop().§#Z§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),3500,"",§9!B§.§'!4§(param1.§^r§),0,0,1,0,4);
                                                   var _loc4_:* = 1;
                                                   if(_loc9_ || param2)
                                                   {
                                                      addr353:
                                                      if(this.mMightyEagleHasTouchedGround)
                                                      {
                                                         addr354:
                                                         param1.§^! §(this.§,L§.MIGHTY_EAGLE_ROTATION_SPEED * param2);
                                                         addr361:
                                                         §§push(-1);
                                                         if(!_loc8_)
                                                         {
                                                            _loc4_ = §§pop();
                                                            addr350:
                                                            §§push(this.§0!F§);
                                                            if(!(_loc8_ && param2))
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  if(!(_loc8_ && _loc3_))
                                                                  {
                                                                     if(!_loc8_)
                                                                     {
                                                                        this.§0!F§ = false;
                                                                        this.§#!3§.§6#§();
                                                                        addr318:
                                                                        if(_loc9_)
                                                                        {
                                                                           param1.§+!G§(§-C§.§,&§);
                                                                           addr301:
                                                                           if(!_loc8_)
                                                                           {
                                                                              this.mSardineCanAdded = false;
                                                                              addr281:
                                                                              if(!(_loc8_ && param1))
                                                                              {
                                                                                 if(!(_loc8_ && param1))
                                                                                 {
                                                                                    addr272:
                                                                                    param1.§7![§.§&X§ = true;
                                                                                    addr269:
                                                                                    if(_loc9_)
                                                                                    {
                                                                                       §§push(param1.§7![§);
                                                                                       if(_loc9_ || param1)
                                                                                       {
                                                                                          §§pop().§2!m§();
                                                                                          if(_loc9_)
                                                                                          {
                                                                                             if(!_loc8_)
                                                                                             {
                                                                                                if(false)
                                                                                                {
                                                                                                   §§goto(addr269);
                                                                                                }
                                                                                                addr363:
                                                                                                var _loc6_:int = 0;
                                                                                                var _loc7_:* = this.§#;§;
                                                                                                addr429:
                                                                                                §§push(§§hasnext(_loc7_,_loc6_));
                                                                                                if(_loc9_)
                                                                                                {
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      _loc5_ = §§nextvalue(_loc6_,_loc7_);
                                                                                                      §§push(Boolean(_loc5_));
                                                                                                      if(!(_loc8_ && param1))
                                                                                                      {
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            if(!_loc8_)
                                                                                                            {
                                                                                                               addr388:
                                                                                                               §§pop();
                                                                                                               if(_loc9_ || param1)
                                                                                                               {
                                                                                                                  §§push(_loc5_.§#!t§());
                                                                                                                  if(!(_loc8_ && param2))
                                                                                                                  {
                                                                                                                     addr406:
                                                                                                                     if(§§pop())
                                                                                                                     {
                                                                                                                        if(!_loc8_)
                                                                                                                        {
                                                                                                                           §§push(_loc5_.§3J§());
                                                                                                                           if(_loc9_)
                                                                                                                           {
                                                                                                                              §§pop().SetAwake(true);
                                                                                                                              if(!(_loc8_ && _loc3_))
                                                                                                                              {
                                                                                                                                 addr422:
                                                                                                                                 §§push(_loc5_.§3J§());
                                                                                                                              }
                                                                                                                              §§goto(addr429);
                                                                                                                           }
                                                                                                                           §§pop().SetLinearVelocity(new b2Vec2(0,-18));
                                                                                                                           §§goto(addr429);
                                                                                                                        }
                                                                                                                        §§goto(addr422);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr406);
                                                                                                               }
                                                                                                               §§goto(addr429);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr406);
                                                                                                      }
                                                                                                      §§goto(addr388);
                                                                                                   }
                                                                                                   if(_loc9_ || param2)
                                                                                                   {
                                                                                                      if(_loc9_ || param2)
                                                                                                      {
                                                                                                         if(_loc9_)
                                                                                                         {
                                                                                                            this.§`!]§();
                                                                                                            if(_loc9_)
                                                                                                            {
                                                                                                               addr455:
                                                                                                               §§push(this.mMightyEagleTimer > 6000);
                                                                                                               if(!_loc8_)
                                                                                                               {
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     if(!(_loc8_ && param2))
                                                                                                                     {
                                                                                                                        addr470:
                                                                                                                        §§pop();
                                                                                                                        if(_loc9_ || _loc3_)
                                                                                                                        {
                                                                                                                           §§push(this.isPigsAlive());
                                                                                                                           if(!(_loc8_ && param1))
                                                                                                                           {
                                                                                                                              addr487:
                                                                                                                              §§push(Boolean(§§pop()));
                                                                                                                              if(_loc9_ || param2)
                                                                                                                              {
                                                                                                                                 addr495:
                                                                                                                                 if(§§pop())
                                                                                                                                 {
                                                                                                                                    if(_loc9_)
                                                                                                                                    {
                                                                                                                                       _loc6_ = 0;
                                                                                                                                       if(!(_loc8_ && param1))
                                                                                                                                       {
                                                                                                                                          addr507:
                                                                                                                                          _loc7_ = this.§#;§;
                                                                                                                                          addr563:
                                                                                                                                          for each(_loc5_ in _loc7_)
                                                                                                                                          {
                                                                                                                                             §§push(Boolean(_loc5_));
                                                                                                                                             if(!_loc8_)
                                                                                                                                             {
                                                                                                                                                if(§§pop())
                                                                                                                                                {
                                                                                                                                                   if(_loc9_)
                                                                                                                                                   {
                                                                                                                                                      §§pop();
                                                                                                                                                      if(_loc9_)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc5_.§#!t§());
                                                                                                                                                         if(!(_loc8_ && this))
                                                                                                                                                         {
                                                                                                                                                            addr539:
                                                                                                                                                            if(§§pop())
                                                                                                                                                            {
                                                                                                                                                               if(!(_loc8_ && this))
                                                                                                                                                               {
                                                                                                                                                                  addr547:
                                                                                                                                                                  §§push(_loc5_);
                                                                                                                                                                  §§push(_loc5_.§]l§);
                                                                                                                                                                  if(!(_loc8_ && this))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() * 2);
                                                                                                                                                                  }
                                                                                                                                                                  §§pop().applyDamage(§§pop(),true,true,true);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr563);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr539);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr547);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr539);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       if(_loc9_ || _loc3_)
                                                                                                                                       {
                                                                                                                                          addr580:
                                                                                                                                          param1.§"q§(param2,new Point(this.§,L§.MIGHTY_EAGLE_X_DIRECTION,_loc4_ * this.§,L§.MIGHTY_EAGLE_Y_CHANGE),this.§,L§.MIGHTY_EAGLE_FLYING_SPEED);
                                                                                                                                          if(!(_loc9_ || _loc3_))
                                                                                                                                          {
                                                                                                                                             addr620:
                                                                                                                                             if(_loc9_ || param2)
                                                                                                                                             {
                                                                                                                                                addr627:
                                                                                                                                                §§goto(addr580);
                                                                                                                                             }
                                                                                                                                             this.§0!F§ = this.mMightyEagleHasTouchedGround;
                                                                                                                                             §§goto(addr620);
                                                                                                                                             addr637:
                                                                                                                                          }
                                                                                                                                          addr577:
                                                                                                                                          return false;
                                                                                                                                          addr614:
                                                                                                                                          addr628:
                                                                                                                                          addr574:
                                                                                                                                       }
                                                                                                                                       §§goto(addr614);
                                                                                                                                    }
                                                                                                                                    §§goto(addr627);
                                                                                                                                 }
                                                                                                                                 §§goto(addr628);
                                                                                                                              }
                                                                                                                              §§goto(addr577);
                                                                                                                           }
                                                                                                                           §§goto(addr495);
                                                                                                                        }
                                                                                                                        §§goto(addr574);
                                                                                                                     }
                                                                                                                     §§goto(addr487);
                                                                                                                  }
                                                                                                                  §§goto(addr495);
                                                                                                               }
                                                                                                               §§goto(addr470);
                                                                                                            }
                                                                                                            §§goto(addr577);
                                                                                                         }
                                                                                                         §§goto(addr455);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr507);
                                                                                                }
                                                                                                §§goto(addr563);
                                                                                             }
                                                                                             §§goto(addr281);
                                                                                          }
                                                                                          §§goto(addr269);
                                                                                       }
                                                                                       §§goto(addr272);
                                                                                       addr276:
                                                                                    }
                                                                                    §§goto(addr350);
                                                                                 }
                                                                                 §§goto(addr318);
                                                                              }
                                                                              §§goto(addr301);
                                                                           }
                                                                           §§goto(addr361);
                                                                        }
                                                                        addr344:
                                                                        §§goto(addr344);
                                                                     }
                                                                     §§goto(addr354);
                                                                  }
                                                                  §§goto(addr318);
                                                               }
                                                               §§goto(addr455);
                                                            }
                                                            §§goto(addr353);
                                                         }
                                                         §§goto(addr363);
                                                      }
                                                      this.mMightyEagleHasTouchedGround = param1.§3J§().GetPosition().y >= -5.5;
                                                      §§goto(addr637);
                                                   }
                                                   §§goto(addr276);
                                                }
                                                §§goto(addr230);
                                                §§push(§§pop() + §§pop());
                                             }
                                             §§goto(addr223);
                                          }
                                          §§goto(addr230);
                                       }
                                       §§goto(addr206);
                                    }
                                    §§goto(addr212);
                                 }
                                 §§goto(addr192);
                              }
                              §§goto(addr230);
                           }
                           §§goto(addr161);
                        },§§goto(addr89),addr48:)
                        {
                           if(!(_loc8_ && _loc3_))
                           {
                              continue;
                           }
                           §§goto(addr135);
                        }
                        while(true)
                        {
                           §§goto(addr48);
                        }
                     }
                     §§goto(addr138);
                     §§push(Number(3));
                  }
               }
            }
         }
         §§goto(addr135);
      }
      
      private function §]!A§() : void
      {
         var _loc20_:Boolean = false;
         var _loc21_:Boolean = true;
         var _loc1_:§9#§ = null;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:§`!_§ = null;
         var _loc7_:* = 0;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:* = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:* = NaN;
         loop0:
         while(this.§8!8§.length > 0)
         {
            _loc1_ = this.§8!8§.shift();
            if(_loc21_ || _loc1_)
            {
               §§push(_loc1_.§1!H§);
               if(_loc21_ || _loc1_)
               {
                  §§push(Number(§§pop()));
                  if(_loc21_)
                  {
                     _loc2_ = §§pop();
                     if(_loc21_)
                     {
                        §§push(_loc1_.x);
                        if(_loc21_)
                        {
                           §§push(Number(§§pop()));
                           if(_loc21_ || _loc2_)
                           {
                              _loc3_ = §§pop();
                              if(!(_loc20_ && _loc3_))
                              {
                                 loop1:
                                 while(true)
                                 {
                                    §§push(_loc1_.y);
                                    if(!_loc20_)
                                    {
                                       §§push(Number(§§pop()));
                                       if(!_loc20_)
                                       {
                                          _loc4_ = §§pop();
                                          loop2:
                                          while(true)
                                          {
                                             §§push(_loc1_.damage);
                                             if(_loc20_ && _loc1_)
                                             {
                                                continue;
                                             }
                                             §§push(Number(§§pop()));
                                             if(!_loc20_)
                                             {
                                                continue;
                                             }
                                             addr696:
                                             loop64:
                                             while(true)
                                             {
                                                §§push(Number(§§pop()));
                                                loop65:
                                                while(_loc21_ || _loc2_)
                                                {
                                                   _loc17_ = §§pop();
                                                   loop66:
                                                   while(!_loc20_)
                                                   {
                                                      loop59:
                                                      while(true)
                                                      {
                                                         §§push(this.§#!3§);
                                                         if(!(_loc20_ && _loc3_))
                                                         {
                                                            §§push(§§pop().particles);
                                                            if(_loc21_)
                                                            {
                                                               §§push(§9!B§.§53§);
                                                               if(_loc21_)
                                                               {
                                                                  §§push(§^z§.§!!B§);
                                                                  if(_loc21_ || _loc3_)
                                                                  {
                                                                     §§push(§9!B§.§5!G§);
                                                                     if(!_loc20_)
                                                                     {
                                                                        §§push(_loc3_);
                                                                        if(_loc21_)
                                                                        {
                                                                           §§push(_loc4_);
                                                                           if(_loc21_ || this)
                                                                           {
                                                                              §§push(_loc16_);
                                                                              §§push("");
                                                                              §§push(§9!B§.§!!S§);
                                                                              §§push(_loc15_);
                                                                              if(!(_loc20_ && _loc2_))
                                                                              {
                                                                                 §§push(§§pop() * Math.cos(_loc17_));
                                                                              }
                                                                              §§push(_loc15_);
                                                                              if(_loc21_)
                                                                              {
                                                                                 §§push(-§§pop());
                                                                                 if(_loc21_)
                                                                                 {
                                                                                    addr659:
                                                                                    §§push(§§pop() * Math.sin(_loc17_));
                                                                                 }
                                                                                 §§pop().§#Z§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),20,0);
                                                                                 if(_loc20_)
                                                                                 {
                                                                                    continue loop0;
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc7_);
                                                                                    if(_loc21_ || _loc1_)
                                                                                    {
                                                                                       §§push(5);
                                                                                       if(_loc21_)
                                                                                       {
                                                                                          if(_loc21_ || this)
                                                                                          {
                                                                                             §§push(§§pop() + §§pop());
                                                                                             if(!_loc21_)
                                                                                             {
                                                                                                continue loop65;
                                                                                             }
                                                                                             if(!_loc20_)
                                                                                             {
                                                                                                §§push(int(§§pop()));
                                                                                                if(!(_loc20_ && this))
                                                                                                {
                                                                                                   addr568:
                                                                                                   if(!(_loc20_ && _loc3_))
                                                                                                   {
                                                                                                      _loc7_ = §§pop();
                                                                                                      if(_loc20_ && _loc1_)
                                                                                                      {
                                                                                                         continue loop0;
                                                                                                      }
                                                                                                      if(!(_loc21_ || _loc2_))
                                                                                                      {
                                                                                                         continue loop66;
                                                                                                      }
                                                                                                      if(_loc21_)
                                                                                                      {
                                                                                                         if(!_loc20_)
                                                                                                         {
                                                                                                            break loop2;
                                                                                                         }
                                                                                                         addr801:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(30);
                                                                                                         }
                                                                                                      }
                                                                                                      loop61:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc7_);
                                                                                                         if(!_loc20_)
                                                                                                         {
                                                                                                            §§push(180);
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop() / Math.PI);
                                                                                                               if(_loc20_)
                                                                                                               {
                                                                                                                  break;
                                                                                                                  addr680:
                                                                                                               }
                                                                                                               §§push(§§pop() / §§pop());
                                                                                                               while(!(_loc20_ && _loc3_))
                                                                                                               {
                                                                                                                  if(!_loc20_)
                                                                                                                  {
                                                                                                                     addr689:
                                                                                                                     if(!(_loc21_ || _loc1_))
                                                                                                                     {
                                                                                                                        break loop1;
                                                                                                                     }
                                                                                                                     continue loop64;
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     _loc15_ = §§pop();
                                                                                                                     break loop66;
                                                                                                                  }
                                                                                                               }
                                                                                                               continue loop61;
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                               if(!(_loc20_ && _loc1_))
                                                                                                               {
                                                                                                                  §§push(Number(§§pop()));
                                                                                                               }
                                                                                                               continue loop61;
                                                                                                            }
                                                                                                            addr674:
                                                                                                            addr721:
                                                                                                         }
                                                                                                         addr803:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(150);
                                                                                                            addr804:
                                                                                                            while(§§pop() < §§pop())
                                                                                                            {
                                                                                                               §§push(0.75);
                                                                                                               break loop1;
                                                                                                            }
                                                                                                            continue loop0;
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      _loc7_ = §§pop();
                                                                                                      addr765:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         addr802:
                                                                                                         while(true)
                                                                                                         {
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr568);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr803);
                                                                                             }
                                                                                             §§goto(addr680);
                                                                                          }
                                                                                          §§goto(addr674);
                                                                                       }
                                                                                       §§goto(addr804);
                                                                                    }
                                                                                    §§goto(addr568);
                                                                                 }
                                                                              }
                                                                              §§goto(addr659);
                                                                           }
                                                                           else
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§pop().§#Z§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),600,"",§9!B§.§!!S§,0,0,0,0,1,20,true);
                                                                              }
                                                                              addr789:
                                                                           }
                                                                           §§goto(addr801);
                                                                        }
                                                                        else
                                                                        {
                                                                           while(true)
                                                                           {
                                                                           }
                                                                           addr788:
                                                                        }
                                                                        §§goto(addr789);
                                                                     }
                                                                     else
                                                                     {
                                                                        while(true)
                                                                        {
                                                                        }
                                                                        addr787:
                                                                     }
                                                                     §§goto(addr788);
                                                                  }
                                                                  else
                                                                  {
                                                                     while(true)
                                                                     {
                                                                     }
                                                                     addr785:
                                                                  }
                                                                  §§goto(addr787);
                                                               }
                                                               else
                                                               {
                                                                  while(true)
                                                                  {
                                                                  }
                                                                  addr783:
                                                               }
                                                               §§goto(addr785);
                                                            }
                                                            else
                                                            {
                                                               while(true)
                                                               {
                                                               }
                                                               addr769:
                                                            }
                                                            §§goto(addr783);
                                                         }
                                                         else
                                                         {
                                                            while(true)
                                                            {
                                                               continue loop59;
                                                            }
                                                            addr768:
                                                         }
                                                         §§goto(addr769);
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      if(_loc21_ || _loc2_)
                                                      {
                                                         §§push(1250);
                                                         if(!(_loc20_ && _loc1_))
                                                         {
                                                            §§goto(addr721);
                                                            §§push(Math.random() * 750);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr765);
                                                      }
                                                      §§goto(addr803);
                                                   }
                                                }
                                                addr745:
                                                loop71:
                                                while(true)
                                                {
                                                   §§push(Math.random() * _loc2_);
                                                   addr749:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      if(_loc20_)
                                                      {
                                                      }
                                                      §§goto(addr753);
                                                      continue loop71;
                                                   }
                                                }
                                             }
                                          }
                                          while(true)
                                          {
                                             if(false)
                                             {
                                                §§goto(addr596);
                                             }
                                             §§goto(addr802);
                                          }
                                       }
                                       while(true)
                                       {
                                          §§goto(addr753);
                                       }
                                    }
                                    break;
                                 }
                                 while(true)
                                 {
                                    §§push(_loc2_);
                                    if(!(_loc20_ && _loc3_))
                                    {
                                       §§goto(addr745);
                                       §§push(§§pop() * §§pop());
                                    }
                                    §§goto(addr749);
                                    §§goto(addr689);
                                 }
                              }
                              §§goto(addr731);
                           }
                           §§goto(addr696);
                        }
                        §§goto(addr753);
                     }
                     §§goto(addr668);
                  }
                  §§goto(addr745);
               }
               §§goto(addr730);
            }
            §§goto(addr765);
         }
      }
      
      protected function §^T§(param1:int) : String
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
         return §9!B§.§5+§;
      }
      
      public function §3G§(param1:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:§`!_§ = null;
         var _loc3_:* = int(this.§#;§.length - 1);
         loop0:
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§#;§[_loc3_];
            if(!(_loc5_ && _loc2_))
            {
               §§push(_loc2_.§=!5§());
               loop1:
               for(; !§§pop(); loop3:
               while(true)
               {
                  if(!(_loc5_ && param1))
                  {
                     if(!§§pop())
                     {
                        §§push(_loc2_.isReadyToBeRemoved(param1));
                        for(; !(_loc5_ && _loc2_); §§push(_loc2_.§#!1§()),if(!(_loc5_ && _loc2_))
                        {
                           continue loop3;
                        })
                        {
                           if(!§§pop())
                           {
                              continue;
                           }
                           if(!_loc5_)
                           {
                              if(!_loc5_)
                              {
                                 _loc2_.§+!G§(§-C§.§&!=§);
                              }
                              §§goto(addr180);
                           }
                           §§goto(addr146);
                        }
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(!(_loc5_ && _loc2_))
                              {
                                 this.§,@§(_loc3_,false,false,false);
                              }
                              §§goto(addr230);
                           }
                           §§goto(addr181);
                           break loop1;
                        }
                        addr216:
                     }
                     break;
                  }
                  continue loop1;
                  if(_loc5_ && this)
                  {
                     continue;
                  }
                  §§goto(addr81);
               },§§goto(addr169))
               {
                  §§push(_loc2_.§?!%§());
                  loop2:
                  while(!§§pop())
                  {
                     §§push(this.§`h§(_loc2_));
                     continue loop1;
                     if(_loc5_ && param1)
                     {
                        continue;
                     }
                     if(§§pop())
                     {
                        loop9:
                        while(true)
                        {
                           if(_loc4_)
                           {
                              _loc2_.update(param1);
                              loop10:
                              while(true)
                              {
                                 if(_loc5_)
                                 {
                                    break loop2;
                                 }
                                 if(!_loc4_)
                                 {
                                    addr41:
                                    break loop1;
                                    addr41:
                                 }
                                 loop8:
                                 while(true)
                                 {
                                    §§push(_loc3_);
                                    if(_loc4_ || _loc3_)
                                    {
                                       §§push(§§pop() - 1);
                                    }
                                    _loc3_ = §§pop();
                                    if(!_loc4_)
                                    {
                                       continue loop10;
                                    }
                                    if(_loc5_)
                                    {
                                       continue loop9;
                                    }
                                    if(!_loc5_)
                                    {
                                       if(_loc4_)
                                       {
                                          if(true)
                                          {
                                             break;
                                          }
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             this.§,@§(_loc3_,false,true,true);
                                             addr116:
                                             while(true)
                                             {
                                                if(!(_loc4_ || param1))
                                                {
                                                   while(true)
                                                   {
                                                      if(!(_loc5_ && param1))
                                                      {
                                                         _loc2_.§+!G§(§-C§.§&!=§);
                                                         addr180:
                                                         while(true)
                                                         {
                                                            this.§,@§(_loc3_,false,false,false);
                                                            addr154:
                                                            while(true)
                                                            {
                                                               continue loop8;
                                                            }
                                                         }
                                                         addr180:
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            continue loop8;
                                                         }
                                                         addr198:
                                                      }
                                                   }
                                                   addr169:
                                                }
                                             }
                                          }
                                          addr146:
                                       }
                                       while(true)
                                       {
                                          continue loop8;
                                       }
                                    }
                                    §§goto(addr116);
                                 }
                                 continue loop0;
                              }
                           }
                           §§goto(addr154);
                        }
                     }
                     §§goto(addr41);
                  }
                  loop17:
                  while(true)
                  {
                     if(!(_loc5_ && _loc3_))
                     {
                        this.§1y§(_loc2_,param1);
                        §§goto(addr198);
                     }
                     addr230:
                     while(true)
                     {
                        addr181:
                        while(true)
                        {
                           §§goto(addr41);
                        }
                        continue loop17;
                     }
                  }
               }
               while(true)
               {
                  §§goto(addr216);
               }
            }
            §§goto(addr180);
         }
         if(!_loc5_)
         {
            this.§]!A§();
         }
      }
      
      private function §`!]§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§5b§ = null;
         for each(_loc1_ in this.§!@§)
         {
            if(_loc4_)
            {
               this.§#!3§.mLevelEngine.mWorld.§12§(_loc1_.§^^§);
            }
         }
      }
      
      public function §%!K§() : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§`!_§ = null;
         var _loc1_:int = 0;
         while(true)
         {
            if(_loc1_ >= this.§#;§.length)
            {
               return false;
            }
            _loc2_ = this.§#;§[_loc1_];
            if(!(_loc3_ && _loc3_))
            {
               §§push(_loc2_.explode());
               if(!_loc4_)
               {
                  break;
               }
               if(§§pop())
               {
                  if(_loc4_)
                  {
                     §§push(true);
                     break;
                  }
               }
               else
               {
                  addr73:
                  _loc1_++;
               }
               continue;
            }
            §§goto(addr73);
         }
         return §§pop();
      }
      
      public function §`h§(param1:§`!_§) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
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
                        while(true)
                        {
                           §§push(param1.§'!-§.§7i§() == §3!F§.§!!k§);
                           if(_loc3_ || this)
                           {
                              if(!_loc2_)
                              {
                                 §§push(!§§pop());
                                 if(_loc3_ || _loc2_)
                                 {
                                    §§push(Boolean(§§pop()));
                                    while(true)
                                    {
                                    }
                                    addr133:
                                 }
                                 loop4:
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    if(!_loc3_)
                                    {
                                       continue loop1;
                                    }
                                    if(!§§pop())
                                    {
                                       loop5:
                                       while(true)
                                       {
                                          loop6:
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                if(_loc3_)
                                                {
                                                   if(!_loc2_)
                                                   {
                                                      break loop4;
                                                   }
                                                   loop7:
                                                   while(true)
                                                   {
                                                      §§push(this.§#!3§.§!!"§.§4!]§(param1.§3J§().GetPosition().x,param1.§3J§().GetPosition().y));
                                                      if(_loc2_ && _loc3_)
                                                      {
                                                         break loop6;
                                                      }
                                                      if(!(_loc2_ && _loc2_))
                                                      {
                                                         break;
                                                      }
                                                      addr138:
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         continue loop7;
                                                      }
                                                   }
                                                   continue loop5;
                                                }
                                             }
                                             §§push(false);
                                             if(!_loc3_)
                                             {
                                                break;
                                             }
                                             if(!(_loc2_ && param1))
                                             {
                                                if(_loc3_ || this)
                                                {
                                                   return §§pop();
                                                }
                                                continue loop2;
                                             }
                                          }
                                          §§goto(addr95);
                                       }
                                       continue;
                                       addr86:
                                    }
                                 }
                                 if(!_loc2_)
                                 {
                                    break;
                                 }
                                 continue;
                              }
                              continue loop0;
                           }
                           §§goto(addr138);
                        }
                        §§goto(addr94);
                     }
                  }
                  §§goto(addr133);
               }
            }
         }
         addr94:
         addr95:
         return §§pop();
      }
      
      public function §,@§(param1:int, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc6_:§5b§ = null;
         var _loc7_:§]B§ = null;
         if(_loc12_ || param1)
         {
            if(param1 < 0)
            {
               if(_loc12_)
               {
                  §§goto(addr34);
               }
            }
            var _loc5_:§`!_§;
            §§push((_loc5_ = this.§#;§[param1]).§#!t§());
            if(!(_loc13_ && param2))
            {
               if(§§pop())
               {
                  if(_loc12_)
                  {
                     var _loc8_:*;
                     §§push((_loc8_ = this).§[!w§);
                     if(!(_loc13_ && param2))
                     {
                        §§push(§§pop() + 1);
                     }
                     var _loc9_:* = §§pop();
                     if(_loc12_ || param3)
                     {
                        _loc8_.§[!w§ = _loc9_;
                     }
                     if(!(_loc13_ && param1))
                     {
                        addr260:
                        if(_loc5_ == this.§#!3§.activeObject)
                        {
                           if(_loc12_ || param1)
                           {
                              addr272:
                              §§push(this.§#!3§);
                              while(true)
                              {
                                 §§pop().activeObject = null;
                                 addr276:
                                 while(true)
                                 {
                                 }
                              }
                              addr274:
                           }
                           §§goto(addr276);
                        }
                        while(true)
                        {
                           §§push(param2);
                           loop4:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 loop5:
                                 while(true)
                                 {
                                    §§push(this.§#!3§);
                                    if(!_loc12_)
                                    {
                                       break;
                                    }
                                    §§push(_loc5_.§'!-§.score);
                                    §§push(§@!6§.§-1§);
                                    §§push(true);
                                    §§push(_loc5_.§3J§().GetPosition().x);
                                    §§push(_loc5_.§3J§().GetPosition().y);
                                    if(!_loc13_)
                                    {
                                       §§push(3);
                                       if(_loc12_)
                                       {
                                          addr254:
                                          §§push(§§pop() - §§pop());
                                          §§push(§9!B§.§%!d§(_loc5_.§^r§));
                                       }
                                       §§pop().addScore(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
                                       loop6:
                                       while(true)
                                       {
                                          addr198:
                                          while(true)
                                          {
                                             §§push(param3);
                                             addr200:
                                             loop20:
                                             while(true)
                                             {
                                                if(!§§pop())
                                                {
                                                   while(true)
                                                   {
                                                      §§push(param4);
                                                      addr177:
                                                      while(true)
                                                      {
                                                         if(_loc12_ || param1)
                                                         {
                                                            if(!_loc13_)
                                                            {
                                                               break;
                                                            }
                                                            continue loop4;
                                                         }
                                                         continue loop20;
                                                      }
                                                      addr155:
                                                      if(§§pop())
                                                      {
                                                         addr197:
                                                         if(!(_loc13_ && param2))
                                                         {
                                                            this.§#q§(_loc5_);
                                                         }
                                                         while(true)
                                                         {
                                                         }
                                                         addr197:
                                                      }
                                                      addr170:
                                                      loop2:
                                                      while(true)
                                                      {
                                                         §§push(_loc5_.isTexture());
                                                         if(!_loc13_)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               while(true)
                                                               {
                                                                  if(_loc12_)
                                                                  {
                                                                     if(!(_loc13_ && param2))
                                                                     {
                                                                        break loop2;
                                                                     }
                                                                     addr201:
                                                                     while(true)
                                                                     {
                                                                        if(_loc12_)
                                                                        {
                                                                           this.addDestructionParticles(_loc5_,this.§#!3§.particles);
                                                                           continue loop6;
                                                                        }
                                                                        continue loop5;
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr197);
                                                                  }
                                                               }
                                                               addr161:
                                                            }
                                                            break;
                                                         }
                                                         §§goto(addr177);
                                                         §§goto(addr197);
                                                      }
                                                      while(true)
                                                      {
                                                         this.§`z§(_loc5_.sprite);
                                                         do
                                                         {
                                                            this.§6!F§(_loc5_);
                                                         }
                                                         while(_loc13_ && param2);
                                                         
                                                         if(!(_loc13_ && param1))
                                                         {
                                                            if(_loc13_ && param2)
                                                            {
                                                               continue loop6;
                                                            }
                                                            if(_loc12_ || this)
                                                            {
                                                               if(true)
                                                               {
                                                                  break;
                                                               }
                                                               §§goto(addr155);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr276);
                                                            }
                                                         }
                                                         §§goto(addr161);
                                                      }
                                                      _loc8_ = 0;
                                                      _loc9_ = this.§!@§;
                                                      loop13:
                                                      while(true)
                                                      {
                                                         §§push(§§hasnext(_loc9_,_loc8_));
                                                         if(!(_loc13_ && param3))
                                                         {
                                                            if(!§§pop())
                                                            {
                                                               if(!(_loc13_ && param1))
                                                               {
                                                                  if(!(_loc13_ && param2))
                                                                  {
                                                                     if(!(_loc13_ && param2))
                                                                     {
                                                                        _loc8_ = 0;
                                                                        if(!(_loc13_ && param1))
                                                                        {
                                                                           _loc9_ = this.§+t§;
                                                                           while(true)
                                                                           {
                                                                              §§push(§§hasnext(_loc9_,_loc8_));
                                                                              break loop13;
                                                                           }
                                                                           addr461:
                                                                           if(_loc12_ || this)
                                                                           {
                                                                              _loc5_.dispose();
                                                                              addr469:
                                                                           }
                                                                           _loc5_ = null;
                                                                           if(!_loc13_)
                                                                           {
                                                                              this.§#;§[param1] = null;
                                                                           }
                                                                           do
                                                                           {
                                                                              this.§#;§.splice(param1,1);
                                                                           }
                                                                           while(!(_loc12_ || param1));
                                                                           
                                                                           return;
                                                                           addr460:
                                                                           addr458:
                                                                        }
                                                                        §§goto(addr461);
                                                                     }
                                                                     §§goto(addr469);
                                                                  }
                                                                  §§goto(addr461);
                                                               }
                                                               §§goto(addr460);
                                                            }
                                                            else
                                                            {
                                                               _loc6_ = §§nextvalue(_loc8_,_loc9_);
                                                               if(_loc6_.index1 >= param1)
                                                               {
                                                                  if(_loc12_ || param3)
                                                                  {
                                                                     var _loc10_:*;
                                                                     var _loc11_:* = (_loc10_ = _loc6_).index1 - 1;
                                                                     if(_loc12_ || param3)
                                                                     {
                                                                        _loc10_.index1 = _loc11_;
                                                                     }
                                                                     if(!(_loc13_ && param1))
                                                                     {
                                                                        addr326:
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
                                                                     if(!_loc13_)
                                                                     {
                                                                        _loc10_.index2 = _loc11_;
                                                                     }
                                                                  }
                                                                  continue;
                                                               }
                                                               §§goto(addr326);
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
                                                            _loc7_ = §§nextvalue(_loc8_,_loc9_);
                                                            §§push(_loc7_.id1);
                                                            if(_loc12_)
                                                            {
                                                               §§push(param1);
                                                               if(_loc12_ || param1)
                                                               {
                                                                  if(§§pop() == §§pop())
                                                                  {
                                                                     if(!(_loc13_ && param1))
                                                                     {
                                                                        _loc7_.§;Z§ = true;
                                                                        if(!_loc13_)
                                                                        {
                                                                           addr422:
                                                                           if(_loc7_.id1 < param1)
                                                                           {
                                                                              continue;
                                                                           }
                                                                           if(!(_loc12_ || this))
                                                                           {
                                                                              continue;
                                                                           }
                                                                        }
                                                                     }
                                                                     §§push((_loc10_ = _loc7_).id1);
                                                                     if(_loc12_ || this)
                                                                     {
                                                                        §§push(§§pop() - 1);
                                                                     }
                                                                     _loc11_ = §§pop();
                                                                     if(_loc12_ || param2)
                                                                     {
                                                                        _loc10_.id1 = _loc11_;
                                                                     }
                                                                     continue;
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr422);
                                                         }
                                                      }
                                                   }
                                                   addr175:
                                                }
                                                §§goto(addr201);
                                             }
                                             continue loop6;
                                          }
                                       }
                                    }
                                    §§goto(addr254);
                                 }
                                 §§goto(addr274);
                              }
                              §§goto(addr198);
                           }
                        }
                     }
                     §§goto(addr272);
                  }
                  §§goto(addr276);
               }
               else
               {
                  §§push(_loc5_.§#!1§());
                  if(!_loc13_)
                  {
                     if(§§pop())
                     {
                        if(_loc12_ || this)
                        {
                           §§push((_loc8_ = this).§3!I§);
                           if(!(_loc13_ && param2))
                           {
                              §§push(§§pop() - 1);
                           }
                           _loc9_ = §§pop();
                           if(!_loc13_)
                           {
                              _loc8_.§3!I§ = _loc9_;
                           }
                           if(!_loc13_)
                           {
                              §§goto(addr260);
                           }
                           §§goto(addr170);
                        }
                        §§goto(addr276);
                     }
                     §§goto(addr260);
                  }
               }
            }
            §§goto(addr200);
         }
         addr34:
      }
      
      protected function addDestructionParticles(param1:§`!_§, param2:§^z§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            param1.addDestructionParticles(param2);
         }
      }
      
      private function §`z§(param1:Sprite) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            §§push(this.§8!@§);
            if(_loc2_)
            {
               if(!§§pop().contains(param1))
               {
                  loop0:
                  while(true)
                  {
                     §§push(this.§=!D§);
                     if(_loc2_ || this)
                     {
                        if(!§§pop().contains(param1))
                        {
                           loop1:
                           while(true)
                           {
                              §§push(this.§`!l§);
                              if(!_loc3_)
                              {
                                 if(!§§pop().contains(param1))
                                 {
                                    while(true)
                                    {
                                       §§push(this.§'!v§);
                                       if(_loc2_)
                                       {
                                          if(!§§pop().contains(param1))
                                          {
                                             return;
                                          }
                                          if(!(_loc3_ && param1))
                                          {
                                             if(!(_loc3_ && this))
                                             {
                                                if(!_loc3_)
                                                {
                                                   addr57:
                                                   this.§'!v§.removeChild(param1);
                                                   addr59:
                                                   if(_loc2_)
                                                   {
                                                      return;
                                                   }
                                                   addr103:
                                                   if(_loc2_)
                                                   {
                                                      return;
                                                   }
                                                }
                                                else
                                                {
                                                   addr138:
                                                   this.§=!D§.removeChild(param1);
                                                   addr136:
                                                }
                                                return;
                                             }
                                             if(_loc3_ && _loc2_)
                                             {
                                                §§push(this.§`!l§);
                                                break loop1;
                                             }
                                             addr99:
                                             if(_loc2_ || this)
                                             {
                                                if(!_loc2_)
                                                {
                                                   break loop0;
                                                }
                                                continue;
                                             }
                                             if(!_loc3_)
                                             {
                                                if(_loc3_)
                                                {
                                                   break;
                                                }
                                                continue loop1;
                                             }
                                             continue loop0;
                                          }
                                          §§goto(addr59);
                                       }
                                       §§goto(addr57);
                                    }
                                    return;
                                    addr155:
                                 }
                                 §§goto(addr99);
                              }
                              break;
                           }
                           §§pop().removeChild(param1);
                           §§goto(addr103);
                        }
                        §§goto(addr136);
                     }
                     §§goto(addr138);
                  }
                  addr151:
                  §§push(this.§8!@§);
               }
               §§goto(addr151);
            }
            §§pop().removeChild(param1);
            §§goto(addr155);
         }
         §§goto(addr151);
      }
      
      protected function §#q§(param1:§`!_§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(param1.§1!+§());
            loop0:
            while(true)
            {
               §§push(§§pop().toUpperCase() == "WHITE_EGG");
               loop1:
               while(true)
               {
                  if(!§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        addr123:
                        loop5:
                        while(true)
                        {
                           §§push(param1.§65§());
                           if(_loc2_ || param1)
                           {
                              if(_loc3_)
                              {
                                 continue;
                              }
                              if(_loc3_ && _loc3_)
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
                              if(_loc3_ && _loc3_)
                              {
                                 break;
                              }
                              addr114:
                              if(_loc2_)
                              {
                                 continue loop0;
                              }
                              continue loop5;
                           }
                           addr19:
                           return;
                        }
                     }
                  }
                  §§goto(addr71);
               }
            }
         }
         §§goto(addr123);
      }
      
      public function §^Q§(param1:Object, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            this.§,@§(this.§#;§.indexOf(param1),param2,param3,param4);
         }
      }
      
      public function §7!P§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §§push(this.§1!,§);
            loop0:
            while(true)
            {
               §§push(param1);
               if(!(_loc3_ && this))
               {
                  §§push(-§§pop());
               }
               while(true)
               {
                  §§pop().x = §§pop();
                  §§push(param2);
                  addr54:
                  continue loop0;
                  if(!_loc3_)
                  {
                     §§push(-§§pop());
                  }
                  if(!_loc3_)
                  {
                     §§pop().y = §§pop();
                     if(_loc4_ || _loc3_)
                     {
                        return;
                        addr68:
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr68);
      }
      
      public function isPigsAlive(param1:Boolean = false) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§`!_§ = null;
         var _loc2_:int = 0;
         loop0:
         while(_loc2_ < this.§#;§.length)
         {
            _loc3_ = this.§#;§[_loc2_] as §`!_§;
            if(!_loc4_)
            {
               §§push(Boolean(_loc3_));
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
                           §§push(§§pop());
                           loop8:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 loop9:
                                 while(true)
                                 {
                                    §§pop();
                                    addr221:
                                    loop27:
                                    while(true)
                                    {
                                       §§push(_loc3_.§&!>§);
                                       loop28:
                                       while(true)
                                       {
                                          §§push(0);
                                          loop29:
                                          while(true)
                                          {
                                             §§push(§§pop() > §§pop());
                                             if(!(_loc4_ && this))
                                             {
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      loop11:
                                                      while(true)
                                                      {
                                                         if(!_loc4_)
                                                         {
                                                            if(!(_loc4_ && param1))
                                                            {
                                                               §§push(param1);
                                                               loop12:
                                                               while(true)
                                                               {
                                                                  §§push(!§§pop());
                                                                  loop13:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop());
                                                                     loop14:
                                                                     while(_loc5_)
                                                                     {
                                                                        if(!§§pop())
                                                                        {
                                                                           loop15:
                                                                           while(true)
                                                                           {
                                                                              §§pop();
                                                                              loop16:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc3_.§7![§);
                                                                                 loop17:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop().mTryToBlink);
                                                                                    addr113:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(0);
                                                                                       addr114:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!_loc5_)
                                                                                          {
                                                                                             continue loop29;
                                                                                          }
                                                                                          §§push(§§pop() <= §§pop());
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             continue loop15;
                                                                                          }
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             continue loop12;
                                                                                          }
                                                                                          §§push(§§pop());
                                                                                          if(_loc4_ && _loc3_)
                                                                                          {
                                                                                             continue loop14;
                                                                                          }
                                                                                          if(_loc4_ && _loc2_)
                                                                                          {
                                                                                             continue loop2;
                                                                                          }
                                                                                          if(§§pop())
                                                                                          {
                                                                                             continue loop15;
                                                                                          }
                                                                                       }
                                                                                       continue loop29;
                                                                                    }
                                                                                    loop22:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc3_.§7![§);
                                                                                       if(!(_loc5_ || _loc2_))
                                                                                       {
                                                                                          continue loop17;
                                                                                       }
                                                                                       §§push(§§pop().mTryToScream);
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          if(!(_loc5_ || this))
                                                                                          {
                                                                                             continue loop28;
                                                                                          }
                                                                                          §§push(0);
                                                                                          if(_loc5_)
                                                                                          {
                                                                                             §§push(§§pop() <= §§pop());
                                                                                             if(!(_loc4_ && this))
                                                                                             {
                                                                                                if(!_loc5_)
                                                                                                {
                                                                                                   continue loop13;
                                                                                                }
                                                                                                if(!_loc5_)
                                                                                                {
                                                                                                   continue loop9;
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!§§pop())
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         _loc2_++;
                                                                                                         if(!_loc5_)
                                                                                                         {
                                                                                                            addr91:
                                                                                                            if(!(_loc4_ && this))
                                                                                                            {
                                                                                                               continue;
                                                                                                            }
                                                                                                            addr149:
                                                                                                            while(_loc5_ || param1)
                                                                                                            {
                                                                                                               if(!(_loc4_ && _loc2_))
                                                                                                               {
                                                                                                                  continue loop22;
                                                                                                               }
                                                                                                               continue loop11;
                                                                                                               §§goto(addr91);
                                                                                                            }
                                                                                                            continue loop16;
                                                                                                         }
                                                                                                         if(!_loc4_)
                                                                                                         {
                                                                                                            if(true)
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            continue loop22;
                                                                                                         }
                                                                                                      }
                                                                                                      continue loop0;
                                                                                                      addr35:
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(true);
                                                                                                   }
                                                                                                }
                                                                                                addr78:
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc4_)
                                                                                                {
                                                                                                   continue loop15;
                                                                                                }
                                                                                                if(_loc5_ || _loc2_)
                                                                                                {
                                                                                                   return §§pop();
                                                                                                }
                                                                                                addr227:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§pop();
                                                                                                   break loop11;
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr114);
                                                                                          }
                                                                                          §§goto(addr78);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr113);
                                                                                       }
                                                                                    }
                                                                                    continue loop28;
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr78);
                                                                     }
                                                                     continue loop8;
                                                                  }
                                                               }
                                                               addr188:
                                                            }
                                                            break;
                                                         }
                                                         continue loop27;
                                                      }
                                                      while(true)
                                                      {
                                                         §§goto(addr208);
                                                      }
                                                   }
                                                   §§goto(addr35);
                                                }
                                                addr176:
                                             }
                                             §§goto(addr188);
                                          }
                                       }
                                    }
                                 }
                              }
                              §§goto(addr176);
                           }
                        }
                        addr217:
                     }
                     §§goto(addr227);
                  }
                  while(!(_loc4_ && param1))
                  {
                     §§goto(addr217);
                  }
               }
            }
            §§goto(addr221);
         }
         return false;
      }
      
      public function §@Q§(param1:Boolean = false) : int
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:§`!_§ = null;
         var _loc2_:int = 0;
         var _loc3_:* = int(this.§#;§.length - 1);
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
               §§push(Boolean(_loc4_ = this.§#;§[_loc3_] as §`!_§));
               if(!(_loc6_ && this))
               {
                  §§push(§§pop());
                  if(!_loc6_)
                  {
                     if(§§pop())
                     {
                        if(!_loc6_)
                        {
                           §§pop();
                           if(_loc5_ || _loc3_)
                           {
                              §§push(_loc4_.§#!t§());
                              loop1:
                              while(true)
                              {
                                 §§push(Boolean(§§pop()));
                                 addr211:
                                 loop25:
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    loop11:
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          loop12:
                                          while(§§pop())
                                          {
                                             loop13:
                                             while(true)
                                             {
                                                §§push(param1);
                                                if(!_loc6_)
                                                {
                                                   if(!_loc5_)
                                                   {
                                                      continue loop25;
                                                   }
                                                   addr202:
                                                   §§push(!§§pop());
                                                   loop7:
                                                   while(true)
                                                   {
                                                      §§push(§§pop());
                                                      loop8:
                                                      while(true)
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            break loop13;
                                                         }
                                                         loop6:
                                                         while(true)
                                                         {
                                                            addr137:
                                                            while(§§pop())
                                                            {
                                                               while(true)
                                                               {
                                                                  if(_loc5_)
                                                                  {
                                                                     if(_loc5_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     continue loop13;
                                                                  }
                                                                  addr168:
                                                                  addr170:
                                                                  while(_loc6_)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc4_.§&!>§);
                                                                        addr174:
                                                                        while(true)
                                                                        {
                                                                           §§push(0);
                                                                           addr175:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop() > §§pop());
                                                                              if(_loc6_)
                                                                              {
                                                                                 break loop13;
                                                                              }
                                                                              continue loop1;
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc4_.§7![§);
                                                                     if(!(_loc6_ && _loc2_))
                                                                     {
                                                                        §§push(§§pop().mTryToScream);
                                                                        if(!(_loc6_ && param1))
                                                                        {
                                                                           if(_loc5_ || _loc2_)
                                                                           {
                                                                              §§push(0);
                                                                              if(_loc5_)
                                                                              {
                                                                                 §§push(§§pop() <= §§pop());
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    if(_loc5_)
                                                                                    {
                                                                                       if(!_loc5_)
                                                                                       {
                                                                                          break loop13;
                                                                                       }
                                                                                       if(!(_loc6_ && param1))
                                                                                       {
                                                                                          continue loop6;
                                                                                       }
                                                                                       continue loop7;
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc5_)
                                                                                       {
                                                                                          §§push(§§pop());
                                                                                          if(!_loc5_)
                                                                                          {
                                                                                             continue loop8;
                                                                                          }
                                                                                          if(!(_loc5_ || _loc3_))
                                                                                          {
                                                                                             continue loop11;
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             if(!§§pop())
                                                                                             {
                                                                                                continue loop6;
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§pop();
                                                                                                §§goto(addr168);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             §§pop();
                                                                                          }
                                                                                          addr213:
                                                                                       }
                                                                                       §§goto(addr214);
                                                                                    }
                                                                                    addr154:
                                                                                 }
                                                                                 §§goto(addr167);
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    §§goto(addr154);
                                                                                    §§push(§§pop() <= §§pop());
                                                                                 }
                                                                                 §§goto(addr175);
                                                                              }
                                                                              addr151:
                                                                           }
                                                                           §§goto(addr174);
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§goto(addr151);
                                                                        }
                                                                        addr150:
                                                                     }
                                                                     addr149:
                                                                     while(true)
                                                                     {
                                                                        §§goto(addr150);
                                                                     }
                                                                     §§goto(addr170);
                                                                  }
                                                               }
                                                               while(true)
                                                               {
                                                                  _loc2_++;
                                                                  addr143:
                                                                  while(true)
                                                                  {
                                                                     if(_loc5_)
                                                                     {
                                                                        break loop12;
                                                                     }
                                                                     addr206:
                                                                     while(true)
                                                                     {
                                                                        §§goto(addr149);
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            break loop12;
                                                         }
                                                      }
                                                   }
                                                }
                                                break;
                                             }
                                             while(true)
                                             {
                                                §§pop();
                                                §§goto(addr206);
                                             }
                                          }
                                          while(true)
                                          {
                                             §§push(_loc3_);
                                             if(!_loc6_)
                                             {
                                                §§push(§§pop() - 1);
                                             }
                                             _loc3_ = §§pop();
                                             if(_loc5_ || _loc2_)
                                             {
                                                if(!(_loc6_ && this))
                                                {
                                                   if(true)
                                                   {
                                                      break;
                                                   }
                                                   §§goto(addr170);
                                                }
                                                §§goto(addr138);
                                             }
                                             §§goto(addr143);
                                          }
                                          continue loop0;
                                          addr195:
                                       }
                                       §§goto(addr213);
                                    }
                                 }
                              }
                           }
                           §§goto(addr142);
                        }
                     }
                     §§goto(addr211);
                  }
                  §§goto(addr166);
               }
               §§goto(addr137);
            }
            break;
         }
         return §§pop();
      }
      
      public function § !u§() : int
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§`!_§ = null;
         var _loc1_:int = 0;
         var _loc3_:int = 0;
         loop0:
         for each(_loc2_ in this.§#;§)
         {
            if(!_loc6_)
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
                                 §§push(_loc2_.§-!F§());
                                 loop6:
                                 while(true)
                                 {
                                    §§push(Boolean(§§pop()));
                                    if(!(_loc6_ && this))
                                    {
                                       if(_loc6_)
                                       {
                                          break;
                                       }
                                       §§push(§§pop());
                                       if(_loc5_ || _loc3_)
                                       {
                                          if(§§pop())
                                          {
                                          }
                                          loop8:
                                          while(§§pop())
                                          {
                                             if(_loc5_ || _loc2_)
                                             {
                                                if(!_loc6_)
                                                {
                                                   if(!(_loc5_ || _loc2_))
                                                   {
                                                      continue loop4;
                                                   }
                                                   _loc1_++;
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                      §§push(_loc2_.§^!U§());
                                                      if(_loc5_)
                                                      {
                                                         addr42:
                                                         if(_loc6_ && _loc1_)
                                                         {
                                                            continue;
                                                         }
                                                         §§push(Boolean(§§pop()));
                                                      }
                                                      if(!_loc6_)
                                                      {
                                                         if(_loc5_)
                                                         {
                                                            continue loop8;
                                                         }
                                                         continue loop1;
                                                      }
                                                      continue loop6;
                                                   }
                                                   addr118:
                                                }
                                             }
                                             if(true)
                                             {
                                                break;
                                             }
                                             continue loop5;
                                          }
                                          continue loop0;
                                          addr64:
                                       }
                                       continue loop2;
                                    }
                                    §§goto(addr117);
                                 }
                                 continue loop3;
                              }
                           }
                        }
                     }
                     §§goto(addr64);
                  }
               }
            }
            §§goto(addr118);
         }
         return _loc1_;
      }
      
      public function §;!e§() : int
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§`!_§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§#;§)
         {
            if(!_loc6_)
            {
               §§push(Boolean(_loc2_));
               if(!(_loc6_ && _loc2_))
               {
                  if(§§pop())
                  {
                     if(!_loc6_)
                     {
                        §§pop();
                        addr85:
                        if(!_loc6_)
                        {
                           §§push(_loc2_.isTexture());
                           if(!_loc6_)
                           {
                              addr76:
                              §§push(Boolean(§§pop()));
                           }
                        }
                        _loc1_++;
                        continue;
                     }
                     §§goto(addr76);
                  }
                  if(!§§pop())
                  {
                     continue;
                  }
                  if(_loc6_ && this)
                  {
                     continue;
                  }
                  §§goto(addr85);
               }
               §§goto(addr76);
            }
            §§goto(addr85);
         }
         return _loc1_;
      }
      
      public function makePigsSmile(param1:Number = 1) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§`!_§ = null;
         var _loc2_:int = this.§#;§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§#;§[_loc2_];
            if(_loc5_)
            {
               §§push(Boolean(_loc3_));
               if(_loc5_ || _loc2_)
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
               §§goto(addr142);
            }
            §§goto(addr52);
         }
      }
      
      public function §6j§() : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§`!_§ = null;
         var _loc1_:* = int(this.§#;§.length - 1);
         loop0:
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§#;§[_loc1_] as §`!_§;
            if(!_loc3_)
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
                              §§push(_loc2_.§#!1§());
                              while(true)
                              {
                                 if(_loc3_ && this)
                                 {
                                    break;
                                    addr135:
                                 }
                                 §§push(Boolean(§§pop()));
                                 while(!_loc3_)
                                 {
                                 }
                                 continue loop1;
                                 addr90:
                                 if(!(_loc4_ || this))
                                 {
                                    continue;
                                 }
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       do
                                       {
                                          §§push(_loc1_);
                                          if(!(_loc3_ && this))
                                          {
                                             §§push(§§pop() - 1);
                                          }
                                          _loc1_ = §§pop();
                                          if(!(_loc4_ || this))
                                          {
                                             continue;
                                          }
                                          if(!(_loc3_ && _loc2_))
                                          {
                                             while(false)
                                             {
                                                loop10:
                                                while(true)
                                                {
                                                   §§push(_loc2_.§&!>§ > 0);
                                                   if(_loc4_ || _loc3_)
                                                   {
                                                      if(_loc3_)
                                                      {
                                                         break;
                                                      }
                                                      §§goto(addr90);
                                                   }
                                                   else
                                                   {
                                                      loop13:
                                                      while(true)
                                                      {
                                                         if(!_loc4_)
                                                         {
                                                            while(true)
                                                            {
                                                               §§pop();
                                                               addr143:
                                                               while(true)
                                                               {
                                                                  continue loop10;
                                                               }
                                                               continue loop13;
                                                            }
                                                            addr142:
                                                         }
                                                         return §§pop();
                                                      }
                                                      addr107:
                                                   }
                                                }
                                                §§goto(addr135);
                                             }
                                             continue loop0;
                                             addr74:
                                          }
                                          addr99:
                                          if(!(_loc3_ && _loc1_))
                                          {
                                             §§goto(addr107);
                                             §§push(true);
                                          }
                                          §§goto(addr143);
                                       }
                                       while(_loc4_);
                                       
                                       continue loop4;
                                    }
                                    §§goto(addr99);
                                 }
                              }
                              continue loop3;
                           }
                        }
                     }
                     while(true)
                     {
                        §§push(§§pop());
                        if(_loc3_)
                        {
                           break;
                        }
                        if(§§pop())
                        {
                           §§goto(addr142);
                        }
                        §§goto(addr97);
                     }
                  }
               }
            }
            §§goto(addr74);
         }
         return false;
      }
      
      public function isWorldAtSleep() : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§`!_§ = null;
         var _loc1_:* = int(this.§#;§.length - 1);
         loop0:
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§#;§[_loc1_] as §`!_§;
            if(!(_loc4_ && this))
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
                        while(true)
                        {
                           §§pop();
                           addr286:
                           while(true)
                           {
                              §§push(_loc2_.§&!>§);
                              addr264:
                              while(true)
                              {
                                 §§push(0);
                                 addr265:
                                 while(true)
                                 {
                                    §§push(§§pop() > §§pop());
                                    addr266:
                                    while(true)
                                    {
                                       §§push(Boolean(§§pop()));
                                    }
                                 }
                              }
                           }
                        }
                        addr285:
                     }
                     while(true)
                     {
                        loop5:
                        while(true)
                        {
                           §§push(§§pop());
                           loop6:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 continue loop1;
                              }
                              loop26:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    loop27:
                                    while(true)
                                    {
                                       §§push(_loc2_.§4!g§());
                                       if(!(_loc4_ && _loc1_))
                                       {
                                          while(true)
                                          {
                                             if(_loc3_ || _loc1_)
                                             {
                                                §§push(Boolean(§§pop()));
                                             }
                                             else
                                             {
                                                §§goto(addr285);
                                             }
                                             §§goto(addr286);
                                          }
                                          addr232:
                                       }
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          loop25:
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                loop10:
                                                while(!(_loc4_ && this))
                                                {
                                                   §§pop();
                                                   loop11:
                                                   while(true)
                                                   {
                                                      §§push(_loc2_.§^!R§());
                                                      loop12:
                                                      while(true)
                                                      {
                                                         §§push(!§§pop());
                                                         if(_loc3_)
                                                         {
                                                            if(!_loc3_)
                                                            {
                                                               continue loop10;
                                                            }
                                                            loop13:
                                                            while(true)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  if(_loc3_ || _loc3_)
                                                                  {
                                                                     if(_loc3_ || _loc1_)
                                                                     {
                                                                        §§push(false);
                                                                        break loop12;
                                                                     }
                                                                     continue loop27;
                                                                  }
                                                                  loop14:
                                                                  while(true)
                                                                  {
                                                                     if(_loc3_ || this)
                                                                     {
                                                                     }
                                                                     break loop13;
                                                                     addr82:
                                                                     if(_loc4_ && this)
                                                                     {
                                                                        continue;
                                                                     }
                                                                     if(_loc4_)
                                                                     {
                                                                        continue loop11;
                                                                     }
                                                                     §§push(false);
                                                                     loop22:
                                                                     while(true)
                                                                     {
                                                                        if(_loc3_ || this)
                                                                        {
                                                                           addr99:
                                                                           if(_loc3_ || _loc2_)
                                                                           {
                                                                              continue loop12;
                                                                           }
                                                                           addr147:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop());
                                                                              if(_loc4_ && _loc3_)
                                                                              {
                                                                                 continue loop25;
                                                                              }
                                                                              if(_loc4_)
                                                                              {
                                                                                 continue loop6;
                                                                              }
                                                                              if(_loc4_)
                                                                              {
                                                                                 continue loop2;
                                                                              }
                                                                              if(§§pop())
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    if(!(_loc3_ || _loc2_))
                                                                                    {
                                                                                       continue loop1;
                                                                                    }
                                                                                    §§pop();
                                                                                    loop18:
                                                                                    while(true)
                                                                                    {
                                                                                       loop19:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc2_.§&!>§);
                                                                                          if(!(_loc4_ && _loc3_))
                                                                                          {
                                                                                             §§push(0);
                                                                                             if(_loc3_ || _loc3_)
                                                                                             {
                                                                                                §§push(§§pop() > §§pop());
                                                                                                if(!_loc4_)
                                                                                                {
                                                                                                   loop20:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!§§pop())
                                                                                                      {
                                                                                                         loop21:
                                                                                                         do
                                                                                                         {
                                                                                                            §§push(_loc1_);
                                                                                                            if(_loc3_)
                                                                                                            {
                                                                                                               §§push(§§pop() - 1);
                                                                                                            }
                                                                                                            if(_loc3_)
                                                                                                            {
                                                                                                               _loc1_ = §§pop();
                                                                                                               if(!_loc3_)
                                                                                                               {
                                                                                                                  continue;
                                                                                                               }
                                                                                                               if(!_loc4_)
                                                                                                               {
                                                                                                                  if(_loc3_)
                                                                                                                  {
                                                                                                                     if(true)
                                                                                                                     {
                                                                                                                        break loop20;
                                                                                                                     }
                                                                                                                     continue loop19;
                                                                                                                  }
                                                                                                                  addr279:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc2_.§]!g§);
                                                                                                                  }
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  §§goto(addr82);
                                                                                                               }
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop() == §>r§.§&"§);
                                                                                                               if(_loc3_)
                                                                                                               {
                                                                                                                  §§push(!§§pop());
                                                                                                                  if(!(_loc4_ && this))
                                                                                                                  {
                                                                                                                     continue loop26;
                                                                                                                  }
                                                                                                                  continue loop10;
                                                                                                               }
                                                                                                               §§goto(addr232);
                                                                                                               continue loop21;
                                                                                                            }
                                                                                                         }
                                                                                                         while(!_loc4_);
                                                                                                         
                                                                                                         continue loop18;
                                                                                                         addr43:
                                                                                                      }
                                                                                                      §§goto(addr82);
                                                                                                   }
                                                                                                   continue loop0;
                                                                                                   addr80:
                                                                                                }
                                                                                                continue loop22;
                                                                                             }
                                                                                             §§goto(addr265);
                                                                                          }
                                                                                          break loop14;
                                                                                       }
                                                                                       continue loop22;
                                                                                    }
                                                                                    continue loop22;
                                                                                 }
                                                                                 continue;
                                                                                 addr160:
                                                                              }
                                                                              §§goto(addr80);
                                                                           }
                                                                           continue loop25;
                                                                        }
                                                                        §§goto(addr160);
                                                                     }
                                                                  }
                                                                  §§goto(addr264);
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(_loc2_.§#!1§());
                                                                  if(!(_loc4_ && _loc1_))
                                                                  {
                                                                     §§push(Boolean(§§pop()));
                                                                  }
                                                                  §§goto(addr147);
                                                               }
                                                            }
                                                            §§goto(addr286);
                                                         }
                                                         break;
                                                      }
                                                      if(_loc3_)
                                                      {
                                                         return §§pop();
                                                      }
                                                      §§goto(addr266);
                                                   }
                                                }
                                                continue loop5;
                                             }
                                             §§goto(addr177);
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr43);
                              }
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr286);
         }
         return true;
      }
      
      public function §4O§(param1:Boolean = false) : §`!_§
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc5_:* = 0;
         var _loc6_:§`!_§ = null;
         if(_loc7_ || this)
         {
            if(!this.isPigsAlive())
            {
               if(!(_loc8_ && _loc2_))
               {
                  return null;
               }
            }
         }
         var _loc2_:int = this.§#;§.length;
         §§push(1);
         if(!_loc8_)
         {
            §§push(int(§§pop() + Math.random() * this.§@Q§(param1)));
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
                  if(_loc7_ || _loc2_)
                  {
                     _loc5_ = §§pop();
                     if(_loc8_)
                     {
                        break;
                     }
                     do
                     {
                        §§push(_loc5_);
                     }
                     while(_loc7_);
                     
                     continue loop1;
                     addr280:
                  }
                  while(true)
                  {
                     §§push(_loc2_);
                     if(_loc8_ && _loc3_)
                     {
                        break;
                     }
                     if(§§pop() >= §§pop())
                     {
                        if(!(_loc8_ && param1))
                        {
                           break loop2;
                        }
                     }
                     else
                     {
                        §§push(Boolean(_loc6_ = this.§#;§[_loc5_]));
                        if(_loc7_)
                        {
                           §§push(§§pop());
                           if(_loc7_ || this)
                           {
                              if(§§pop())
                              {
                                 if(_loc7_ || _loc2_)
                                 {
                                    §§pop();
                                    if(_loc7_)
                                    {
                                       §§push(_loc6_.§#!t§());
                                       loop29:
                                       while(true)
                                       {
                                          §§push(Boolean(§§pop()));
                                          addr276:
                                          loop27:
                                          while(true)
                                          {
                                             §§push(§§pop());
                                             addr277:
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
                                                         §§push(_loc6_.§&!>§);
                                                         while(true)
                                                         {
                                                            §§push(0);
                                                            addr238:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() > §§pop());
                                                            }
                                                            loop17:
                                                            while(!(_loc8_ && this))
                                                            {
                                                               §§push(0);
                                                               loop18:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() <= §§pop());
                                                                  if(!_loc8_)
                                                                  {
                                                                     §§push(§§pop());
                                                                     if(!_loc8_)
                                                                     {
                                                                        if(!_loc7_)
                                                                        {
                                                                           continue loop28;
                                                                        }
                                                                        if(§§pop())
                                                                        {
                                                                           addr225:
                                                                           while(!(_loc8_ && this))
                                                                           {
                                                                              §§pop();
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc6_.§7![§);
                                                                                 if(_loc8_ && this)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 §§push(§§pop().mTryToScream);
                                                                                 if(_loc7_)
                                                                                 {
                                                                                    continue loop18;
                                                                                 }
                                                                                 continue loop17;
                                                                                 addr129:
                                                                                 if(_loc7_ || _loc3_)
                                                                                 {
                                                                                    addr146:
                                                                                    return _loc6_;
                                                                                    addr136:
                                                                                 }
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 continue loop17;
                                                                                 §§goto(addr233);
                                                                              }
                                                                              addr233:
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 loop11:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(param1);
                                                                                    if(_loc7_)
                                                                                    {
                                                                                       if(!_loc7_)
                                                                                       {
                                                                                          continue loop5;
                                                                                       }
                                                                                       if(_loc8_ && _loc3_)
                                                                                       {
                                                                                          continue loop27;
                                                                                       }
                                                                                       §§push(!§§pop());
                                                                                    }
                                                                                    addr254:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop());
                                                                                       addr255:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!§§pop())
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                if(!_loc8_)
                                                                                                {
                                                                                                   §§pop();
                                                                                                   while(_loc7_)
                                                                                                   {
                                                                                                      §§push(_loc6_.§7![§);
                                                                                                      addr155:
                                                                                                      if(!(_loc7_ || param1))
                                                                                                      {
                                                                                                         continue;
                                                                                                      }
                                                                                                      if(!_loc7_)
                                                                                                      {
                                                                                                         continue loop11;
                                                                                                      }
                                                                                                      loop26:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         _loc5_++;
                                                                                                         if(!(_loc8_ && this))
                                                                                                         {
                                                                                                            if(true)
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            loop24:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc4_ < _loc3_)
                                                                                                               {
                                                                                                                  continue loop26;
                                                                                                               }
                                                                                                               if(_loc7_ || this)
                                                                                                               {
                                                                                                                  addr127:
                                                                                                                  if(!_loc7_)
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        _loc4_++;
                                                                                                                        addr203:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           continue loop24;
                                                                                                                        }
                                                                                                                        §§goto(addr127);
                                                                                                                     }
                                                                                                                     addr202:
                                                                                                                  }
                                                                                                                  §§goto(addr129);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  while(!(_loc8_ && _loc2_))
                                                                                                                  {
                                                                                                                     §§goto(addr155);
                                                                                                                     continue loop26;
                                                                                                                  }
                                                                                                                  addr148:
                                                                                                               }
                                                                                                               §§goto(addr203);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr148);
                                                                                                      }
                                                                                                      §§goto(addr280);
                                                                                                   }
                                                                                                   continue loop6;
                                                                                                }
                                                                                                continue loop29;
                                                                                             }
                                                                                             addr256:
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr200:
                                                                                             while(true)
                                                                                             {
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   §§goto(addr202);
                                                                                                }
                                                                                                §§goto(addr105);
                                                                                             }
                                                                                             §§goto(addr136);
                                                                                             addr200:
                                                                                          }
                                                                                          §§goto(addr207);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 continue loop27;
                                                                              }
                                                                              §§goto(addr105);
                                                                           }
                                                                           addr225:
                                                                           addr240:
                                                                        }
                                                                        §§goto(addr200);
                                                                     }
                                                                     §§goto(addr255);
                                                                  }
                                                                  §§goto(addr225);
                                                               }
                                                               continue loop28;
                                                            }
                                                         }
                                                      }
                                                   }
                                                   addr278:
                                                }
                                                while(true)
                                                {
                                                   §§goto(addr240);
                                                }
                                             }
                                          }
                                       }
                                       addr264:
                                    }
                                    §§goto(addr146);
                                 }
                                 §§goto(addr278);
                              }
                              §§goto(addr276);
                           }
                           §§goto(addr277);
                        }
                        §§goto(addr264);
                     }
                  }
               }
               continue loop0;
            }
         }
      }
      
      public function §;!X§() : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:* = 0;
         var _loc2_:* = int(this.§#;§.length - 1);
         loop0:
         while(true)
         {
            §§push(_loc2_);
            if(_loc4_)
            {
               if(!(_loc3_ && _loc2_))
               {
                  if(!_loc3_)
                  {
                     §§push(0);
                     if(!_loc3_)
                     {
                        if(!_loc3_)
                        {
                           if(§§pop() < §§pop())
                           {
                              if(!(_loc3_ && _loc1_))
                              {
                                 if(_loc4_)
                                 {
                                    §§push(_loc1_);
                                    if(!_loc3_)
                                    {
                                       if(_loc4_ || _loc1_)
                                       {
                                          addr92:
                                          §§push(this.§#!3§.slingshot.§;!X§());
                                          if(!_loc3_)
                                          {
                                             §§push(§§pop() + §§pop());
                                             if(_loc4_)
                                             {
                                                if(!(_loc3_ && _loc3_))
                                                {
                                                   addr105:
                                                   §§push(int(§§pop()));
                                                   loop17:
                                                   while(true)
                                                   {
                                                      _loc1_ = §§pop();
                                                      addr106:
                                                      loop5:
                                                      while(_loc4_)
                                                      {
                                                         §§push(_loc1_);
                                                         if(!(_loc4_ || _loc2_))
                                                         {
                                                            continue loop17;
                                                         }
                                                         if(!_loc3_)
                                                         {
                                                            break loop0;
                                                         }
                                                         loop6:
                                                         while(true)
                                                         {
                                                            _loc2_ = §§pop();
                                                            addr120:
                                                            while(true)
                                                            {
                                                               if(_loc4_ || _loc1_)
                                                               {
                                                                  if(_loc4_ || _loc1_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  loop3:
                                                                  while(true)
                                                                  {
                                                                     if((this.§#;§[_loc2_] as §`!_§).§4!g§())
                                                                     {
                                                                        loop4:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc1_);
                                                                           addr145:
                                                                           while(true)
                                                                           {
                                                                              §§push(§'u§.§@`§.getValue());
                                                                              addr148:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop() + §§pop() * int((this.§#;§[_loc2_] as §`!_§).§]l§));
                                                                                 addr169:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(int(§§pop()));
                                                                                    addr170:
                                                                                    while(true)
                                                                                    {
                                                                                       if(!_loc3_)
                                                                                       {
                                                                                          _loc1_ = §§pop();
                                                                                          break loop5;
                                                                                       }
                                                                                       addr177:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push((this.§#;§[_loc2_] as §`!_§).§'!-§.score);
                                                                                          addr185:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop() + §§pop());
                                                                                             addr186:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(int(§§pop()));
                                                                                                continue loop3;
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              continue loop4;
                                                                           }
                                                                        }
                                                                        addr144:
                                                                     }
                                                                     addr109:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc2_);
                                                                        addr111:
                                                                        while(true)
                                                                        {
                                                                           if(!(_loc3_ && _loc3_))
                                                                           {
                                                                              §§push(§§pop() - 1);
                                                                              continue loop6;
                                                                           }
                                                                           continue loop3;
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr144);
                                                               continue loop6;
                                                            }
                                                            continue loop0;
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         §§goto(addr109);
                                                      }
                                                   }
                                                   addr105:
                                                }
                                                §§goto(addr186);
                                             }
                                             §§goto(addr169);
                                          }
                                          §§goto(addr185);
                                       }
                                       §§goto(addr145);
                                    }
                                    §§goto(addr105);
                                 }
                                 §§goto(addr120);
                              }
                              §§goto(addr106);
                           }
                           else
                           {
                              §§push(_loc1_);
                           }
                           §§goto(addr177);
                        }
                        §§goto(addr148);
                     }
                     §§goto(addr92);
                  }
                  §§goto(addr170);
               }
               §§goto(addr111);
            }
            §§goto(addr105);
         }
         return §§pop();
      }
      
      public function §]U§(param1:§`!_§, param2:§`!_§) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §§push(param1.§#!1§());
            while(true)
            {
               §§push(Boolean(§§pop()));
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
                           addr152:
                           while(true)
                           {
                              §§push(param2.§#!1§());
                              addr133:
                              while(true)
                              {
                                 §§push(Boolean(§§pop()));
                              }
                           }
                        }
                        addr151:
                     }
                     while(true)
                     {
                        loop7:
                        while(true)
                        {
                           if(!§§pop())
                           {
                              loop8:
                              while(true)
                              {
                                 §§push(param1.§"o§());
                                 if(_loc3_)
                                 {
                                    if(_loc3_ || param2)
                                    {
                                       §§push(!§§pop());
                                       loop9:
                                       while(true)
                                       {
                                          if(!_loc4_)
                                          {
                                             §§push(§§pop());
                                             if(!_loc3_)
                                             {
                                                continue loop2;
                                             }
                                             if(!§§pop())
                                             {
                                                loop10:
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      if(_loc4_)
                                                      {
                                                         if(_loc3_)
                                                         {
                                                            if(!(_loc3_ || param1))
                                                            {
                                                               addr136:
                                                               §§push(true);
                                                               break loop8;
                                                            }
                                                            addr19:
                                                            §§push(false);
                                                            if(_loc4_ && param2)
                                                            {
                                                               break;
                                                            }
                                                            if(_loc3_)
                                                            {
                                                               continue loop9;
                                                            }
                                                            while(true)
                                                            {
                                                               if(!_loc4_)
                                                               {
                                                                  continue loop10;
                                                               }
                                                               addr128:
                                                               addr128:
                                                               addr128:
                                                               while(true)
                                                               {
                                                                  §§pop();
                                                               }
                                                            }
                                                            addr55:
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(param2.§"o§());
                                                            if(!_loc4_)
                                                            {
                                                               if(!_loc3_)
                                                               {
                                                                  continue loop7;
                                                               }
                                                               §§push(!§§pop());
                                                            }
                                                            §§goto(addr55);
                                                            §§goto(addr128);
                                                         }
                                                         continue;
                                                      }
                                                      if(_loc3_ || _loc3_)
                                                      {
                                                         §§push(true);
                                                         break;
                                                      }
                                                      if(_loc4_ && param2)
                                                      {
                                                         break loop9;
                                                      }
                                                      while(true)
                                                      {
                                                         continue loop8;
                                                      }
                                                   }
                                                   §§goto(addr19);
                                                }
                                                if(_loc3_)
                                                {
                                                   return §§pop();
                                                }
                                                §§goto(addr133);
                                                addr74:
                                             }
                                             §§goto(addr128);
                                          }
                                          else
                                          {
                                             §§goto(addr151);
                                          }
                                       }
                                       §§goto(addr152);
                                    }
                                    break;
                                 }
                                 §§goto(addr128);
                              }
                              return §§pop();
                           }
                           §§goto(addr136);
                        }
                     }
                  }
               }
               if(!(_loc3_ || _loc3_))
               {
                  continue;
               }
               §§goto(addr74);
            }
         }
         §§goto(addr145);
      }
      
      public function §8!7§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.mSardineCanAdded = true;
         }
         do
         {
            this.§3!I§ = 0;
         }
         while(!(_loc2_ || _loc2_));
         
      }
      
      public function §%j§(param1:§`!_§, param2:§`!_§) : Boolean
      {
         var _loc20_:Boolean = false;
         var _loc21_:Boolean = true;
         var _loc18_:* = NaN;
         var _loc19_:* = NaN;
         if(!_loc20_)
         {
            §§push(this.mMightyEagleAdded);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  §§push(this.mSardineCanAdded);
                  if(_loc21_ || this)
                  {
                     if(!(_loc20_ && param2))
                     {
                        §§push(Boolean(§§pop()));
                        if(_loc21_)
                        {
                           if(_loc21_)
                           {
                              §§push(§§pop());
                              loop1:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    addr192:
                                    loop34:
                                    while(true)
                                    {
                                       §§pop();
                                       loop26:
                                       while(true)
                                       {
                                          if(_loc21_)
                                          {
                                             §§push(this.mMightyEagleTimer);
                                             if(_loc21_ || param1)
                                             {
                                                addr115:
                                                §§push(§§pop() == this.§,L§.MIGHTY_EAGLE_WAIT_TIME);
                                                if(_loc21_)
                                                {
                                                   while(true)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         loop3:
                                                         while(true)
                                                         {
                                                            if(_loc21_)
                                                            {
                                                               if(!(_loc20_ && param2))
                                                               {
                                                                  §§push(param1.§=!5§());
                                                                  if(!_loc20_)
                                                                  {
                                                                     if(!(_loc20_ && param1))
                                                                     {
                                                                        if(_loc21_ || param1)
                                                                        {
                                                                           if(_loc20_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           §§push(Boolean(§§pop()));
                                                                           loop4:
                                                                           while(true)
                                                                           {
                                                                              if(!_loc20_)
                                                                              {
                                                                                 §§push(§§pop());
                                                                                 if(!_loc21_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 if(_loc21_ || param1)
                                                                                 {
                                                                                    if(!§§pop())
                                                                                    {
                                                                                       loop21:
                                                                                       while(true)
                                                                                       {
                                                                                          §§pop();
                                                                                          loop22:
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc21_)
                                                                                             {
                                                                                                loop23:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(param2.§=!5§());
                                                                                                   loop24:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!_loc20_)
                                                                                                      {
                                                                                                         §§push(Boolean(§§pop()));
                                                                                                         loop25:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!_loc21_)
                                                                                                            {
                                                                                                               continue loop4;
                                                                                                            }
                                                                                                            if(_loc21_)
                                                                                                            {
                                                                                                               if(!(_loc20_ && param1))
                                                                                                               {
                                                                                                                  if(!_loc21_)
                                                                                                                  {
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(§§pop())
                                                                                                                     {
                                                                                                                        loop6:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           this.mMightyEagleTimer = 0;
                                                                                                                           loop7:
                                                                                                                           while(_loc21_)
                                                                                                                           {
                                                                                                                              loop31:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(this.§]U§(param1,param2));
                                                                                                                                 if(!(_loc21_ || param1))
                                                                                                                                 {
                                                                                                                                    addr67:
                                                                                                                                    return false;
                                                                                                                                 }
                                                                                                                                 if(!_loc20_)
                                                                                                                                 {
                                                                                                                                    if(_loc21_)
                                                                                                                                    {
                                                                                                                                       if(!_loc20_)
                                                                                                                                       {
                                                                                                                                          if(§§pop())
                                                                                                                                          {
                                                                                                                                             if(!(_loc20_ && this))
                                                                                                                                             {
                                                                                                                                                if(!_loc20_)
                                                                                                                                                {
                                                                                                                                                   if(!(_loc20_ && param1))
                                                                                                                                                   {
                                                                                                                                                      if(_loc21_ || this)
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr67);
                                                                                                                                                      }
                                                                                                                                                      continue loop26;
                                                                                                                                                   }
                                                                                                                                                   continue loop22;
                                                                                                                                                }
                                                                                                                                                continue loop7;
                                                                                                                                             }
                                                                                                                                             if(!_loc21_)
                                                                                                                                             {
                                                                                                                                                continue loop6;
                                                                                                                                             }
                                                                                                                                             if(_loc21_)
                                                                                                                                             {
                                                                                                                                                if(true)
                                                                                                                                                {
                                                                                                                                                   break;
                                                                                                                                                }
                                                                                                                                                continue loop23;
                                                                                                                                             }
                                                                                                                                             if(_loc21_ || param2)
                                                                                                                                             {
                                                                                                                                                loop15:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(param2.§?!%§());
                                                                                                                                                   if(_loc21_)
                                                                                                                                                   {
                                                                                                                                                      break;
                                                                                                                                                   }
                                                                                                                                                   addr242:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§pop();
                                                                                                                                                      loop29:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(param1.§#!t§());
                                                                                                                                                         addr203:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(Boolean(§§pop()));
                                                                                                                                                            addr204:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(!_loc20_)
                                                                                                                                                               {
                                                                                                                                                                  loop9:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(§§pop())
                                                                                                                                                                     {
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(!(_loc21_ || param1))
                                                                                                                                                                           {
                                                                                                                                                                              continue loop29;
                                                                                                                                                                           }
                                                                                                                                                                           §§push(param1);
                                                                                                                                                                           §§push(param1.§]l§);
                                                                                                                                                                           if(!_loc20_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() * 2);
                                                                                                                                                                           }
                                                                                                                                                                           §§pop().applyDamage(§§pop(),true,true,true,false);
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc21_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(true);
                                                                                                                                                                                 break loop9;
                                                                                                                                                                              }
                                                                                                                                                                              addr286:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(param1.§?!%§());
                                                                                                                                                                                 addr288:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(Boolean(§§pop()));
                                                                                                                                                                                    loop17:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop());
                                                                                                                                                                                       addr290:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!§§pop())
                                                                                                                                                                                          {
                                                                                                                                                                                             loop11:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§pop();
                                                                                                                                                                                                addr292:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(param2.§#!t§());
                                                                                                                                                                                                   addr258:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc20_ && param1)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue loop17;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§push(Boolean(§§pop()));
                                                                                                                                                                                                   }
                                                                                                                                                                                                   continue loop11;
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             addr291:
                                                                                                                                                                                          }
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr267:
                                                                                                                                                                                             addr282:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(§§pop())
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!_loc20_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(param2);
                                                                                                                                                                                                      §§push(param2.§]l§);
                                                                                                                                                                                                      if(!_loc20_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop() * 2);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§pop().applyDamage(§§pop(),true,true,true,false);
                                                                                                                                                                                                      break;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   break;
                                                                                                                                                                                                }
                                                                                                                                                                                                continue loop15;
                                                                                                                                                                                             }
                                                                                                                                                                                             break loop3;
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        addr208:
                                                                                                                                                                     }
                                                                                                                                                                     else
                                                                                                                                                                     {
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop31;
                                                                                                                                                                        }
                                                                                                                                                                        addr166:
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  addr198:
                                                                                                                                                                  return §§pop();
                                                                                                                                                                  addr206:
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr291);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                if(!_loc20_)
                                                                                                                                                {
                                                                                                                                                   §§push(Boolean(§§pop()));
                                                                                                                                                   loop18:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop());
                                                                                                                                                      addr239:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(_loc21_)
                                                                                                                                                         {
                                                                                                                                                            if(!§§pop())
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr242);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr206);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr290);
                                                                                                                                                         continue loop18;
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   addr238:
                                                                                                                                                }
                                                                                                                                                §§goto(addr267);
                                                                                                                                             }
                                                                                                                                             §§goto(addr292);
                                                                                                                                          }
                                                                                                                                          break;
                                                                                                                                       }
                                                                                                                                       continue loop21;
                                                                                                                                    }
                                                                                                                                    continue loop24;
                                                                                                                                 }
                                                                                                                                 continue loop25;
                                                                                                                              }
                                                                                                                              var _loc3_:Number = 10;
                                                                                                                              §§push(param1.§[0§(param2.§1!+§()));
                                                                                                                              if(_loc21_ || param1)
                                                                                                                              {
                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                              }
                                                                                                                              var _loc4_:* = §§pop();
                                                                                                                              §§push(param1.§;!4§(param2.§1!+§()));
                                                                                                                              if(_loc21_ || param1)
                                                                                                                              {
                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                              }
                                                                                                                              var _loc5_:* = §§pop();
                                                                                                                              §§push(param2.§[0§(param1.§1!+§()));
                                                                                                                              if(_loc21_ || this)
                                                                                                                              {
                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                              }
                                                                                                                              var _loc6_:* = §§pop();
                                                                                                                              §§push(param2.§;!4§(param1.§1!+§()));
                                                                                                                              if(_loc21_)
                                                                                                                              {
                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                              }
                                                                                                                              var _loc7_:* = §§pop();
                                                                                                                              §§push(param1.§3J§().GetMass());
                                                                                                                              if(!(_loc20_ && param1))
                                                                                                                              {
                                                                                                                                 §§push(param1.§3J§());
                                                                                                                                 if(_loc21_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop().GetLinearVelocity().x);
                                                                                                                                    if(_loc21_ || _loc3_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                       if(_loc21_ || param2)
                                                                                                                                       {
                                                                                                                                          addr376:
                                                                                                                                          §§push(param2.§3J§().GetMass());
                                                                                                                                          if(_loc21_)
                                                                                                                                          {
                                                                                                                                             addr384:
                                                                                                                                             §§push(§§pop() - §§pop() * param2.§3J§().GetLinearVelocity().x);
                                                                                                                                             if(!_loc21_)
                                                                                                                                             {
                                                                                                                                             }
                                                                                                                                             var _loc8_:* = §§pop();
                                                                                                                                             §§push(param1.§3J§().GetMass());
                                                                                                                                             if(_loc21_)
                                                                                                                                             {
                                                                                                                                                §§push(param1.§3J§());
                                                                                                                                                if(!_loc20_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop().GetLinearVelocity().y);
                                                                                                                                                   if(_loc21_ || this)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                      if(!(_loc20_ && param1))
                                                                                                                                                      {
                                                                                                                                                         addr417:
                                                                                                                                                         §§push(param2.§3J§().GetMass());
                                                                                                                                                         if(_loc21_ || param1)
                                                                                                                                                         {
                                                                                                                                                            addr425:
                                                                                                                                                            §§push(§§pop() * param2.§3J§().GetLinearVelocity().y);
                                                                                                                                                         }
                                                                                                                                                         §§push(§§pop() - §§pop());
                                                                                                                                                         if(!_loc20_)
                                                                                                                                                         {
                                                                                                                                                            addr433:
                                                                                                                                                            §§push(Number(§§pop()));
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
                                                                                                                                                            if(!(_loc20_ && param2))
                                                                                                                                                            {
                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         var _loc11_:* = §§pop();
                                                                                                                                                         §§push(_loc6_);
                                                                                                                                                         if(!(_loc20_ && this))
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() * _loc10_);
                                                                                                                                                            if(!(_loc20_ && this))
                                                                                                                                                            {
                                                                                                                                                               addr481:
                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                            }
                                                                                                                                                            var _loc12_:* = §§pop();
                                                                                                                                                            var _loc13_:Number = Math.max(0,param1.§&!>§);
                                                                                                                                                            var _loc14_:Number = Math.max(0,param2.§&!>§);
                                                                                                                                                            §§push(param1.applyDamage(_loc12_,true,param2.§#!1§(),_loc14_ == param2.§]l§));
                                                                                                                                                            if(!(_loc20_ && _loc3_))
                                                                                                                                                            {
                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                            }
                                                                                                                                                            var _loc15_:* = §§pop();
                                                                                                                                                            §§push(param2.applyDamage(_loc11_,true,param1.§#!1§(),_loc13_ == param1.§]l§));
                                                                                                                                                            if(_loc21_ || _loc3_)
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
                                                                                                                                                                  if(!(_loc20_ && param2))
                                                                                                                                                                  {
                                                                                                                                                                     §-8§.log("--- NEW COLLISION ---");
                                                                                                                                                                     if(_loc21_ || this)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§-8§);
                                                                                                                                                                        §§push("Mat Dam Factor1 = ");
                                                                                                                                                                        if(!(_loc20_ && _loc3_))
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc4_);
                                                                                                                                                                           if(_loc21_ || this)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                                                                              if(_loc21_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(" Mat Dam Factor2 = ");
                                                                                                                                                                                 if(!_loc20_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                                                                    if(_loc21_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc6_);
                                                                                                                                                                                       if(_loc21_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                                                                          if(_loc21_ || param2)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(" Mat Vel Factor1 = ");
                                                                                                                                                                                             if(!(_loc20_ && param2))
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                                                                if(!_loc20_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc5_);
                                                                                                                                                                                                   if(!(_loc20_ && _loc3_))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                                                                      if(_loc20_ && param1)
                                                                                                                                                                                                      {
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr1338:
                                                                                                                                                                                                      §§pop().log(§§pop() + _loc7_);
                                                                                                                                                                                                      addr1339:
                                                                                                                                                                                                      §§push(§-8§);
                                                                                                                                                                                                      §§push("Object1: ");
                                                                                                                                                                                                      if(!_loc20_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop() + param1.§^r§);
                                                                                                                                                                                                         if(!_loc20_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(" force1 = ");
                                                                                                                                                                                                            if(!_loc20_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                                                                               if(!_loc20_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(_loc11_);
                                                                                                                                                                                                                  if(_loc21_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                                                                     if(!_loc20_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr1218:
                                                                                                                                                                                                                        §§push(" obj health1 = ");
                                                                                                                                                                                                                        if(!_loc20_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr1241:
                                                                                                                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                                                                                                                           if(!_loc20_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr1224:
                                                                                                                                                                                                                              §§push(_loc13_);
                                                                                                                                                                                                                              if(!(_loc20_ && param2))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                 if(_loc20_ && param2)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 addr1251:
                                                                                                                                                                                                                                 §§pop().log(§§pop());
                                                                                                                                                                                                                                 addr1252:
                                                                                                                                                                                                                                 §§push(§-8§);
                                                                                                                                                                                                                                 §§push("Object2: ");
                                                                                                                                                                                                                                 if(!(_loc20_ && _loc3_))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(§§pop() + param2.§^r§);
                                                                                                                                                                                                                                    if(!(_loc20_ && this))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(" force2 = ");
                                                                                                                                                                                                                                       if(!_loc20_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                          if(!_loc20_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(_loc12_);
                                                                                                                                                                                                                                             if(_loc21_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                if(_loc21_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr1159:
                                                                                                                                                                                                                                                   §§push(" obj health2 = ");
                                                                                                                                                                                                                                                   if(_loc21_ || this)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                      if(_loc21_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(_loc14_);
                                                                                                                                                                                                                                                         if(_loc21_ || _loc3_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                            if(!_loc20_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               addr1182:
                                                                                                                                                                                                                                                               §§push(§§pop() + " new health2 = ");
                                                                                                                                                                                                                                                               if(_loc21_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  addr1186:
                                                                                                                                                                                                                                                                  §§push(§§pop() + _loc16_);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr1186);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr1182);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§pop().log(§§pop());
                                                                                                                                                                                                                                                addr1188:
                                                                                                                                                                                                                                                if(!(_loc20_ && param2))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr1122:
                                                                                                                                                                                                                                                   §§push(_loc15_ <= 0);
                                                                                                                                                                                                                                                   if(_loc15_ <= 0)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      addr1125:
                                                                                                                                                                                                                                                      §§pop();
                                                                                                                                                                                                                                                      addr1126:
                                                                                                                                                                                                                                                      §§push(_loc12_);
                                                                                                                                                                                                                                                      if(!(_loc20_ && _loc3_))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         addr1076:
                                                                                                                                                                                                                                                         §§push(§§pop() != 0);
                                                                                                                                                                                                                                                         if(_loc21_ || this)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            addr1085:
                                                                                                                                                                                                                                                            if(§§pop())
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(_loc21_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  addr1103:
                                                                                                                                                                                                                                                                  §§push(_loc12_);
                                                                                                                                                                                                                                                                  if(!_loc20_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     addr1097:
                                                                                                                                                                                                                                                                     §§push(Number((_loc18_ = Number((§§pop() - _loc13_) / _loc12_)) * _loc7_));
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  if((_loc18_ = §§pop()) > 1)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     addr1106:
                                                                                                                                                                                                                                                                     if(_loc21_ || this)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        addr1115:
                                                                                                                                                                                                                                                                        _loc18_ = Number(1);
                                                                                                                                                                                                                                                                        addr1114:
                                                                                                                                                                                                                                                                        if(_loc21_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           addr1035:
                                                                                                                                                                                                                                                                           if(_loc17_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              addr1036:
                                                                                                                                                                                                                                                                              §§push(§-8§);
                                                                                                                                                                                                                                                                              §§push(param1.§^r§ + " is killed. Speed Multiplier for ");
                                                                                                                                                                                                                                                                              if(_loc21_ || _loc3_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(§§pop() + param2.§^r§);
                                                                                                                                                                                                                                                                                 if(_loc21_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    addr1053:
                                                                                                                                                                                                                                                                                    §§push(§§pop() + " is ");
                                                                                                                                                                                                                                                                                    if(!(_loc20_ && this))
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push(§§pop() + _loc18_);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§pop().log(§§pop());
                                                                                                                                                                                                                                                                                 addr1065:
                                                                                                                                                                                                                                                                                 §§push(param2);
                                                                                                                                                                                                                                                                                 §§push(§§findproperty(b2Vec2));
                                                                                                                                                                                                                                                                                 §§push(param2.§3J§().GetLinearVelocity().x);
                                                                                                                                                                                                                                                                                 if(!_loc20_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(_loc18_);
                                                                                                                                                                                                                                                                                    if(!(_loc20_ && param2))
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       addr1015:
                                                                                                                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                       §§push(param2.§3J§().GetLinearVelocity().y);
                                                                                                                                                                                                                                                                                       if(_loc21_ || this)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          addr1026:
                                                                                                                                                                                                                                                                                          §§push(§§pop() * _loc18_);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§pop().§?l§(new §§pop().b2Vec2(§§pop(),§§pop()));
                                                                                                                                                                                                                                                                                       addr1030:
                                                                                                                                                                                                                                                                                       if(!_loc20_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          addr971:
                                                                                                                                                                                                                                                                                          §§push(_loc16_);
                                                                                                                                                                                                                                                                                          if(!(_loc20_ && param1))
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             addr979:
                                                                                                                                                                                                                                                                                             §§push(0);
                                                                                                                                                                                                                                                                                             if(_loc21_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                addr982:
                                                                                                                                                                                                                                                                                                §§push(§§pop() <= §§pop());
                                                                                                                                                                                                                                                                                                if(!_loc20_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(!_loc20_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      addr987:
                                                                                                                                                                                                                                                                                                      if(§§pop())
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         addr988:
                                                                                                                                                                                                                                                                                                         if(!(_loc20_ && param2))
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§pop();
                                                                                                                                                                                                                                                                                                            addr996:
                                                                                                                                                                                                                                                                                                            §§push(_loc11_);
                                                                                                                                                                                                                                                                                                            if(!_loc20_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               if(_loc21_ || param1)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  if(_loc21_ || _loc3_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     addr784:
                                                                                                                                                                                                                                                                                                                     §§push(§§pop() == 0);
                                                                                                                                                                                                                                                                                                                     if(!(_loc20_ && this))
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        if(_loc21_ || param2)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           addr800:
                                                                                                                                                                                                                                                                                                                           §§push(!§§pop());
                                                                                                                                                                                                                                                                                                                           if(_loc21_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              addr802:
                                                                                                                                                                                                                                                                                                                              if(§§pop())
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 if(!(_loc20_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    if(!(_loc20_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       §§push(_loc11_);
                                                                                                                                                                                                                                                                                                                                       if(_loc21_)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          §§push(_loc14_);
                                                                                                                                                                                                                                                                                                                                          if(!_loc20_)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             if(!_loc20_)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                                if(_loc21_ || param1)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   if(!(_loc20_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      if(!(_loc20_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         §§push(_loc11_);
                                                                                                                                                                                                                                                                                                                                                         if(_loc21_ || this)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            if(_loc21_)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               if(!(_loc20_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  addr866:
                                                                                                                                                                                                                                                                                                                                                                  §§push(Number(§§pop() / §§pop()));
                                                                                                                                                                                                                                                                                                                                                                  if(_loc21_)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     addr869:
                                                                                                                                                                                                                                                                                                                                                                     §§push(§§pop());
                                                                                                                                                                                                                                                                                                                                                                     if(_loc21_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        addr877:
                                                                                                                                                                                                                                                                                                                                                                        _loc19_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                                        addr878:
                                                                                                                                                                                                                                                                                                                                                                        §§push(_loc5_);
                                                                                                                                                                                                                                                                                                                                                                        if(!(_loc20_ && this))
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           addr886:
                                                                                                                                                                                                                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                                           if(!(_loc20_ && param2))
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              if(!_loc20_)
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                                 if(!(_loc20_ && param2))
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    addr904:
                                                                                                                                                                                                                                                                                                                                                                                    if(_loc21_)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       if(!(_loc20_ && param2))
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          addr914:
                                                                                                                                                                                                                                                                                                                                                                                          §§push(§§pop());
                                                                                                                                                                                                                                                                                                                                                                                          if(!(_loc20_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             if(!(_loc20_ && this))
                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                _loc19_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                if(!(_loc20_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                   if(_loc21_)
                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                      addr939:
                                                                                                                                                                                                                                                                                                                                                                                                      if(§§pop() > 1)
                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                         if(_loc21_ || param1)
                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                            if(_loc21_ || param1)
                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                               §§push(1);
                                                                                                                                                                                                                                                                                                                                                                                                               if(!(_loc20_ && param2))
                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                  addr963:
                                                                                                                                                                                                                                                                                                                                                                                                                  _loc19_ = Number(§§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                  if(!_loc20_)
                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                     if(!_loc20_)
                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                        addr716:
                                                                                                                                                                                                                                                                                                                                                                                                                        §§push(_loc17_);
                                                                                                                                                                                                                                                                                                                                                                                                                        if(!_loc20_)
                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                           addr718:
                                                                                                                                                                                                                                                                                                                                                                                                                           if(§§pop())
                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                              addr719:
                                                                                                                                                                                                                                                                                                                                                                                                                              if(_loc21_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                                 §§push(§-8§);
                                                                                                                                                                                                                                                                                                                                                                                                                                 §§push(param2.§^r§ + " is killed. Speed Multiplier for ");
                                                                                                                                                                                                                                                                                                                                                                                                                                 if(!(_loc20_ && this))
                                                                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                                                                    §§push(§§pop() + param1.§^r§);
                                                                                                                                                                                                                                                                                                                                                                                                                                    if(_loc21_ || this)
                                                                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                                                                       addr748:
                                                                                                                                                                                                                                                                                                                                                                                                                                       §§push(§§pop() + " is ");
                                                                                                                                                                                                                                                                                                                                                                                                                                       if(!_loc20_)
                                                                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                                                                          §§push(§§pop() + _loc19_);
                                                                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                                                                    §§pop().log(§§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                    addr755:
                                                                                                                                                                                                                                                                                                                                                                                                                                    if(!(_loc20_ && this))
                                                                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                                                                       if(!_loc20_)
                                                                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                                                                          addr678:
                                                                                                                                                                                                                                                                                                                                                                                                                                          §§push(param1);
                                                                                                                                                                                                                                                                                                                                                                                                                                          §§push(§§findproperty(b2Vec2));
                                                                                                                                                                                                                                                                                                                                                                                                                                          §§push(param1.§3J§().GetLinearVelocity().x);
                                                                                                                                                                                                                                                                                                                                                                                                                                          if(_loc21_ || this)
                                                                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                                                                             §§push(_loc19_);
                                                                                                                                                                                                                                                                                                                                                                                                                                             if(!(_loc20_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                                                                addr701:
                                                                                                                                                                                                                                                                                                                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                §§push(param1.§3J§().GetLinearVelocity().y);
                                                                                                                                                                                                                                                                                                                                                                                                                                                if(_loc21_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                                                                   §§push(§§pop() * _loc19_);
                                                                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                                                                             §§pop().§?l§(new §§pop().b2Vec2(§§pop(),§§pop()));
                                                                                                                                                                                                                                                                                                                                                                                                                                             addr711:
                                                                                                                                                                                                                                                                                                                                                                                                                                             if(_loc21_)
                                                                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                                                                addr596:
                                                                                                                                                                                                                                                                                                                                                                                                                                                §§push(_loc15_);
                                                                                                                                                                                                                                                                                                                                                                                                                                                if(_loc21_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                                                                   if(!_loc20_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                                                                      if(_loc21_ || this)
                                                                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                                                                         addr613:
                                                                                                                                                                                                                                                                                                                                                                                                                                                         §§push(0);
                                                                                                                                                                                                                                                                                                                                                                                                                                                         if(_loc21_ || param2)
                                                                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                                                                            if(_loc21_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                                                                               if(_loc21_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  §§push(§§pop() <= §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  if(_loc21_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     if(_loc21_ || param1)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        if(!(_loc20_ && param2))
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           §§push(§§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           if(!(_loc20_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              if(_loc21_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 if(§§pop())
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    addr657:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    if(!(_loc20_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       if(_loc21_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          §§push(_loc16_);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          if(!_loc20_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             if(_loc21_ || param1)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                §§push(0);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                if(!(_loc20_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   if(!_loc20_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      if(_loc21_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         §§push(§§pop() <= §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         if(_loc20_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            §§goto(addr657);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         §§goto(addr590);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1122);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   §§goto(addr784);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                §§goto(addr613);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr963);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr596);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr755);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr711);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 addr590:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 return §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr1122);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr987);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr800);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr716);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr657);
                                                                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                                                                               §§goto(addr1076);
                                                                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                                                                            §§goto(addr979);
                                                                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                                                                         §§goto(addr939);
                                                                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1115);
                                                                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                                                                   §§goto(addr866);
                                                                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                                                                §§goto(addr878);
                                                                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr719);
                                                                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr701);
                                                                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr1106);
                                                                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr996);
                                                                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr748);
                                                                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr963);
                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr678);
                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr784);
                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr1115);
                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr1030);
                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                               §§goto(addr1114);
                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                            §§goto(addr1065);
                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                         §§goto(addr963);
                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                      §§goto(addr716);
                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                   §§goto(addr1097);
                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                §§goto(addr963);
                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr1097);
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr1103);
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr1122);
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr1097);
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr963);
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr1097);
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr904);
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr914);
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr963);
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            §§goto(addr1097);
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         §§goto(addr886);
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1097);
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   §§goto(addr1103);
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                §§goto(addr904);
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             §§goto(addr1097);
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          §§goto(addr877);
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       §§goto(addr904);
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    §§goto(addr1036);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§goto(addr963);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§goto(addr596);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§goto(addr982);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§goto(addr1125);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr988);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr1103);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr971);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr869);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr1076);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr802);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr1076);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr1035);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr1103);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr1097);
                                                                                                                                                                                                                                                                                          addr1032:
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr1188);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr1026);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr1015);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr1053);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr1065);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr1126);
                                                                                                                                                                                                                                                                        addr1113:
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr1339);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr1035);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr1115);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr971);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr1122);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr1097);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr1085);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr1252);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr1186);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr1159);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1182);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1186);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              addr1250:
                                                                                                                                                                                                                              §§goto(addr1251);
                                                                                                                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§push(§§pop() + " new health1 = ");
                                                                                                                                                                                                                           if(_loc21_ || param2)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr1251);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1241);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§push(_loc15_);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1250);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1224);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1241);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1218);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1251);
                                                                                                                                                                                                      addr1337:
                                                                                                                                                                                                      addr1336:
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1337);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§push(" Mat Vel Factor2 = ");
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1338);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1336);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                                                                 if(_loc20_ && _loc3_)
                                                                                                                                                                                 {
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1338);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1032);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1113);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1122);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr718);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr481);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr433);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr425);
                                                                                                                                                }
                                                                                                                                                §§goto(addr417);
                                                                                                                                             }
                                                                                                                                             §§goto(addr433);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr384);
                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                    }
                                                                                                                                    §§goto(addr384);
                                                                                                                                 }
                                                                                                                                 §§goto(addr376);
                                                                                                                              }
                                                                                                                              §§goto(addr384);
                                                                                                                           }
                                                                                                                           continue loop3;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr24);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr204);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§goto(addr115);
                                                                                                            }
                                                                                                         }
                                                                                                         continue loop0;
                                                                                                      }
                                                                                                      continue loop34;
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr282);
                                                                                          }
                                                                                       }
                                                                                       addr162:
                                                                                    }
                                                                                    §§goto(addr93);
                                                                                 }
                                                                                 §§goto(addr239);
                                                                              }
                                                                              §§goto(addr258);
                                                                           }
                                                                           continue loop1;
                                                                        }
                                                                        §§goto(addr238);
                                                                     }
                                                                     §§goto(addr203);
                                                                  }
                                                                  §§goto(addr162);
                                                               }
                                                               §§goto(addr208);
                                                            }
                                                            §§goto(addr166);
                                                         }
                                                         return §§pop();
                                                      }
                                                      §§goto(addr24);
                                                   }
                                                   addr117:
                                                }
                                                §§goto(addr198);
                                             }
                                             §§goto(addr295);
                                          }
                                          §§goto(addr227);
                                       }
                                    }
                                    addr192:
                                 }
                                 §§goto(addr117);
                              }
                           }
                           §§goto(addr242);
                        }
                        §§goto(addr192);
                     }
                     §§goto(addr288);
                  }
                  §§goto(addr192);
               }
            }
         }
         §§goto(addr286);
      }
      
      public function §4!l§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§`!_§ = null;
         var _loc1_:* = int(this.§#;§.length - 1);
         loop0:
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§#;§[_loc1_] as §`!_§;
            if(!(_loc3_ && this))
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
                           addr131:
                           while(true)
                           {
                              addr81:
                              while(true)
                              {
                                 §§push(_loc2_.§#!t§());
                                 if(_loc4_)
                                 {
                                    continue loop1;
                                 }
                                 addr94:
                                 if(!_loc4_)
                                 {
                                    break;
                                 }
                                 if(!(_loc4_ || _loc1_))
                                 {
                                    continue loop2;
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
                              while(true)
                              {
                                 this.§,@§(_loc1_,true,true,true);
                              }
                              addr117:
                           }
                           loop7:
                           while(true)
                           {
                              addr44:
                              while(true)
                              {
                                 §§push(_loc1_);
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    §§push(§§pop() - 1);
                                 }
                                 _loc1_ = §§pop();
                                 if(!(_loc3_ && _loc1_))
                                 {
                                    break;
                                 }
                                 continue loop7;
                              }
                              if(_loc4_ || _loc1_)
                              {
                                 if(true)
                                 {
                                    break loop6;
                                 }
                                 §§goto(addr81);
                              }
                              §§goto(addr131);
                           }
                        }
                        §§goto(addr44);
                     }
                     continue loop0;
                  }
               }
            }
            §§goto(addr117);
         }
      }
      
      public function §1%§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§`!_§ = null;
         var _loc1_:* = int(this.§#;§.length - 1);
         loop0:
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§#;§[_loc1_] as §`!_§;
            if(!_loc3_)
            {
               §§push(_loc2_ == null);
               while(true)
               {
                  §§push(!§§pop());
                  if(!_loc3_)
                  {
                     if(!§§pop())
                     {
                        loop2:
                        while(true)
                        {
                           if(§§pop())
                           {
                              loop3:
                              while(!(_loc3_ && _loc2_))
                              {
                                 this.§,@§(_loc1_,true,true,true);
                                 loop4:
                                 while(true)
                                 {
                                    addr39:
                                    while(true)
                                    {
                                       §§push(_loc1_);
                                       if(_loc4_)
                                       {
                                          §§push(§§pop() - 1);
                                       }
                                       _loc1_ = §§pop();
                                       if(_loc4_ || this)
                                       {
                                          if(!_loc3_)
                                          {
                                             while(false)
                                             {
                                                while(true)
                                                {
                                                   §§push(_loc2_.§65§());
                                                   if(!_loc3_)
                                                   {
                                                      §§push(Boolean(§§pop()));
                                                   }
                                                   if(!_loc3_)
                                                   {
                                                      continue loop2;
                                                   }
                                                   addr115:
                                                   addr115:
                                                   while(true)
                                                   {
                                                      §§pop();
                                                      break loop3;
                                                   }
                                                }
                                             }
                                             continue loop0;
                                             addr64:
                                          }
                                          continue loop3;
                                       }
                                       continue loop4;
                                    }
                                 }
                              }
                              while(true)
                              {
                                 §§goto(addr66);
                                 §§goto(addr115);
                              }
                              continue;
                           }
                           §§goto(addr39);
                        }
                        continue;
                        addr92:
                     }
                  }
                  §§goto(addr115);
               }
            }
            §§goto(addr64);
         }
      }
      
      public function §7!K§() : int
      {
         return this.§#;§.length;
      }
      
      public function §>V§(param1:§ y§) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc4_:§`!_§ = null;
         var _loc5_:§#4§ = null;
         var _loc6_:§0!Q§ = null;
         var _loc7_:§5b§ = null;
         var _loc2_:Number = 0;
         while(true)
         {
            §§push(_loc2_);
            if(!(_loc8_ && _loc2_))
            {
               if(§§pop() >= this.§#;§.length)
               {
                  §§push(Number(0));
                  break;
               }
               §§push((_loc4_ = this.§#;§[_loc2_]).§`!-§);
               if(_loc9_)
               {
                  if(!§§pop())
                  {
                     if(_loc8_)
                     {
                        continue;
                     }
                  }
                  else
                  {
                     addr50:
                     if(_loc4_.isGround())
                     {
                        if(!_loc9_)
                        {
                           continue;
                        }
                     }
                     else
                     {
                        (_loc5_ = new §#4§()).angle = _loc4_.§8c§();
                        if(!_loc8_)
                        {
                           _loc5_.id = _loc4_.§^r§;
                           while(true)
                           {
                              _loc5_.x = _loc4_.§3J§().GetPosition().x;
                              addr118:
                              while(!_loc8_)
                              {
                                 _loc5_.y = _loc4_.§3J§().GetPosition().y;
                              }
                           }
                        }
                        loop3:
                        while(true)
                        {
                           addr78:
                           while(true)
                           {
                              _loc5_.uniqueID = _loc4_.uniqueID;
                              continue loop3;
                           }
                        }
                     }
                  }
                  §§goto(addr126);
               }
               §§goto(addr50);
            }
            break;
         }
         var _loc3_:* = §§pop();
         if(!_loc8_)
         {
            while(_loc3_ < this.§!@§.length)
            {
               _loc7_ = this.§!@§[_loc3_];
               _loc6_ = new §0!Q§(_loc7_.type,_loc7_.index1,_loc7_.index2,_loc7_.point1,_loc7_.point2,_loc7_.§>!a§,_loc7_.§;!0§,_loc7_.lowerLimit,_loc7_.upperLimit,_loc7_.§`!I§,_loc7_.motorSpeed,_loc7_.§9c§,_loc7_.maxTorque);
               if(_loc9_ || _loc3_)
               {
                  param1.§[u§(_loc6_);
                  if(_loc8_)
                  {
                     continue;
                  }
               }
               §§push(_loc3_);
               if(!_loc8_)
               {
                  §§push(§§pop() + 1);
                  if(!(_loc8_ && this))
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
      
      public function §[S§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:int = 0;
         while(true)
         {
            if(this.§#;§.length <= _loc1_)
            {
               if(_loc2_)
               {
                  if(_loc2_ || this)
                  {
                     break;
                  }
                  addr77:
                  _loc1_++;
               }
               else
               {
                  addr66:
                  if(_loc2_)
                  {
                     continue;
                  }
               }
               continue;
               addr78:
            }
            else if(this.§#;§[_loc1_].isGround())
            {
               §§goto(addr77);
            }
            else
            {
               this.§^Q§(this.§#;§[_loc1_]);
               §§goto(addr66);
            }
            §§goto(addr77);
         }
      }
      
      public function §,Q§(param1:Point, param2:Point) : Array
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:Array = new Array();
         var _loc4_:* = Number(0);
         while(true)
         {
            §§push(_loc4_);
            if(_loc6_ || this)
            {
               if(§§pop() >= this.§#;§.length)
               {
                  if(_loc6_ || _loc3_)
                  {
                     if(!_loc5_)
                     {
                        break;
                     }
                     addr109:
                     _loc3_.push(this.§#;§[_loc4_]);
                     while(true)
                     {
                        addr61:
                        while(true)
                        {
                           §§push(_loc4_);
                           if(!(_loc5_ && _loc3_))
                           {
                              §§push(§§pop() + 1);
                              if(_loc6_ || this)
                              {
                                 addr89:
                                 §§push(Number(§§pop()));
                                 while(true)
                                 {
                                    _loc4_ = §§pop();
                                 }
                                 addr89:
                              }
                           }
                           §§goto(addr89);
                        }
                     }
                     addr115:
                  }
                  while(!_loc6_)
                  {
                     §§goto(addr115);
                  }
                  continue;
               }
               if(this.§#;§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
               {
                  §§goto(addr109);
               }
               §§goto(addr61);
            }
            §§goto(addr89);
         }
         return _loc3_;
      }
      
      public function setGroundTextureEnabled(param1:Boolean) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§9! § = param1;
            if(!(_loc4_ && _loc3_))
            {
               addr28:
               this.§@i§(param1);
            }
            var _loc2_:* = Number(0);
            while(true)
            {
               §§push(_loc2_);
               if(_loc3_)
               {
                  if(_loc3_)
                  {
                     if(§§pop() >= this.§#;§.length)
                     {
                        if(_loc3_ || param1)
                        {
                           break;
                        }
                        while(!_loc3_)
                        {
                           while(true)
                           {
                           }
                        }
                        continue;
                        addr87:
                     }
                     else if(this.§#;§[_loc2_].isTexture())
                     {
                        if(_loc3_)
                        {
                           this.§#;§[_loc2_].sprite.visible = !this.§9! §;
                        }
                        §§goto(addr109);
                     }
                     while(true)
                     {
                        §§push(_loc2_);
                     }
                  }
                  while(true)
                  {
                     §§push(§§pop() + 1);
                     if(!(_loc4_ && _loc2_))
                     {
                        §§push(Number(§§pop()));
                     }
                  }
               }
               while(true)
               {
                  _loc2_ = §§pop();
                  §§goto(addr87);
               }
            }
            return;
         }
         §§goto(addr28);
      }
      
      public function setDamageEnabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§!!M§ = param1;
         }
      }
      
      public function §1!_§() : Boolean
      {
         return this.§!!M§;
      }
      
      public function §9!x§() : int
      {
         return this.§#!z§;
      }
      
      public function §<!§() : int
      {
         return this.§[!w§;
      }
      
      public function §=!u§(param1:String) : §`!_§
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§`!_§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§#;§.length)
         {
            _loc3_ = this.§#;§[_loc2_] as §`!_§;
            if(_loc5_ || this)
            {
               if(_loc3_.uniqueID == param1)
               {
                  if(_loc5_ || _loc3_)
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
