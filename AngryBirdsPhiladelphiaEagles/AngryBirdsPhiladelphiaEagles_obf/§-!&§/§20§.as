package §-!&§
{
   import § N§.§1!A§;
   import § N§.Sprite;
   import §#e§.§`!9§;
   import §&^§.§[!7§;
   import §&o§.§2=§;
   import §&o§.§3,§;
   import §&o§.§72§;
   import §&o§.§=z§;
   import §-!<§.§5!5§;
   import §-!<§.§8R§;
   import §2G§.§+b§;
   import §2G§.§,6§;
   import §2G§.§0Z§;
   import §2G§.§5!1§;
   import §2G§.§>U§;
   import §5!G§.§>X§;
   import §8z§.Texture;
   import §9T§.§1r§;
   import §9T§.§<!!§;
   import §9T§.Tuner;
   import §9T§.§^=§;
   import §^]§.§[z§;
   import §`K§.§ L§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.Joints.b2PrismaticJoint;
   import com.rovio.Box2D.Dynamics.Joints.b2WeldJoint;
   import flash.display.BitmapData;
   import flash.display.BitmapDataChannel;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §20§
   {
       
      
      protected var §]!I§:Vector.<§3!,§>;
      
      protected var §7z§:int;
      
      public var §;§:§1r§;
      
      public var § c§:Vector.<§%0§>;
      
      protected var §2!C§:Sprite;
      
      protected var §4!O§:Sprite;
      
      private var §`5§:Sprite;
      
      private var §+!,§:Sprite;
      
      private var §!!Q§:Sprite;
      
      protected var §^E§:Vector.<Texture>;
      
      protected var §0b§:Vector.<§=z§>;
      
      protected var §9Z§:int = 1;
      
      public var mMightyEagleAdded:Boolean = false;
      
      public var mMightyEagleHasTouchedGround:Boolean = false;
      
      public var §?K§:Boolean = false;
      
      public var mSardineCanAdded:Boolean = false;
      
      public var mMightyEagleTimer:Number = 0;
      
      protected var §`D§:Boolean = false;
      
      protected var §;!0§:Number;
      
      protected var §'4§:int;
      
      protected var §0?§:Vector.<§2=§>;
      
      protected var §5i§:int = 0;
      
      private var §&!4§:int = 0;
      
      private var §?j§:int = 0;
      
      private var §1!4§:int;
      
      private var §4!2§:Boolean = true;
      
      private var §?!L§:Boolean = true;
      
      public function §20§(param1:§1r§, param2:§[z§, param3:Sprite)
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         var _loc5_:§=z§ = null;
         var _loc6_:§72§ = null;
         var _loc7_:§3!,§ = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:§3!,§ = null;
         var _loc11_:§3!,§ = null;
         if(!(_loc14_ && param3))
         {
            this.§]!I§ = new Vector.<§3!,§>();
            loop0:
            while(true)
            {
               this.§ c§ = new Vector.<§%0§>();
               this.§^E§ = new Vector.<Texture>();
               this.§;!0§ = this.Tuner.SARDINE_CAN_INITIAL_ROTATION_SPEED;
               while(true)
               {
                  this.§0?§ = new Vector.<§2=§>();
                  while(!_loc14_)
                  {
                     super();
                     this.§;§ = param1;
                     this.§7z§ = 0;
                     this.§4!O§ = param3;
                     while(true)
                     {
                        §§push(this.§4!O§);
                        addr242:
                        while(true)
                        {
                           §§pop().§!!"§ = false;
                           if(!_loc15_)
                           {
                              break;
                           }
                           this.§?!L§ = true;
                        }
                     }
                     loop6:
                     while(true)
                     {
                        this.§2!C§ = new Sprite();
                        if(_loc14_)
                        {
                           break;
                        }
                        this.§`5§ = new Sprite();
                        if(!(_loc14_ && param2))
                        {
                           this.§+!,§ = new Sprite();
                           loop7:
                           while(true)
                           {
                              this.§!!Q§ = new Sprite();
                              §§push(this.§4!O§);
                              loop8:
                              while(true)
                              {
                                 §§pop().addChild(this.§2!C§);
                                 loop9:
                                 while(true)
                                 {
                                    §§push(this.§4!O§);
                                    loop10:
                                    while(!_loc14_)
                                    {
                                       §§pop().addChild(this.§`5§);
                                       loop11:
                                       while(true)
                                       {
                                          §§push(this.§4!O§);
                                          continue loop10;
                                          addr147:
                                          loop13:
                                          while(true)
                                          {
                                             if(!(_loc14_ && param2))
                                             {
                                                if(!_loc14_)
                                                {
                                                   if(_loc14_)
                                                   {
                                                      break;
                                                      addr66:
                                                   }
                                                   loop14:
                                                   while(true)
                                                   {
                                                      §§push(this);
                                                      §§push(§>X§.§2H§(param2.theme).§0S§);
                                                      §§push(this.§;§.§9!>§.§?!G§);
                                                      if(!(_loc14_ && param1))
                                                      {
                                                         §§push(this.§;§);
                                                         if(!_loc14_)
                                                         {
                                                            §§push(§§pop().§9!>§);
                                                            if(!(_loc14_ && param2))
                                                            {
                                                               §§push(§§pop().§`!!§);
                                                               if(_loc15_ || param2)
                                                               {
                                                                  §§push(§§pop() + §§pop());
                                                                  if(!(_loc14_ && param2))
                                                                  {
                                                                     addr114:
                                                                     §§push(§§pop() / 2);
                                                                     §§push(this.§;§.§9!>§.§^!O§);
                                                                     if(_loc15_ || this)
                                                                     {
                                                                        addr125:
                                                                        §§push(§§pop() + §^=§.§8p§);
                                                                     }
                                                                     §§pop().addObject(§§pop(),§§pop(),§§pop());
                                                                     while(_loc15_)
                                                                     {
                                                                        this.§1!4§ = this.§]!I§.length;
                                                                        if(_loc15_ || param3)
                                                                        {
                                                                           continue loop14;
                                                                        }
                                                                     }
                                                                     continue loop13;
                                                                  }
                                                                  §§goto(addr114);
                                                               }
                                                               §§goto(addr125);
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr114);
                                                   }
                                                   continue loop7;
                                                }
                                                continue loop9;
                                             }
                                             continue loop11;
                                          }
                                          while(true)
                                          {
                                             if(!(_loc14_ && param3))
                                             {
                                                continue loop6;
                                             }
                                             §§push(this.§4!O§);
                                             addr179:
                                             continue loop10;
                                             if(_loc15_)
                                             {
                                                continue loop8;
                                             }
                                          }
                                          continue loop6;
                                       }
                                       continue loop8;
                                    }
                                    §§goto(addr242);
                                 }
                              }
                           }
                        }
                        while(true)
                        {
                           this.§4!2§ = true;
                           continue loop6;
                           §§goto(addr228);
                        }
                        addr228:
                     }
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr238);
      }
      
      protected function get Tuner() : Class
      {
         return Tuner;
      }
      
      public function get §<-§() : Sprite
      {
         return this.§!!Q§;
      }
      
      public function get §'T§() : Sprite
      {
         return this.§4!O§;
      }
      
      public function dispose() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:Texture = null;
         while(this.§]!I§.length > 0)
         {
            this.§`!%§(0);
         }
         loop1:
         while(true)
         {
            this.§]!I§ = null;
            loop2:
            while(true)
            {
               this.§0?§ = null;
               if(!(_loc3_ || _loc2_))
               {
                  continue loop1;
               }
               §§push(this.§4!O§);
               if(!_loc2_)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§push(this.§4!O§);
                        addr80:
                        loop4:
                        while(true)
                        {
                           §§pop().dispose();
                           this.§4!O§ = null;
                           if(!_loc2_)
                           {
                              this.§2!C§ = null;
                              this.§!!Q§ = null;
                              loop5:
                              while(_loc3_)
                              {
                                 while(true)
                                 {
                                    this.§`5§ = null;
                                    if(_loc3_ || _loc2_)
                                    {
                                       if(_loc3_)
                                       {
                                          continue;
                                       }
                                       continue loop4;
                                    }
                                    continue loop5;
                                 }
                                 return;
                              }
                              continue loop2;
                           }
                           §§goto(addr144);
                        }
                     }
                  }
                  break;
               }
               §§goto(addr80);
            }
            addr139:
            if(this.§^E§.length > 0)
            {
               _loc1_ = this.§^E§.pop();
               if(!(_loc2_ && _loc2_))
               {
                  this.§;§.textureManager.§@C§(_loc1_);
               }
               §§goto(addr139);
            }
            §§goto(addr144);
         }
      }
      
      private function §6?§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§2!C§.visible = param1;
         }
      }
      
      private function §!!0§() : void
      {
         var _loc16_:Boolean = false;
         var _loc17_:Boolean = true;
         var _loc3_:§3!,§ = null;
         var _loc4_:Rectangle = null;
         var _loc5_:* = NaN;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         var _loc8_:int = 0;
         var _loc9_:* = 0;
         var _loc10_:BitmapData = null;
         var _loc11_:BitmapData = null;
         var _loc12_:Texture = null;
         var _loc13_:§1!A§ = null;
         var _loc1_:Rectangle = null;
         var _loc2_:Vector.<§3!,§> = new Vector.<§3!,§>();
         for each(_loc3_ in this.§]!I§)
         {
            if(!_loc16_)
            {
               if(_loc3_.isTexture())
               {
                  if(!_loc16_)
                  {
                     addr74:
                     _loc2_.push(_loc3_);
                  }
                  _loc4_ = _loc3_.sprite.getBounds(this.§4!O§);
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
               continue;
            }
            §§goto(addr74);
         }
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
                     while(true)
                     {
                        §§push(_loc1_.width > 2048);
                        if(_loc17_)
                        {
                           if(!§§pop())
                           {
                              do
                              {
                                 §§pop();
                                 §§push(_loc1_.height > 2048);
                              }
                              while(_loc16_ && _loc2_);
                              
                              addr207:
                           }
                           if(!§§pop())
                           {
                              while(true)
                              {
                                 if(!_loc16_)
                                 {
                                    if(_loc17_)
                                    {
                                       §§push(int(_loc1_.width));
                                       loop6:
                                       while(true)
                                       {
                                          _loc6_ = §§pop();
                                          while(!_loc16_)
                                          {
                                             §§push(int(_loc1_.height));
                                             loop8:
                                             while(true)
                                             {
                                                _loc7_ = §§pop();
                                                addr128:
                                                while(true)
                                                {
                                                   §§push(int(_loc1_.left));
                                                   continue loop8;
                                                }
                                                continue loop6;
                                             }
                                          }
                                       }
                                       addr194:
                                    }
                                    else
                                    {
                                       _loc1_.top /= 2;
                                       addr267:
                                    }
                                    _loc1_.right /= 2;
                                    break;
                                 }
                                 break;
                                 if(!(_loc17_ || _loc3_))
                                 {
                                    continue;
                                 }
                                 §§push(int(_loc1_.top));
                                 if(!(_loc16_ && _loc1_))
                                 {
                                    if(!_loc16_)
                                    {
                                       _loc9_ = §§pop();
                                       if(false)
                                       {
                                          §§goto(addr128);
                                       }
                                       _loc10_ = new BitmapData(_loc6_,_loc7_,true,0);
                                       if(!(_loc16_ && _loc1_))
                                       {
                                          this.§?F§(_loc10_.rect,_loc10_,_loc5_);
                                       }
                                       _loc11_ = this.§<!L§(_loc2_,_loc6_,_loc7_,_loc8_,_loc9_,_loc5_);
                                       if(_loc17_)
                                       {
                                          _loc10_.copyChannel(_loc11_,_loc11_.rect,new Point(0,0),BitmapDataChannel.ALPHA,BitmapDataChannel.ALPHA);
                                       }
                                       _loc12_ = this.§;§.textureManager.§'b§(_loc10_);
                                       if(_loc17_)
                                       {
                                          this.§^E§.push(_loc12_);
                                       }
                                       (_loc13_ = new §1!A§(_loc12_)).x = _loc8_ / _loc5_;
                                       if(!_loc16_)
                                       {
                                          _loc13_.y = _loc9_ / _loc5_;
                                          _loc13_.scaleX = 1 / _loc5_;
                                          _loc13_.scaleY = 1 / _loc5_;
                                          this.§2!C§.addChild(_loc13_);
                                          addr353:
                                          addr394:
                                          addr388:
                                          if(!_loc16_)
                                          {
                                             if(_loc17_)
                                             {
                                                if(!_loc16_)
                                                {
                                                   _loc11_.dispose();
                                                   if(_loc17_)
                                                   {
                                                      §§goto(addr351);
                                                   }
                                                   §§goto(addr353);
                                                }
                                                §§goto(addr394);
                                             }
                                             §§goto(addr388);
                                          }
                                          addr381:
                                          §§goto(addr381);
                                       }
                                       §§goto(addr351);
                                    }
                                    §§goto(addr194);
                                 }
                                 §§goto(addr132);
                              }
                              _loc1_.bottom /= 2;
                              §§push(_loc5_);
                              if(!(_loc16_ && _loc1_))
                              {
                                 §§push(§§pop() / 2);
                                 if(_loc17_)
                                 {
                                    if(!(_loc17_ || _loc1_))
                                    {
                                       break;
                                    }
                                    §§push(Number(§§pop()));
                                 }
                              }
                              _loc5_ = §§pop();
                              if(!_loc16_)
                              {
                                 continue;
                              }
                              continue loop1;
                           }
                           _loc1_.left /= 2;
                           §§goto(addr267);
                        }
                        §§goto(addr207);
                     }
                  }
               }
            }
         }
         addr351:
         if(false)
         {
            §§goto(addr353);
         }
      }
      
      private function §<!L§(param1:Vector.<§3!,§>, param2:int, param3:int, param4:int, param5:int, param6:Number) : BitmapData
      {
         var _loc16_:Boolean = true;
         var _loc17_:Boolean = false;
         var _loc7_:§3!,§ = null;
         var _loc11_:§+b§ = null;
         var _loc12_:Array = null;
         var _loc13_:Rectangle = null;
         var _loc8_:BitmapData = new BitmapData(param2,param3,true,0);
         var _loc9_:BitmapData = new BitmapData(1,1,true,4294967295);
         var _loc10_:Matrix = new Matrix();
         loop0:
         for each(_loc7_ in param1)
         {
            _loc12_ = (_loc11_ = _loc7_.§+!?§.shape).§`!#§();
            _loc13_ = new Rectangle(_loc12_[0].x / §1r§.§[M§ * param6,_loc12_[0].y / §1r§.§[M§ * param6,(_loc12_[1].x - _loc12_[0].x) / §1r§.§[M§ * param6,(_loc12_[1].y - _loc12_[0].y) / §1r§.§[M§ * param6);
            _loc10_.identity();
            _loc10_.scale(_loc13_.width,_loc13_.height);
            while(true)
            {
               _loc10_.translate(-_loc13_.width / 2,-_loc13_.height / 2);
               loop2:
               while(true)
               {
                  _loc10_.rotate((360 - _loc7_.§'!I§()) / 180 * Math.PI);
                  while(true)
                  {
                     continue loop2;
                     addr165:
                     _loc8_.draw(_loc9_,_loc10_);
                     if(!_loc17_)
                     {
                        if(false)
                        {
                           continue loop2;
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
         if(_loc16_ || param3)
         {
            _loc9_.dispose();
         }
         return _loc8_;
      }
      
      private function §?F§(param1:Rectangle, param2:BitmapData, param3:Number) : void
      {
         var _loc16_:Boolean = true;
         var _loc17_:Boolean = false;
         var _loc6_:BitmapData = null;
         var _loc7_:Matrix = null;
         var _loc8_:* = 0;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:int = 0;
         var _loc14_:int = 0;
         var _loc15_:int = 0;
         §§push(this.§;§.background.§'P§());
         if(_loc16_)
         {
            §§push(§§pop());
         }
         var _loc4_:* = §§pop();
         var _loc5_:§`!9§;
         if(_loc5_ = this.§;§.backgroundTextureManager.§&! §(_loc4_))
         {
            _loc6_ = new BitmapData(_loc5_.bitmapData.width * param3,_loc5_.bitmapData.height * param3);
            (_loc7_ = new Matrix()).scale(param3,param3);
            if(_loc16_ || this)
            {
               _loc6_.draw(_loc5_.bitmapData,_loc7_);
               loop0:
               while(true)
               {
                  §§push(_loc6_.width - 2);
                  addr321:
                  while(true)
                  {
                     §§push(int(§§pop()));
                     addr322:
                     while(true)
                     {
                        _loc8_ = §§pop();
                        addr323:
                        while(true)
                        {
                           §§push(_loc6_.height - 2);
                           continue loop0;
                        }
                     }
                  }
               }
            }
            §§goto(addr236);
         }
         §§goto(addr330);
      }
      
      public function §[!!§(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §3!,§
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc10_:§3!,§ = null;
         var _loc11_:* = param2;
         §§push("BIRD_BLACK");
         if(!(_loc13_ && this))
         {
            if(§§pop() === _loc11_)
            {
               §§push(0);
               if(!(_loc12_ || this))
               {
                  addr313:
               }
            }
            else
            {
               §§push("BIRD_BLUE");
               §§push(_loc11_);
               if(!(_loc13_ && param3))
               {
                  if(§§pop() === §§pop())
                  {
                     §§push(1);
                     if(!(_loc13_ && param2))
                     {
                        §§goto(addr318);
                     }
                     else
                     {
                        §§goto(addr313);
                     }
                  }
                  else
                  {
                     §§push("BIRD_GREEN");
                     if(_loc12_ || param1)
                     {
                        §§push(_loc11_);
                        if(_loc12_)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(!_loc13_)
                              {
                                 §§push(2);
                                 if(_loc12_ || param1)
                                 {
                                 }
                              }
                           }
                           else
                           {
                              addr272:
                              if("BIRD_WHITE" === _loc11_)
                              {
                                 addr318:
                                 switch(§§pop())
                                 {
                                    case 0:
                                       _loc10_ = new §implements§(this,param1,this.§;§.§-!H§.§8f§,this.§;§,this.§7z§,param2,param3,param4,param5,param8,param9);
                                       break;
                                    case 1:
                                       _loc10_ = new §9!§(this,param1,this.§;§.§-!H§.§8f§,this.§;§,this.§7z§,param2,param3,param4,param5,param8,param9);
                                       break;
                                    case 2:
                                       _loc10_ = new §<!+§(this,param1,this.§;§.§-!H§.§8f§,this.§;§,this.§7z§,param2,param3,param4,param5,param8,param9);
                                       break;
                                    case 3:
                                       _loc10_ = new §5!M§(this,param1,this.§;§.§-!H§.§8f§,this.§;§,this.§7z§,param2,param3,param4,param5,param8,param9);
                                       break;
                                    case 4:
                                       _loc10_ = new §6s§(this,param1,this.§;§.§-!H§.§8f§,this.§;§,this.§7z§,param2,param3,param4,param5,param8,param9);
                                       break;
                                    case 5:
                                       _loc10_ = new §0!I§(this,param1,this.§;§.§-!H§.§8f§,this.§;§,this.§7z§,param2,param3,param4,param5,param8,param9);
                                       break;
                                    case 6:
                                       _loc10_ = new §<_§(this,param1,this.§;§.§-!H§.§8f§,this.§;§,this.§7z§,param2,param3,param4,param5,param8,param9);
                                       break;
                                    default:
                                       _loc10_ = new §1!"§(this,param1,this.§;§.§-!H§.§8f§,this.§;§,this.§7z§,param2,param3,param4,param5,param8,param9);
                                 }
                                 return _loc10_;
                                 §§push(3);
                              }
                              else
                              {
                                 if("BIRD_YELLOW" === _loc11_)
                                 {
                                    §§goto(addr318);
                                    §§push(4);
                                 }
                                 else
                                 {
                                    §§push("BIRD_RED");
                                    if(!(_loc13_ && param2))
                                    {
                                       addr298:
                                       if(§§pop() === _loc11_)
                                       {
                                          if(!(_loc13_ && this))
                                          {
                                             §§goto(addr318);
                                             §§push(5);
                                          }
                                       }
                                       else
                                       {
                                          addr310:
                                          if("BIRD_REDBIG" !== _loc11_)
                                          {
                                             §§goto(addr318);
                                             §§push(7);
                                          }
                                       }
                                       §§goto(addr318);
                                    }
                                    §§goto(addr310);
                                 }
                                 §§goto(addr318);
                              }
                           }
                           §§goto(addr318);
                           §§push(6);
                        }
                        §§goto(addr272);
                     }
                     §§goto(addr298);
                  }
                  §§goto(addr318);
               }
               §§goto(addr298);
            }
            §§goto(addr318);
         }
         §§goto(addr310);
      }
      
      public function hasBirds() : Boolean
      {
         return this.§5i§ > 0;
      }
      
      public function addObject(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : §3!,§
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         var _loc10_:Sprite;
         (_loc10_ = new Sprite()).scaleX = param8;
         if(!_loc15_)
         {
            _loc10_.scaleY = param8;
         }
         var _loc11_:§3!,§;
         if((_loc11_ = this.§5!J§(_loc10_,param1,param2,param3,param4,param5,param6,param7,param8)).isTexture())
         {
            if(_loc14_)
            {
               §§push(_loc10_);
               §§push(this.§4!2§);
               if(_loc14_)
               {
                  §§push(!§§pop());
               }
               §§pop().visible = §§pop();
               if(!(_loc15_ && param1))
               {
                  this.§]!I§[this.§]!I§.length] = _loc11_;
                  loop0:
                  while(true)
                  {
                     §§push(_loc11_ is §1!"§);
                     §§push(_loc11_ is §1!"§);
                     if(_loc14_)
                     {
                        if(§§pop())
                        {
                           if(_loc14_)
                           {
                              §§pop();
                              loop9:
                              while(true)
                              {
                                 §§push(_loc11_.§&0§());
                                 if(!(_loc15_ && this))
                                 {
                                    §§push(!§§pop());
                                    if(!_loc15_)
                                    {
                                       while(true)
                                       {
                                          if(!§§pop())
                                          {
                                             §§push(_loc11_.front);
                                             if(_loc14_)
                                             {
                                                §§push(Boolean(§§pop()));
                                                §§push(Boolean(§§pop()));
                                                break loop0;
                                             }
                                             break;
                                          }
                                          this.§`5§.addChild(_loc10_);
                                          if(false)
                                          {
                                             continue loop0;
                                          }
                                          addr183:
                                          var _loc12_:*;
                                          §§push((_loc12_ = this).§5i§);
                                          if(_loc14_ || param1)
                                          {
                                             §§push(§§pop() + 1);
                                          }
                                          var _loc13_:* = §§pop();
                                          if(_loc14_)
                                          {
                                             _loc12_.§5i§ = _loc13_;
                                          }
                                          loop1:
                                          while(true)
                                          {
                                             §§push(param5);
                                             break loop9;
                                             addr227:
                                             while(true)
                                             {
                                                continue loop1;
                                             }
                                          }
                                       }
                                       while(true)
                                       {
                                          §§pop();
                                          §§push(param9);
                                          if(!_loc14_)
                                          {
                                             break;
                                          }
                                          if(_loc14_ || param1)
                                          {
                                             addr220:
                                             §§push(Boolean(§§pop()));
                                             break;
                                          }
                                       }
                                       if(§§pop())
                                       {
                                          this.§!!Q§.addChild(_loc10_);
                                          §§goto(addr227);
                                       }
                                       else
                                       {
                                          this.§+!,§.addChild(_loc10_);
                                          addr208:
                                       }
                                       §§goto(addr183);
                                       addr74:
                                       addr236:
                                    }
                                    §§goto(addr220);
                                 }
                                 break;
                              }
                              addr93:
                           }
                           while(true)
                           {
                              if(§§pop())
                              {
                                 while(true)
                                 {
                                    §§push(this.§;§);
                                    addr188:
                                    while(true)
                                    {
                                       §§pop().§<a§(_loc11_);
                                       addr190:
                                       while(true)
                                       {
                                       }
                                    }
                                 }
                                 addr186:
                              }
                              for(; param6; §§goto(addr190))
                              {
                                 if(_loc14_)
                                 {
                                    if(!(_loc14_ || param3))
                                    {
                                       continue;
                                    }
                                    if(_loc14_)
                                    {
                                       if(!(_loc15_ && param1))
                                       {
                                          §§push(this.§;§);
                                          if(_loc14_)
                                          {
                                             §§pop().activeObject = _loc11_;
                                             addr182:
                                             break;
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr227);
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr186);
                                    }
                                    §§goto(addr188);
                                 }
                                 §§goto(addr182);
                              }
                              return _loc11_;
                           }
                        }
                        §§goto(addr74);
                     }
                     break;
                  }
                  if(!§§pop())
                  {
                     §§goto(addr236);
                  }
                  §§goto(addr220);
                  addr82:
               }
               §§goto(addr208);
            }
            §§goto(addr93);
         }
         else
         {
            this.§]!I§[this.§]!I§.length] = _loc11_;
            if(!(_loc15_ && param2))
            {
               §§goto(addr82);
            }
         }
         §§goto(addr182);
      }
      
      public function §9#§(param1:int, param2:§3!,§, param3:§3!,§) : §=z§
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc6_:§=z§ = null;
         var _loc4_:int = this.§]!I§.indexOf(param2) - this.§1!4§;
         var _loc5_:int = this.§]!I§.indexOf(param3) - this.§1!4§;
         if(_loc8_)
         {
            §§push(_loc4_);
            if(_loc8_)
            {
               §§push(0);
               if(!(_loc7_ && param2))
               {
                  §§push(§§pop() >= §§pop());
                  if(_loc8_ || param2)
                  {
                     if(§§pop())
                     {
                        if(_loc8_ || param3)
                        {
                           §§pop();
                           if(!_loc7_)
                           {
                              addr84:
                              if(_loc5_ >= 0)
                              {
                                 (_loc6_ = new §=z§(§3,§.§'!!§,_loc4_,_loc5_,new Point(0,0),new Point(0,0))).§''§ = this.§;§.§-!H§.§8f§.CreateJoint(_loc6_.§<,§(param2,param3));
                                 §§goto(addr85);
                              }
                              §§goto(addr137);
                           }
                           addr85:
                           if(_loc8_ || param3)
                           {
                              this.§0b§.push(_loc6_);
                              if(_loc7_)
                              {
                                 addr137:
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
         §§goto(addr84);
      }
      
      public function §#M§(param1:§=z§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            if(!(param1.§''§ is b2WeldJoint))
            {
               if(!(_loc5_ && _loc2_))
               {
                  §§goto(addr30);
               }
            }
            var _loc2_:§3!,§ = this.§ for§(param1.index1 + this.§1!4§);
            var _loc3_:§3!,§ = this.§ for§(param1.index2 + this.§1!4§);
            if(!(_loc5_ && _loc3_))
            {
               this.§;§.§-!H§.§8f§.DestroyJoint(param1.§''§);
            }
            do
            {
               param1.§''§ = this.§;§.§-!H§.§8f§.CreateJoint(param1.§<,§(_loc2_,_loc3_));
            }
            while(!_loc4_);
            
            return;
         }
         addr30:
      }
      
      public function §07§(param1:§3!,§) : Vector.<§=z§>
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:§=z§ = null;
         var _loc2_:Vector.<§=z§> = new Vector.<§=z§>();
         var _loc3_:int = this.§]!I§.indexOf(param1) - this.§1!4§;
         if(!_loc7_)
         {
            §§push(_loc3_);
            if(!_loc7_)
            {
               if(§§pop() >= 0)
               {
                  addr53:
                  addr52:
                  for each(_loc4_ in this.§0b§)
                  {
                     §§push(_loc4_.index1 == _loc3_);
                     if(!_loc7_)
                     {
                        if(!§§pop())
                        {
                           if(_loc8_)
                           {
                              addr85:
                              §§pop();
                              if(!(_loc7_ && _loc2_))
                              {
                                 addr97:
                                 if(_loc4_.index2 != _loc3_)
                                 {
                                    continue;
                                 }
                                 if(!(_loc8_ || _loc3_))
                                 {
                                    continue;
                                 }
                              }
                              _loc2_.push(_loc4_);
                              continue;
                           }
                        }
                        §§goto(addr97);
                     }
                     §§goto(addr85);
                  }
               }
               return _loc2_;
            }
            §§goto(addr53);
         }
         §§goto(addr52);
      }
      
      public function §[=§() : Vector.<§=z§>
      {
         return this.§0b§;
      }
      
      public function §'=§(param1:§3!,§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:int = this.§]!I§.indexOf(param1) - this.§1!4§;
         var _loc3_:* = int(this.§0b§.length - 1);
         while(true)
         {
            §§push(_loc3_);
            if(!(_loc4_ && _loc3_))
            {
               if(_loc5_)
               {
                  if(§§pop() < 0)
                  {
                     if(!_loc4_)
                     {
                        break;
                     }
                     while(!_loc5_)
                     {
                     }
                     continue;
                     addr65:
                  }
                  else
                  {
                     §§push(this.§0b§[_loc3_].index1 == _loc2_);
                     if(_loc5_)
                     {
                        if(!§§pop())
                        {
                           loop4:
                           while(true)
                           {
                              §§pop();
                              addr124:
                              while(true)
                              {
                                 §§push(this.§0b§[_loc3_].index2 == _loc2_);
                                 if(!(_loc4_ && _loc3_))
                                 {
                                    break;
                                 }
                                 continue loop4;
                              }
                           }
                           addr123:
                        }
                        loop1:
                        for(; §§pop(); §§goto(addr124))
                        {
                           if(!(_loc4_ && param1))
                           {
                              if(_loc4_)
                              {
                                 continue;
                              }
                              this.§0b§.splice(_loc3_,1);
                              while(true)
                              {
                                 break loop1;
                              }
                              addr109:
                           }
                           §§goto(addr109);
                        }
                        while(true)
                        {
                           §§push(_loc3_);
                           addr63:
                           while(true)
                           {
                              §§push(§§pop() - 1);
                              addr64:
                              while(true)
                              {
                                 _loc3_ = §§pop();
                                 §§goto(addr65);
                              }
                           }
                        }
                     }
                     §§goto(addr123);
                  }
                  §§goto(addr109);
               }
               §§goto(addr63);
            }
            §§goto(addr64);
         }
      }
      
      public function §`!"§(param1:§3!,§, param2:§3!,§) : Boolean
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:int = this.§]!I§.indexOf(param1) - this.§1!4§;
         var _loc4_:int = this.§]!I§.indexOf(param2) - this.§1!4§;
         var _loc5_:* = int(this.§0b§.length - 1);
         while(true)
         {
            §§push(_loc5_);
            if(!_loc7_)
            {
               if(_loc6_ || this)
               {
                  if(§§pop() < 0)
                  {
                     break;
                  }
                  §§push(this.§0b§[_loc5_].index1 == _loc3_);
                  §§push(this.§0b§[_loc5_].index1 == _loc3_);
                  loop1:
                  while(true)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§pop();
                           §§push(this.§0b§[_loc5_].index2 == _loc4_);
                        }
                        addr166:
                     }
                     while(true)
                     {
                        while(true)
                        {
                           §§push(§§pop());
                           loop5:
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 if(_loc7_ && param1)
                                 {
                                    break;
                                 }
                                 §§pop();
                                 while(true)
                                 {
                                    §§push(this.§0b§[_loc5_].index1 == _loc4_);
                                    §§push(this.§0b§[_loc5_].index1 == _loc4_);
                                    if(_loc6_ || _loc3_)
                                    {
                                       if(!_loc7_)
                                       {
                                          if(!§§pop())
                                          {
                                             break;
                                          }
                                          continue;
                                       }
                                       continue loop1;
                                    }
                                    continue loop5;
                                 }
                              }
                              addr90:
                              addr58:
                              if(§§pop())
                              {
                                 if(_loc6_)
                                 {
                                    return true;
                                 }
                                 addr96:
                              }
                              §§push(_loc5_);
                           }
                           §§goto(addr166);
                           §§push(this.§0b§[_loc5_].index2 == _loc3_);
                           if(!(_loc6_ || this))
                           {
                              continue;
                           }
                           §§goto(addr90);
                        }
                     }
                  }
               }
               while(true)
               {
                  §§push(§§pop() - 1);
                  §§goto(addr58);
               }
            }
            while(true)
            {
               _loc5_ = §§pop();
               if(_loc6_)
               {
                  break;
               }
               §§goto(addr96);
            }
         }
         return false;
      }
      
      protected function §5!J§(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §3!,§
      {
         var _loc15_:Boolean = false;
         var _loc16_:Boolean = true;
         var _loc10_:§3!,§ = null;
         var _loc11_:§5!1§ = null;
         var _loc12_:§5!1§ = null;
         if(_loc16_)
         {
            §§push(param2);
            if(_loc16_)
            {
               §§push("BIRD");
               if(_loc16_ || this)
               {
                  if(§§pop().indexOf(§§pop()) == 0)
                  {
                     if(_loc16_ || param3)
                     {
                        _loc10_ = this.§[!!§(param1,param2,param3,param4,param5,param6,param7,param8,param9);
                        if(!_loc15_)
                        {
                           var _loc13_:*;
                           §§push((_loc13_ = this).§?j§);
                           if(!_loc15_)
                           {
                              §§push(§§pop() + 1);
                           }
                           var _loc14_:* = §§pop();
                           if(_loc16_)
                           {
                              _loc13_.§?j§ = _loc14_;
                           }
                           if(_loc16_)
                           {
                              addr271:
                              _loc10_.uniqueID = this.§,P§();
                           }
                        }
                        return _loc10_;
                     }
                     addr87:
                     §§push(§>U§.§=v§(param2));
                     if(!(_loc15_ && this))
                     {
                        _loc11_ = §§pop();
                        _loc10_ = new §25§(this,param1,this.§;§.§-!H§.§8f§,this.§;§,this.§7z§,param2,param3,param4,param5,param9,_loc11_.particleJSONId,_loc11_.particleVariationCount);
                     }
                     else
                     {
                        addr136:
                        §§push((_loc12_ = §§pop()) == null);
                        if(_loc16_)
                        {
                           §§push(§§pop());
                           if(_loc16_)
                           {
                              if(§§pop())
                              {
                                 if(_loc16_)
                                 {
                                    §§pop();
                                    if(!_loc15_)
                                    {
                                       §§push(param2);
                                       if(_loc16_)
                                       {
                                          §§push(§§pop().indexOf("MISC_") == 0);
                                          if(!(_loc15_ && param3))
                                          {
                                             addr166:
                                             if(§§pop())
                                             {
                                                if(_loc16_ || this)
                                                {
                                                   addr182:
                                                   §§push("MISC_FOOD_");
                                                   if(_loc16_)
                                                   {
                                                      §§push(§§pop() + param2.substring(5));
                                                   }
                                                   param2 = §§pop();
                                                   if(!_loc15_)
                                                   {
                                                      _loc12_ = §>U§.§=v§(param2);
                                                      addr190:
                                                      §§push(_loc12_.§]^§);
                                                      if(_loc16_)
                                                      {
                                                         §§push(§5!1§.§?m§);
                                                         if(_loc16_)
                                                         {
                                                            §§push(§§pop() == §§pop());
                                                            if(!_loc15_)
                                                            {
                                                               addr202:
                                                               if(!§§pop())
                                                               {
                                                                  if(!_loc15_)
                                                                  {
                                                                     addr205:
                                                                     §§pop();
                                                                     addr214:
                                                                     if(_loc16_)
                                                                     {
                                                                        addr210:
                                                                        §§push(_loc12_.§]^§);
                                                                        §§push(§5!1§.§9D§);
                                                                     }
                                                                     _loc10_ = new §1Q§(this,param1,this.§;§.§-!H§.§8f§,this.§;§,this.§7z§,param2,param3,param4,param5,param9,_loc12_.front,_loc12_.particleJSONId,_loc12_.particleVariationCount);
                                                                     §§goto(addr271);
                                                                  }
                                                                  addr213:
                                                                  if(§§pop())
                                                                  {
                                                                     §§goto(addr214);
                                                                  }
                                                                  else
                                                                  {
                                                                     _loc10_ = new §3!,§(this,param1,this.§;§.§-!H§.§8f§,this.§;§,this.§7z§,param2,param3,param4,param5,param9,_loc12_.front);
                                                                     §§goto(addr271);
                                                                  }
                                                               }
                                                               §§goto(addr213);
                                                            }
                                                            §§goto(addr205);
                                                         }
                                                         §§goto(addr213);
                                                         §§push(§§pop() == §§pop());
                                                      }
                                                      §§goto(addr210);
                                                   }
                                                   §§goto(addr205);
                                                }
                                                §§goto(addr210);
                                             }
                                             §§goto(addr190);
                                          }
                                          §§goto(addr213);
                                       }
                                       §§goto(addr182);
                                    }
                                 }
                                 §§goto(addr205);
                              }
                              §§goto(addr166);
                           }
                           §§goto(addr202);
                        }
                        §§goto(addr166);
                     }
                     §§goto(addr271);
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
                  §§push(§>U§.§=v§(param2));
               }
               §§goto(addr136);
            }
            §§goto(addr83);
         }
         §§goto(addr87);
      }
      
      private function §,P§() : String
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:§3!,§ = null;
         var _loc1_:int = this.§]!I§.length;
         var _loc2_:* = false;
         loop0:
         while(true)
         {
            §§push(_loc2_);
            if(!(_loc7_ && this))
            {
               §§push(!§§pop());
            }
            while(§§pop())
            {
               §§push(true);
               if(_loc6_)
               {
                  _loc2_ = §§pop();
                  if(!(_loc6_ || _loc2_))
                  {
                     break;
                  }
                  §§push(0);
                  if(_loc7_ && _loc2_)
                  {
                     return §§pop().toString();
                  }
                  addr109:
                  for each(_loc3_ in this.§]!I§)
                  {
                     if(_loc7_)
                     {
                        _loc2_ = false;
                     }
                     else
                     {
                        addr91:
                     }
                     if(_loc3_.uniqueID != _loc1_.toString())
                     {
                        continue;
                     }
                     if(_loc6_)
                     {
                        _loc1_++;
                        if(!_loc7_)
                        {
                           §§goto(addr91);
                        }
                     }
                     §§goto(addr91);
                  }
                  continue loop0;
               }
            }
            §§goto(addr109);
         }
      }
      
      public function §@!=§(param1:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§3!,§ = null;
         var _loc2_:* = int(this.§]!I§.length - 1);
         loop0:
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§]!I§[_loc2_] as §3!,§;
            if(_loc4_ || _loc2_)
            {
               if(_loc3_)
               {
                  loop1:
                  while(true)
                  {
                     if(_loc3_.§8!2§ <= 0)
                     {
                        this.§`!%§(_loc2_,true,true,true);
                        addr53:
                        while(true)
                        {
                           §§push(_loc2_);
                           if(_loc4_ || _loc2_)
                           {
                              §§push(§§pop() - 1);
                           }
                           _loc2_ = §§pop();
                           if(_loc4_)
                           {
                              while(false)
                              {
                                 continue loop1;
                              }
                              continue loop0;
                              addr66:
                           }
                        }
                        addr53:
                     }
                     else
                     {
                        _loc3_.§@y§();
                     }
                     while(true)
                     {
                        continue loop1;
                        §§goto(addr53);
                     }
                  }
               }
               §§goto(addr53);
            }
            §§goto(addr66);
         }
         if(_loc4_)
         {
            this.§@a§(param1);
         }
      }
      
      protected function §@a§(param1:Number) : void
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc3_:§=z§ = null;
         var _loc4_:§2=§ = null;
         var _loc5_:* = 0;
         var _loc6_:§3!,§ = null;
         var _loc7_:Number = NaN;
         var _loc8_:* = NaN;
         var _loc2_:* = int(this.§0?§.length - 1);
         while(true)
         {
            §§push(_loc2_);
            if(_loc11_ || _loc3_)
            {
               if(§§pop() < 0)
               {
                  §§goto(addr420);
               }
               if((_loc4_ = this.§0?§[_loc2_]).§38§)
               {
                  if(!_loc11_)
                  {
                     continue;
                  }
                  §§push(_loc4_.update(param1));
                  if(!(_loc12_ && _loc3_))
                  {
                     §§push(int(§§pop()));
                     if(_loc11_ || _loc2_)
                     {
                        addr68:
                        §§push(§§pop());
                        if(!(_loc12_ && param1))
                        {
                           _loc5_ = §§pop();
                           addr128:
                           if(!(_loc12_ && this))
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
                           §§push(this);
                           §§push("block_");
                           if(_loc11_)
                           {
                              §§push(§§pop() + _loc5_);
                           }
                           if(_loc6_ = §§pop().§[!H§(§§pop()))
                           {
                              if(!(_loc12_ && param1))
                              {
                                 this.§^I§(_loc6_,true,true,true);
                                 if(_loc12_)
                                 {
                                 }
                                 addr124:
                                 §§push(_loc2_);
                                 if(!_loc12_)
                                 {
                                    §§goto(addr128);
                                    §§push(§§pop() - 1);
                                 }
                                 §§goto(addr128);
                              }
                              §§goto(addr124);
                           }
                           this.§0?§.splice(_loc2_,1);
                        }
                        §§goto(addr124);
                     }
                     §§goto(addr128);
                  }
                  §§goto(addr68);
               }
               §§goto(addr124);
            }
            break;
         }
         var _loc9_:* = §§pop();
         if(!(_loc12_ && _loc3_))
         {
            loop1:
            for each(_loc3_ in this.§0b§)
            {
               if(!(_loc12_ && this))
               {
                  §§push(_loc3_.type == §3,§.§0!9§);
                  loop2:
                  while(true)
                  {
                     §§push(§§pop());
                     while(true)
                     {
                        if(!§§pop())
                        {
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 continue loop1;
                              }
                              §§push(_loc3_.§''§);
                              loop7:
                              while(true)
                              {
                                 _loc7_ = (§§pop() as b2PrismaticJoint).GetJointTranslation();
                                 loop8:
                                 while(!_loc12_)
                                 {
                                    §§push(_loc3_.§''§);
                                    loop9:
                                    while(!_loc12_)
                                    {
                                       §§push((§§pop() as b2PrismaticJoint).GetMotorSpeed());
                                       loop10:
                                       while(true)
                                       {
                                          §§push(Number(§§pop()));
                                          loop11:
                                          while(true)
                                          {
                                             _loc8_ = §§pop();
                                             loop12:
                                             while(true)
                                             {
                                                §§push(Boolean(_loc3_.§%H§));
                                                loop13:
                                                while(true)
                                                {
                                                   §§push(§§pop());
                                                   addr351:
                                                   while(true)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         while(_loc11_)
                                                         {
                                                            §§pop();
                                                            if(!(_loc11_ || _loc2_))
                                                            {
                                                               continue loop8;
                                                            }
                                                            §§push(Boolean(_loc3_.§9!0§));
                                                         }
                                                         while(true)
                                                         {
                                                            §§pop();
                                                            break loop8;
                                                         }
                                                         addr352:
                                                         addr414:
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(§§pop());
                                                         while(true)
                                                         {
                                                            if(!§§pop())
                                                            {
                                                               loop18:
                                                               while(true)
                                                               {
                                                                  if(!§§pop())
                                                                  {
                                                                     continue loop1;
                                                                  }
                                                                  if(_loc11_)
                                                                  {
                                                                     if(!(_loc11_ || _loc2_))
                                                                     {
                                                                        continue loop12;
                                                                     }
                                                                     §§push(_loc3_.§''§);
                                                                     if(_loc12_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     §§push(§§pop() as b2PrismaticJoint);
                                                                     §§push(_loc8_);
                                                                     if(!(_loc12_ && _loc3_))
                                                                     {
                                                                        §§push(-§§pop());
                                                                     }
                                                                     §§pop().SetMotorSpeed(§§pop());
                                                                  }
                                                                  if(_loc11_)
                                                                  {
                                                                     if(true)
                                                                     {
                                                                        continue loop1;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc8_);
                                                                        addr317:
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc7_);
                                                                        if(!(_loc12_ && param1))
                                                                        {
                                                                           §§push(§§pop() <= _loc3_.lowerLimit);
                                                                           if(!(_loc12_ && _loc3_))
                                                                           {
                                                                              continue loop18;
                                                                           }
                                                                           loop22:
                                                                           while(true)
                                                                           {
                                                                              if(!(_loc12_ && _loc2_))
                                                                              {
                                                                                 §§pop();
                                                                                 if(!_loc12_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr335:
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop();
                                                                                 }
                                                                                 addr335:
                                                                              }
                                                                              loop23:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc7_);
                                                                                 addr269:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!(_loc12_ && param1))
                                                                                    {
                                                                                       if(_loc11_ || this)
                                                                                       {
                                                                                          continue loop22;
                                                                                       }
                                                                                       continue loop11;
                                                                                    }
                                                                                    addr320:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(0);
                                                                                       addr321:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop() > §§pop());
                                                                                          addr322:
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc12_)
                                                                                             {
                                                                                                break loop23;
                                                                                             }
                                                                                             continue loop13;
                                                                                          }
                                                                                          §§goto(addr354);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr335);
                                                                              }
                                                                              §§goto(addr352);
                                                                           }
                                                                           §§goto(addr317);
                                                                        }
                                                                     }
                                                                     addr266:
                                                                  }
                                                                  while(_loc11_)
                                                                  {
                                                                     continue loop10;
                                                                  }
                                                                  §§goto(addr269);
                                                               }
                                                               continue loop9;
                                                               addr203:
                                                            }
                                                            §§pop();
                                                            while(true)
                                                            {
                                                               §§push(_loc8_);
                                                            }
                                                            §§goto(addr320);
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                    continue loop7;
                                 }
                                 continue loop2;
                              }
                           }
                           addr395:
                        }
                        §§goto(addr414);
                     }
                  }
               }
               §§goto(addr345);
            }
         }
         addr420:
         if(_loc11_ || param1)
         {
            break loop0;
         }
      }
      
      public function addExplosions(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            this.§ c§.push(§%0§.createExplosion(param1,param2,param3));
         }
         do
         {
            §[!7§.playSound("TntExplosions","ChannelExplosions");
         }
         while(!(_loc4_ || param3));
         
      }
      
      public function §'h§(param1:Number, param2:Number) : int
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:§3!,§ = null;
         var _loc3_:* = int(this.§]!I§.length - 1);
         while(true)
         {
            §§push(_loc3_);
            if(!(_loc5_ && param2))
            {
               if(§§pop() < 0)
               {
                  break;
               }
               if(_loc4_ = this.§]!I§[_loc3_])
               {
                  if(_loc6_)
                  {
                     if(_loc4_.isInCoordinates(param1,param2))
                     {
                        if(_loc5_)
                        {
                           continue;
                        }
                        §§push(_loc3_);
                        if(!(_loc5_ && this))
                        {
                           return §§pop();
                        }
                     }
                     else
                     {
                        addr76:
                        §§push(_loc3_);
                        if(!(_loc5_ && param1))
                        {
                           §§push(§§pop() - 1);
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
      
      public function §9B§(param1:Number, param2:Number) : §3!,§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:§3!,§ = null;
         var _loc3_:* = int(this.§]!I§.length - 1);
         while(true)
         {
            if(_loc3_ < 0)
            {
               return null;
            }
            if(_loc4_ = this.§]!I§[_loc3_])
            {
               if(_loc6_)
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
               else
               {
                  addr73:
                  §§push(_loc3_);
                  if(!_loc6_)
                  {
                     §§push(§§pop() - 1);
                  }
                  _loc3_ = §§pop();
               }
               continue;
            }
            §§goto(addr73);
         }
         return _loc4_;
      }
      
      public function § for§(param1:int) : §3!,§
      {
         return this.§]!I§[param1];
      }
      
      public function §break§(param1:Number, param2:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:§3!,§ = null;
         var _loc3_:* = int(this.§]!I§.length - 1);
         while(_loc3_ >= 0)
         {
            (_loc4_ = this.§]!I§[_loc3_] as §3!,§).§break§(param2,param1);
            if(_loc5_)
            {
               §§push(_loc3_);
               if(_loc5_ || param1)
               {
                  §§push(§§pop() - 1);
               }
               _loc3_ = §§pop();
            }
         }
      }
      
      private function §^w§(param1:§3!,§, param2:Number) : Boolean
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:§3!,§ = null;
         if(_loc9_ || param1)
         {
            §§push(this.mSardineCanAdded);
            if(_loc9_ || param2)
            {
               if(!§§pop())
               {
                  if(!(_loc8_ && this))
                  {
                     §§push(true);
                     if(_loc9_ || param2)
                     {
                        §§goto(addr58);
                     }
                  }
                  else
                  {
                     addr82:
                     §§push(false);
                  }
                  addr83:
                  var _loc3_:* = §§pop();
                  §§push(param1.§8!2§);
                  loop0:
                  while(true)
                  {
                     §§push(param1.§53§);
                     loop1:
                     while(true)
                     {
                        if(§§pop() == §§pop())
                        {
                           §§push(this.§;!0§);
                           loop2:
                           while(true)
                           {
                              if(§§pop() < this.Tuner.SARDINE_CAN_MAX_ROTATION_SPEED)
                              {
                                 while(true)
                                 {
                                    §§push(this);
                                    §§push(this.§;!0§);
                                    if(_loc9_ || param2)
                                    {
                                       §§push(param2);
                                       if(!_loc8_)
                                       {
                                          §§push(§§pop() * this.Tuner.SARDINE_CAN_ROTATION_ACCELERATION);
                                       }
                                       §§push(§§pop() + §§pop());
                                    }
                                    §§pop().§;!0§ = §§pop();
                                 }
                                 addr410:
                              }
                              while(true)
                              {
                                 §§push(param1.§`%§());
                                 loop5:
                                 while(true)
                                 {
                                    §§push(param2);
                                    if(_loc9_)
                                    {
                                       §§push(§§pop() * this.§;!0§);
                                    }
                                    §§pop().SetAngularVelocity(§§pop());
                                    this.§'4§ = 0;
                                    loop6:
                                    while(true)
                                    {
                                       §§push(Boolean(param1.§6D§()));
                                       loop7:
                                       while(true)
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
                                                   §§push(Boolean(this.§#X§(param1)));
                                                   if(!_loc8_)
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(§§pop());
                                                         loop11:
                                                         while(true)
                                                         {
                                                            if(!§§pop())
                                                            {
                                                               loop12:
                                                               while(true)
                                                               {
                                                                  §§pop();
                                                                  §§push(this.§'4§);
                                                                  if(!_loc8_)
                                                                  {
                                                                     §§push(0);
                                                                     if(!_loc9_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     §§push(§§pop() > §§pop());
                                                                     if(_loc9_ || param2)
                                                                     {
                                                                        if(!(_loc8_ && param1))
                                                                        {
                                                                           §§push(§§pop());
                                                                           loop13:
                                                                           while(_loc9_)
                                                                           {
                                                                              if(!§§pop())
                                                                              {
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 loop16:
                                                                                 for(; §§pop(); _loc4_ = §§pop() + §§pop(),§§push(this.mMightyEagleTimer < this.Tuner.MIGHTY_EAGLE_SOUND_DELAY),if(!_loc8_)
                                                                                 {
                                                                                    §§push(§§pop());
                                                                                    if(_loc9_)
                                                                                    {
                                                                                       continue loop11;
                                                                                    }
                                                                                    continue loop13;
                                                                                 })
                                                                                 {
                                                                                    if(this.mMightyEagleTimer < this.Tuner.MIGHTY_EAGLE_WAIT_TIME)
                                                                                    {
                                                                                       §§push(this.mMightyEagleTimer);
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(param2);
                                                                                          addr308:
                                                                                          while(!(_loc8_ && this))
                                                                                          {
                                                                                             continue loop16;
                                                                                          }
                                                                                          §§push(§§pop() - §§pop());
                                                                                          addr166:
                                                                                          continue loop1;
                                                                                          if(!_loc8_)
                                                                                          {
                                                                                             §§push(Number(§§pop()));
                                                                                          }
                                                                                          if(_loc9_)
                                                                                          {
                                                                                             continue loop2;
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 break loop9;
                                                                              }
                                                                           }
                                                                           continue loop8;
                                                                        }
                                                                        continue loop9;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§pop();
                                                                        if(!_loc9_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        §§push(this.§;§.§>,§ > this.§'4§ + this.Tuner.SARDINE_CAN_DELAY_AFTER_HIT);
                                                                        addr93:
                                                                        if(_loc8_ && param1)
                                                                        {
                                                                           continue;
                                                                        }
                                                                        if(_loc8_ && _loc3_)
                                                                        {
                                                                           continue loop12;
                                                                        }
                                                                        if(§§pop())
                                                                        {
                                                                           if(!_loc8_)
                                                                           {
                                                                              addr110:
                                                                              if(_loc8_ && param2)
                                                                              {
                                                                                 loop28:
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc9_ || param1)
                                                                                    {
                                                                                       addr187:
                                                                                       if(_loc9_ || this)
                                                                                       {
                                                                                          §§push(this.§#X§(param1));
                                                                                          if(_loc8_)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          if(_loc9_)
                                                                                          {
                                                                                             §§goto(addr93);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §[!7§.playSound("Mighty_Eagle_Selected_1","ChannelBird");
                                                                                                      §[!7§.playSound("Mighty_Eagle_Flying_1","ChannelBird");
                                                                                                      addr243:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         addr220:
                                                                                                         while(!(_loc8_ && this))
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(param1.§`%§());
                                                                                                               if(!(_loc8_ && param2))
                                                                                                               {
                                                                                                                  if(_loc8_)
                                                                                                                  {
                                                                                                                     continue loop5;
                                                                                                                  }
                                                                                                                  §§push(§§pop().GetPosition());
                                                                                                                  if(_loc8_)
                                                                                                                  {
                                                                                                                     continue loop0;
                                                                                                                  }
                                                                                                                  §§push(§§pop().y);
                                                                                                                  §§push(this.Tuner.MIGHTY_EAGLE_STARTING_DISTANCE_Y * this.Tuner.MIGHTY_EAGLE_Y_CHANGE);
                                                                                                                  if(!_loc8_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() * 1.07);
                                                                                                                  }
                                                                                                                  if(_loc9_ || this)
                                                                                                                  {
                                                                                                                     §§goto(addr166);
                                                                                                                  }
                                                                                                                  §§goto(addr308);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop().GetPosition());
                                                                                                                     continue loop0;
                                                                                                                  }
                                                                                                                  addr205:
                                                                                                               }
                                                                                                               addr127:
                                                                                                               _loc3_ = §§pop();
                                                                                                               if(!_loc8_)
                                                                                                               {
                                                                                                                  if(false)
                                                                                                                  {
                                                                                                                     continue;
                                                                                                                  }
                                                                                                                  addr430:
                                                                                                                  _loc7_ = this.addObject("BIRD_MIGHTY_EAGLE",_loc5_,_loc6_,this.Tuner.MIGHTY_EAGLE_FLYING_ANGLE * 1.2);
                                                                                                                  if(_loc9_)
                                                                                                                  {
                                                                                                                     this.mMightyEagleAdded = true;
                                                                                                                  }
                                                                                                                  addr471:
                                                                                                                  this.§'4§ = 0;
                                                                                                                  _loc7_.§3! §.§%!0§(1.82);
                                                                                                                  addr479:
                                                                                                                  if(_loc9_ || param1)
                                                                                                                  {
                                                                                                                     if(_loc9_)
                                                                                                                     {
                                                                                                                        if(false)
                                                                                                                        {
                                                                                                                           §§goto(addr471);
                                                                                                                        }
                                                                                                                        addr480:
                                                                                                                        this.mMightyEagleTimer = _loc4_;
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     §§goto(addr479);
                                                                                                                  }
                                                                                                                  addr475:
                                                                                                                  §§goto(addr475);
                                                                                                               }
                                                                                                               break;
                                                                                                            }
                                                                                                            §§goto(addr483);
                                                                                                            continue loop28;
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   addr252:
                                                                                                }
                                                                                                while(_loc4_ >= this.Tuner.MIGHTY_EAGLE_WAIT_TIME)
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!_loc8_)
                                                                                                      {
                                                                                                         §§goto(addr205);
                                                                                                         §§push(param1.§`%§());
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§goto(addr252);
                                                                                                      }
                                                                                                      §§goto(addr187);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             addr251:
                                                                                          }
                                                                                          §§goto(addr480);
                                                                                       }
                                                                                       §§goto(addr201);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr220);
                                                                                    }
                                                                                 }
                                                                                 addr125:
                                                                                 if(!_loc9_)
                                                                                 {
                                                                                    continue loop7;
                                                                                 }
                                                                                 §§goto(addr127);
                                                                                 addr180:
                                                                              }
                                                                              §§push(true);
                                                                              if(_loc9_ || this)
                                                                              {
                                                                                 §§goto(addr125);
                                                                              }
                                                                              break loop9;
                                                                           }
                                                                           §§goto(addr483);
                                                                        }
                                                                        §§goto(addr430);
                                                                     }
                                                                     §§goto(addr410);
                                                                  }
                                                                  else
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        break loop12;
                                                                     }
                                                                     addr375:
                                                                  }
                                                               }
                                                               while(true)
                                                               {
                                                                  if(§§pop() == §§pop())
                                                                  {
                                                                     this.§'4§ = this.§;§.§>,§;
                                                                  }
                                                                  continue loop6;
                                                               }
                                                            }
                                                            §§goto(addr297);
                                                            if(!(_loc9_ || _loc3_))
                                                            {
                                                               continue;
                                                            }
                                                            if(§§pop())
                                                            {
                                                               if(!(_loc8_ && _loc3_))
                                                               {
                                                                  §§pop();
                                                                  addr250:
                                                                  §§goto(addr251);
                                                                  §§push(_loc4_ > this.Tuner.MIGHTY_EAGLE_SOUND_DELAY);
                                                               }
                                                               break loop9;
                                                            }
                                                            §§goto(addr250);
                                                         }
                                                      }
                                                      addr357:
                                                   }
                                                   break;
                                                }
                                                return §§pop();
                                             }
                                             §§goto(addr357);
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        else
                        {
                           §§push(this.§'4§);
                        }
                        §§goto(addr375);
                     }
                  }
               }
               else
               {
                  §§goto(addr66);
               }
               §§goto(addr82);
            }
            addr58:
            return §§pop();
         }
         addr66:
         §§push(this.mMightyEagleAdded);
         if(!(_loc8_ && param1))
         {
            if(§§pop())
            {
               if(!_loc8_)
               {
                  §§push(false);
                  if(!_loc8_)
                  {
                     §§goto(addr81);
                  }
               }
               else
               {
                  §§goto(addr82);
               }
               §§goto(addr83);
            }
            §§goto(addr82);
         }
         addr81:
         return §§pop();
      }
      
      private function §@r§(param1:§3!,§, param2:Number) : Boolean
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc5_:§3!,§ = null;
         if(!_loc9_)
         {
            §§push(Boolean(this.Tuner.MIGHTY_EAGLE_USE_SHADE));
            §§push(Boolean(this.Tuner.MIGHTY_EAGLE_USE_SHADE));
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  continue;
               }
               loop1:
               while(true)
               {
                  §§pop();
                  while(true)
                  {
                     §§push(this.§`D§);
                     if(_loc8_ || this)
                     {
                        §§push(!§§pop());
                     }
                     loop3:
                     while(!(_loc9_ && param1))
                     {
                        §§push(Boolean(§§pop()));
                        if(!(_loc9_ && _loc3_))
                        {
                           continue loop0;
                        }
                        addr95:
                        while(true)
                        {
                           §§pop();
                           loop4:
                           while(true)
                           {
                              addr32:
                              while(true)
                              {
                                 §§push(this.mMightyEagleTimer);
                                 if(!_loc9_)
                                 {
                                    §§push(§§pop() > this.Tuner.MIGHTY_EAGLE_SHADING_DELAY);
                                    if(!_loc8_)
                                    {
                                       continue loop3;
                                    }
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          §§push(Number(3));
                                       }
                                       else
                                       {
                                          addr106:
                                       }
                                       continue loop4;
                                    }
                                 }
                                 break;
                              }
                              var _loc3_:* = §§pop();
                              if(_loc8_ || _loc3_)
                              {
                                 §§push(this);
                                 §§push(this.mMightyEagleTimer);
                                 if(_loc8_ || param1)
                                 {
                                    §§push(§§pop() + param2);
                                 }
                                 §§pop().mMightyEagleTimer = §§pop();
                                 if(!(_loc9_ && this))
                                 {
                                    §§push(this.§;§.particles);
                                    §§push(§8R§.§#'§);
                                    §§push(§5!5§.§-U§);
                                    §§push(§8R§.§`R§);
                                    §§push(param1.§`%§().GetPosition().x);
                                    if(_loc8_)
                                    {
                                       §§push(_loc3_);
                                       if(_loc8_)
                                       {
                                          §§push(§§pop() - §§pop());
                                          if(!(_loc9_ && param1))
                                          {
                                             addr162:
                                             §§push(Math.random() * (_loc3_ * 2));
                                             if(_loc8_)
                                             {
                                                addr171:
                                                §§push(§§pop() + §§pop());
                                                §§push(param1.§`%§().GetPosition().y);
                                                if(!_loc9_)
                                                {
                                                   §§push(_loc3_);
                                                   if(!_loc9_)
                                                   {
                                                      addr190:
                                                      §§push(§§pop() - §§pop());
                                                      if(!_loc9_)
                                                      {
                                                         addr183:
                                                         §§push(Math.random() * (_loc3_ * 2));
                                                      }
                                                      §§pop().addParticle(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),3500,"",§8R§.§[q§(param1.§4V§),0,0,1,0,4);
                                                      var _loc4_:* = 1;
                                                      if(!(_loc9_ && param1))
                                                      {
                                                         §§push(this.mMightyEagleHasTouchedGround);
                                                         loop12:
                                                         while(true)
                                                         {
                                                            if(!§§pop())
                                                            {
                                                               this.mMightyEagleHasTouchedGround = param1.§`%§().GetPosition().y >= -5.5;
                                                               break;
                                                            }
                                                            if(!_loc9_)
                                                            {
                                                               param1.§8N§(this.Tuner.MIGHTY_EAGLE_ROTATION_SPEED * param2);
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(-1);
                                                               if(_loc9_)
                                                               {
                                                                  break;
                                                               }
                                                               _loc4_ = §§pop();
                                                               continue loop12;
                                                            }
                                                            var _loc6_:* = §§pop();
                                                            var _loc7_:* = this.§]!I§;
                                                            loop17:
                                                            while(true)
                                                            {
                                                               §§push(§§hasnext(_loc7_,_loc6_));
                                                               if(_loc8_)
                                                               {
                                                                  if(!§§pop())
                                                                  {
                                                                     if(_loc8_)
                                                                     {
                                                                        if(!(_loc9_ && param1))
                                                                        {
                                                                           if(_loc8_ || param1)
                                                                           {
                                                                              this.§]F§();
                                                                              if(!(_loc9_ && _loc3_))
                                                                              {
                                                                                 addr405:
                                                                                 §§push(this.mMightyEagleTimer > 6000);
                                                                                 if(!_loc9_)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       if(_loc8_ || this)
                                                                                       {
                                                                                          §§pop();
                                                                                          §§push(this.isPigsAlive());
                                                                                          if(!_loc9_)
                                                                                          {
                                                                                             §§push(Boolean(§§pop()));
                                                                                             if(_loc8_ || param1)
                                                                                             {
                                                                                                addr433:
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   if(!_loc9_)
                                                                                                   {
                                                                                                      _loc6_ = 0;
                                                                                                      if(!_loc9_)
                                                                                                      {
                                                                                                         addr440:
                                                                                                         _loc7_ = this.§]!I§;
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§hasnext(_loc7_,_loc6_));
                                                                                                            break loop17;
                                                                                                         }
                                                                                                         addr491:
                                                                                                      }
                                                                                                      if(_loc8_ || this)
                                                                                                      {
                                                                                                         addr551:
                                                                                                         loop18:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            param1.§4#§(param2,new Point(this.Tuner.MIGHTY_EAGLE_X_DIRECTION,_loc4_ * this.Tuner.MIGHTY_EAGLE_Y_CHANGE),this.Tuner.MIGHTY_EAGLE_FLYING_SPEED);
                                                                                                            if(!_loc9_)
                                                                                                            {
                                                                                                               addr537:
                                                                                                               if(_loc8_ || param1)
                                                                                                               {
                                                                                                                  addr505:
                                                                                                                  return false;
                                                                                                                  addr544:
                                                                                                               }
                                                                                                               break loop12;
                                                                                                            }
                                                                                                            addr550:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               continue loop18;
                                                                                                            }
                                                                                                            §§goto(addr537);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr550);
                                                                                                   }
                                                                                                   §§goto(addr544);
                                                                                                }
                                                                                                §§goto(addr551);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr433);
                                                                                       }
                                                                                       §§goto(addr505);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr433);
                                                                              }
                                                                              §§goto(addr505);
                                                                           }
                                                                           §§goto(addr405);
                                                                        }
                                                                     }
                                                                     §§goto(addr440);
                                                                  }
                                                                  else
                                                                  {
                                                                     _loc5_ = §§nextvalue(_loc6_,_loc7_);
                                                                     §§push(Boolean(_loc5_));
                                                                     if(_loc8_ || _loc3_)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           if(!(_loc9_ && param1))
                                                                           {
                                                                              §§pop();
                                                                              if(!_loc9_)
                                                                              {
                                                                                 §§push(_loc5_.§&l§());
                                                                                 if(_loc8_ || param1)
                                                                                 {
                                                                                    addr346:
                                                                                    if(!§§pop())
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                    if(!(_loc9_ && this))
                                                                                    {
                                                                                       §§push(_loc5_.§`%§());
                                                                                       if(!_loc9_)
                                                                                       {
                                                                                          §§pop().SetAwake(true);
                                                                                          if(!(_loc8_ || param1))
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                          addr367:
                                                                                          §§push(_loc5_.§`%§());
                                                                                       }
                                                                                       §§pop().SetLinearVelocity(new b2Vec2(0,-18));
                                                                                       continue;
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr346);
                                                                              }
                                                                              §§goto(addr367);
                                                                           }
                                                                           §§goto(addr346);
                                                                        }
                                                                     }
                                                                     §§goto(addr346);
                                                                  }
                                                               }
                                                               break;
                                                            }
                                                            while(true)
                                                            {
                                                               if(!§§pop())
                                                               {
                                                                  §§goto(addr440);
                                                               }
                                                               else
                                                               {
                                                                  _loc5_ = §§nextvalue(_loc6_,_loc7_);
                                                                  §§push(Boolean(_loc5_));
                                                                  if(_loc8_)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        if(!_loc9_)
                                                                        {
                                                                           addr459:
                                                                           §§pop();
                                                                           if(!_loc9_)
                                                                           {
                                                                              §§push(_loc5_.§&l§());
                                                                              if(_loc8_ || param1)
                                                                              {
                                                                              }
                                                                              addr472:
                                                                              if(§§pop())
                                                                              {
                                                                                 if(!(_loc9_ && param2))
                                                                                 {
                                                                                    §§push(_loc5_);
                                                                                    §§push(_loc5_.§53§);
                                                                                    if(!_loc9_)
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
                                                                     §§goto(addr472);
                                                                  }
                                                                  §§goto(addr459);
                                                               }
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            this.§?K§ = this.mMightyEagleHasTouchedGround;
                                                            §§goto(addr550);
                                                            §§goto(addr537);
                                                         }
                                                         §§goto(addr505);
                                                      }
                                                      §§goto(addr279);
                                                   }
                                                   §§goto(addr190);
                                                   §§push(§§pop() + §§pop());
                                                }
                                             }
                                             §§goto(addr183);
                                          }
                                          §§goto(addr171);
                                       }
                                       §§goto(addr190);
                                    }
                                    §§goto(addr162);
                                 }
                              }
                              §§goto(addr190);
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
            if(false)
            {
               §§goto(addr32);
            }
            §§goto(addr106);
         }
      }
      
      private function §@,§() : void
      {
         var _loc20_:Boolean = true;
         var _loc21_:Boolean = false;
         var _loc1_:§%0§ = null;
         var _loc2_:* = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:§3!,§ = null;
         var _loc7_:int = 0;
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
         while(this.§ c§.length > 0)
         {
            _loc1_ = this.§ c§.shift();
            §§push(_loc1_.§>!Q§);
            loop1:
            while(true)
            {
               §§push(Number(§§pop()));
               if(_loc20_ || _loc2_)
               {
                  _loc2_ = §§pop();
                  §§push(_loc1_.x);
                  if(_loc20_ || _loc1_)
                  {
                     _loc3_ = §§pop();
                     loop2:
                     while(true)
                     {
                        §§push(_loc1_.y);
                        if(_loc20_ || _loc2_)
                        {
                           _loc4_ = §§pop();
                           §§push(_loc1_.damage);
                           if(_loc20_)
                           {
                              continue loop1;
                           }
                           loop15:
                           while(true)
                           {
                              §§push(Number(§§pop()));
                              loop10:
                              while(!_loc21_)
                              {
                                 _loc16_ = §§pop();
                                 if(_loc21_)
                                 {
                                    continue loop0;
                                 }
                                 §§push(_loc7_);
                                 §§push(180);
                                 loop11:
                                 while(true)
                                 {
                                    §§push(§§pop() / Math.PI);
                                    if(!(_loc21_ && _loc3_))
                                    {
                                       §§push(§§pop() / §§pop());
                                       while(true)
                                       {
                                          §§push(Number(§§pop()));
                                          addr532:
                                          addr552:
                                          while(true)
                                          {
                                             if(!_loc21_)
                                             {
                                                if(!(_loc21_ && this))
                                                {
                                                   _loc17_ = §§pop();
                                                   loop14:
                                                   while(true)
                                                   {
                                                      §§push(this.§;§);
                                                      if(!(_loc21_ && _loc3_))
                                                      {
                                                         §§push(§§pop().particles);
                                                         if(_loc21_)
                                                         {
                                                            break;
                                                         }
                                                         §§push(§8R§.§=6§);
                                                         if(_loc20_ || _loc2_)
                                                         {
                                                            §§push(§5!5§.§-U§);
                                                            if(!_loc21_)
                                                            {
                                                               §§push(§8R§.§`R§);
                                                               if(!(_loc21_ && this))
                                                               {
                                                                  §§push(_loc3_);
                                                                  if(_loc20_ || this)
                                                                  {
                                                                     §§push(_loc4_);
                                                                     if(!(_loc21_ && this))
                                                                     {
                                                                        §§push(_loc16_);
                                                                        §§push("");
                                                                        §§push(§8R§.§^!M§);
                                                                        §§push(_loc15_);
                                                                        if(!(_loc21_ && _loc3_))
                                                                        {
                                                                           §§push(§§pop() * Math.cos(_loc17_));
                                                                        }
                                                                        §§push(_loc15_);
                                                                        if(_loc20_ || this)
                                                                        {
                                                                           §§push(-§§pop());
                                                                           if(_loc20_ || this)
                                                                           {
                                                                              §§push(§§pop() * Math.sin(_loc17_));
                                                                           }
                                                                        }
                                                                        §§pop().addParticle(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),20,0);
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc7_);
                                                                           §§push(5);
                                                                           if(_loc20_)
                                                                           {
                                                                              continue loop11;
                                                                           }
                                                                        }
                                                                        addr516:
                                                                     }
                                                                     else
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§pop().addParticle(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),600,"",§8R§.§^!M§,0,0,0,0,1,20,true);
                                                                           if(_loc21_ && _loc1_)
                                                                           {
                                                                              continue loop0;
                                                                           }
                                                                           _loc7_ = 30;
                                                                           while(true)
                                                                           {
                                                                              addr631:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc7_);
                                                                                 addr632:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(150);
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        addr611:
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        if(§§pop() < §§pop())
                                                                        {
                                                                           §§push(0.75);
                                                                           if(!_loc21_)
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc2_);
                                                                                 if(_loc20_ || _loc2_)
                                                                                 {
                                                                                    §§push(§§pop() * §§pop());
                                                                                    break loop10;
                                                                                 }
                                                                                 addr580:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop() + §§pop());
                                                                                    addr581:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(Number(§§pop()));
                                                                                       break loop2;
                                                                                    }
                                                                                    break loop10;
                                                                                 }
                                                                              }
                                                                              addr567:
                                                                           }
                                                                        }
                                                                        continue loop0;
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     while(true)
                                                                     {
                                                                     }
                                                                     addr600:
                                                                  }
                                                                  §§goto(addr611);
                                                               }
                                                               else
                                                               {
                                                                  while(true)
                                                                  {
                                                                  }
                                                                  addr599:
                                                               }
                                                               §§goto(addr600);
                                                            }
                                                            else
                                                            {
                                                               while(true)
                                                               {
                                                               }
                                                               addr597:
                                                            }
                                                            §§goto(addr599);
                                                         }
                                                         else
                                                         {
                                                            while(true)
                                                            {
                                                            }
                                                            addr595:
                                                         }
                                                         §§goto(addr597);
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(§§pop().particles);
                                                            break loop14;
                                                         }
                                                         addr590:
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      §§goto(addr595);
                                                   }
                                                   addr426:
                                                }
                                                break;
                                             }
                                             continue loop10;
                                          }
                                          while(true)
                                          {
                                             if(_loc21_)
                                             {
                                                break loop2;
                                             }
                                             continue loop15;
                                          }
                                          addr404:
                                          if(!(_loc20_ || _loc2_))
                                          {
                                             continue;
                                          }
                                          if(_loc20_)
                                          {
                                             _loc7_ = §§pop();
                                             if(_loc21_)
                                             {
                                                continue loop0;
                                             }
                                             if(_loc20_ || _loc1_)
                                             {
                                                if(false)
                                                {
                                                   §§goto(addr426);
                                                }
                                                §§goto(addr631);
                                             }
                                             §§goto(addr587);
                                          }
                                          §§goto(addr581);
                                       }
                                    }
                                    break;
                                 }
                                 while(true)
                                 {
                                    §§goto(addr552);
                                    §§goto(addr520);
                                 }
                                 addr520:
                              }
                              while(true)
                              {
                                 §§goto(addr580);
                              }
                           }
                        }
                        break;
                     }
                     while(true)
                     {
                        _loc15_ = §§pop();
                        §§push(1250);
                        if(!_loc21_)
                        {
                           §§goto(addr551);
                           §§push(Math.random() * 750);
                        }
                        §§goto(addr632);
                     }
                     addr582:
                     addr76:
                  }
                  §§goto(addr567);
               }
               §§goto(addr582);
            }
         }
      }
      
      protected function §!m§(param1:§3!,§, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            param1.applyDamage(param2,false,false,false,true);
         }
      }
      
      protected function § X§(param1:int) : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(param1);
         if(_loc3_ || this)
         {
         }
         switch(§§pop())
         {
         }
         return §8R§.§1d§;
      }
      
      public function updateLevelObjectsComplete(param1:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:§3!,§ = null;
         var _loc3_:* = int(this.§]!I§.length - 1);
         loop0:
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§]!I§[_loc3_];
            §§push(_loc2_.§for§());
            loop1:
            while(true)
            {
               if(§§pop())
               {
                  §§push(this.§^w§(_loc2_,param1));
                  break;
               }
               addr152:
               §§push(_loc2_.§&0§());
               loop2:
               while(true)
               {
                  if(_loc4_)
                  {
                     break loop1;
                  }
                  if(!§§pop())
                  {
                     §§push(this.§#X§(_loc2_));
                     loop3:
                     while(true)
                     {
                        if(!_loc4_)
                        {
                           if(§§pop())
                           {
                              addr35:
                              break;
                              addr35:
                           }
                           §§push(_loc2_.isReadyToBeRemoved(param1));
                           loop4:
                           while(true)
                           {
                              if(!_loc5_)
                              {
                                 continue loop1;
                              }
                              if(!§§pop())
                              {
                                 continue;
                              }
                              if(_loc5_ || _loc3_)
                              {
                                 _loc2_.§,A§(§0Z§.§-q§);
                              }
                              this.§`!%§(_loc3_,false,true,true);
                              while(true)
                              {
                                 if(!_loc4_)
                                 {
                                    while(true)
                                    {
                                       break loop4;
                                    }
                                    addr47:
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       this.§@r§(_loc2_,param1);
                                       addr174:
                                       while(true)
                                       {
                                          break loop4;
                                       }
                                    }
                                    addr170:
                                 }
                              }
                           }
                           while(true)
                           {
                              §§push(_loc3_);
                              if(_loc5_)
                              {
                                 §§push(§§pop() - 1);
                              }
                              _loc3_ = §§pop();
                              if(!_loc4_)
                              {
                                 if(!_loc5_)
                                 {
                                    break loop3;
                                 }
                                 if(true)
                                 {
                                    break;
                                 }
                              }
                              else
                              {
                                 §§goto(addr99);
                              }
                              §§goto(addr47);
                           }
                           continue loop0;
                        }
                        continue loop2;
                        if(_loc4_ && param1)
                        {
                           continue;
                        }
                        if(§§pop())
                        {
                           if(!(_loc4_ && param1))
                           {
                              _loc2_.update(param1);
                           }
                           if(_loc5_)
                           {
                              if(_loc4_)
                              {
                                 addr183:
                                 this.§`!%§(_loc3_,false,false,false);
                                 break loop2;
                              }
                              §§goto(addr35);
                           }
                           while(true)
                           {
                           }
                           addr130:
                        }
                        §§goto(addr35);
                     }
                     while(true)
                     {
                        _loc2_.§,A§(§0Z§.§-q§);
                        if(!(_loc4_ && _loc3_))
                        {
                           this.§`!%§(_loc3_,false,false,false);
                           §§goto(addr130);
                        }
                        §§goto(addr174);
                     }
                  }
                  §§goto(addr170);
               }
               §§goto(addr35);
            }
            if(§§pop())
            {
               §§goto(addr183);
            }
            §§goto(addr152);
         }
         if(!_loc4_)
         {
            this.§@,§();
         }
      }
      
      private function §]F§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§=z§ = null;
         for each(_loc1_ in this.§0b§)
         {
            if(_loc5_)
            {
               if(_loc1_.type == §3,§.§>R§)
               {
                  continue;
               }
               if(_loc4_)
               {
                  continue;
               }
            }
            this.§;§.§-!H§.§8f§.DestroyJoint(_loc1_.§''§);
         }
      }
      
      public function §5R§() : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§3!,§ = null;
         var _loc1_:int = 0;
         while(true)
         {
            if(_loc1_ >= this.§]!I§.length)
            {
               return false;
            }
            _loc2_ = this.§]!I§[_loc1_];
            if(_loc3_)
            {
               §§push(_loc2_.explode());
               if(_loc4_)
               {
                  break;
               }
               if(§§pop())
               {
                  if(!_loc4_)
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
      
      public function §#X§(param1:§3!,§) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
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
                     while(true)
                     {
                        §§push(param1.§+!?§.§&'§() != §,6§.§"I§);
                        while(true)
                        {
                           §§push(Boolean(§§pop()));
                           addr72:
                           §§push(true);
                           if(_loc3_)
                           {
                              return §§pop();
                           }
                        }
                        addr65:
                        if(!(_loc3_ || _loc2_))
                        {
                           continue;
                        }
                        §§goto(addr72);
                     }
                  }
                  while(true)
                  {
                     §§push(§§pop());
                     if(_loc3_)
                     {
                        if(§§pop())
                        {
                           if(!_loc3_)
                           {
                              continue loop0;
                           }
                           §§pop();
                           while(true)
                           {
                              §§push(Boolean(this.§;§.§9!>§.§>x§(param1.§`%§().GetPosition().x,param1.§`%§().GetPosition().y)));
                           }
                           addr105:
                        }
                        while(§§pop())
                        {
                           if(_loc2_ && param1)
                           {
                              addr86:
                              break;
                           }
                           if(!_loc2_)
                           {
                              §§goto(addr65);
                           }
                           else
                           {
                              §§goto(addr105);
                           }
                        }
                        return false;
                     }
                     break;
                  }
               }
            }
         }
         §§goto(addr86);
      }
      
      public function §`!%§(param1:int, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc6_:§=z§ = null;
         var _loc7_:§2=§ = null;
         if(!(_loc13_ && param3))
         {
            if(param1 < 0)
            {
               if(_loc12_)
               {
                  §§goto(addr34);
               }
            }
            var _loc5_:§3!,§;
            §§push((_loc5_ = this.§]!I§[param1]).§&l§());
            if(_loc12_ || param1)
            {
               if(§§pop())
               {
                  if(_loc12_)
                  {
                     var _loc8_:*;
                     §§push((_loc8_ = this).§&!4§);
                     if(_loc12_)
                     {
                        §§push(§§pop() + 1);
                     }
                     var _loc9_:* = §§pop();
                     if(!(_loc13_ && param3))
                     {
                        _loc8_.§&!4§ = _loc9_;
                     }
                     addr218:
                     if(_loc5_ == this.§;§.activeObject)
                     {
                        §§push(this.§;§);
                        loop9:
                        while(true)
                        {
                           §§pop().activeObject = null;
                           addr227:
                           while(true)
                           {
                              continue loop9;
                           }
                        }
                        addr225:
                     }
                     while(true)
                     {
                        §§push(param2);
                        loop1:
                        while(true)
                        {
                           if(§§pop())
                           {
                              §§push(this.§;§);
                              if(_loc13_)
                              {
                                 break;
                              }
                              §§push(_loc5_.§+!?§.score);
                              §§push(§<!!§.§;!$§);
                              §§push(true);
                              §§push(_loc5_.§`%§().GetPosition().x);
                              §§push(_loc5_.§`%§().GetPosition().y);
                              if(!_loc13_)
                              {
                                 §§push(3);
                                 if(_loc12_)
                                 {
                                    addr202:
                                    §§push(§§pop() - §§pop());
                                    §§push(§8R§.§4!§(_loc5_.§4V§));
                                 }
                                 §§pop().addScore(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
                                 addr165:
                                 §§push(param3);
                                 loop2:
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       while(true)
                                       {
                                          this.addDestructionParticles(_loc5_,this.§;§.particles);
                                       }
                                       addr168:
                                    }
                                    while(true)
                                    {
                                       §§push(param4);
                                       while(!_loc13_)
                                       {
                                          continue loop1;
                                          loop7:
                                          while(true)
                                          {
                                             §§push(_loc5_.isTexture());
                                             if(!(_loc12_ || param2))
                                             {
                                                break;
                                             }
                                             loop11:
                                             while(true)
                                             {
                                                if(!§§pop())
                                                {
                                                }
                                                loop12:
                                                while(true)
                                                {
                                                   this.§8J§(_loc5_.sprite);
                                                   addr134:
                                                   addr154:
                                                   while(!(_loc13_ && param3))
                                                   {
                                                      this.§'=§(_loc5_);
                                                      if(_loc12_)
                                                      {
                                                         if(_loc12_)
                                                         {
                                                            if(true)
                                                            {
                                                               break loop11;
                                                            }
                                                            continue loop7;
                                                         }
                                                         continue loop12;
                                                      }
                                                   }
                                                   while(!(_loc13_ && param2))
                                                   {
                                                      while(true)
                                                      {
                                                         this.checkExplosions(_loc5_);
                                                         continue loop7;
                                                      }
                                                      §§goto(addr134);
                                                   }
                                                   §§goto(addr168);
                                                }
                                             }
                                             _loc8_ = 0;
                                             _loc9_ = this.§0b§;
                                             loop14:
                                             while(true)
                                             {
                                                §§push(§§hasnext(_loc9_,_loc8_));
                                                if(!_loc13_)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      if(!_loc13_)
                                                      {
                                                         if(!_loc13_)
                                                         {
                                                            if(!(_loc13_ && this))
                                                            {
                                                               _loc8_ = 0;
                                                               if(!(_loc13_ && this))
                                                               {
                                                                  addr327:
                                                                  _loc9_ = this.§0?§;
                                                                  while(true)
                                                                  {
                                                                     §§push(§§hasnext(_loc9_,_loc8_));
                                                                     break loop14;
                                                                  }
                                                                  addr389:
                                                               }
                                                               if(_loc12_)
                                                               {
                                                                  _loc5_.dispose();
                                                               }
                                                            }
                                                            _loc5_ = null;
                                                            if(!_loc13_)
                                                            {
                                                               this.§]!I§[param1] = null;
                                                               do
                                                               {
                                                                  this.§]!I§.splice(param1,1);
                                                               }
                                                               while(_loc13_ && this);
                                                               
                                                            }
                                                            return;
                                                         }
                                                      }
                                                      §§goto(addr327);
                                                   }
                                                   else
                                                   {
                                                      _loc6_ = §§nextvalue(_loc8_,_loc9_);
                                                      if(_loc6_.index1 >= param1)
                                                      {
                                                         if(!_loc13_)
                                                         {
                                                            var _loc10_:*;
                                                            var _loc11_:* = (_loc10_ = _loc6_).index1 - 1;
                                                            if(!(_loc13_ && this))
                                                            {
                                                               _loc10_.index1 = _loc11_;
                                                            }
                                                            if(_loc12_ || param2)
                                                            {
                                                               addr272:
                                                               if(_loc6_.index2 < param1)
                                                               {
                                                                  continue;
                                                               }
                                                               if(!(_loc12_ || param3))
                                                               {
                                                                  continue;
                                                               }
                                                            }
                                                            _loc11_ = (_loc10_ = _loc6_).index2 - 1;
                                                            if(!(_loc13_ && this))
                                                            {
                                                               _loc10_.index2 = _loc11_;
                                                            }
                                                         }
                                                         continue;
                                                      }
                                                      §§goto(addr272);
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
                                                   if(_loc12_ || param3)
                                                   {
                                                      §§push(param1);
                                                      if(_loc12_ || param1)
                                                      {
                                                         if(§§pop() == §§pop())
                                                         {
                                                            if(_loc13_)
                                                            {
                                                               continue;
                                                            }
                                                            _loc7_.§38§ = true;
                                                            if(_loc13_ && this)
                                                            {
                                                               continue;
                                                            }
                                                         }
                                                         addr370:
                                                         §§push(_loc7_.id1);
                                                         §§push(param1);
                                                      }
                                                      if(§§pop() >= §§pop())
                                                      {
                                                         if(!_loc13_)
                                                         {
                                                            §§push((_loc10_ = _loc7_).id1);
                                                            if(_loc12_)
                                                            {
                                                               §§push(§§pop() - 1);
                                                            }
                                                            _loc11_ = §§pop();
                                                            if(_loc12_)
                                                            {
                                                               _loc10_.id1 = _loc11_;
                                                            }
                                                         }
                                                      }
                                                      continue;
                                                   }
                                                   §§goto(addr370);
                                                }
                                             }
                                          }
                                       }
                                       continue loop2;
                                    }
                                 }
                              }
                              §§goto(addr202);
                           }
                           §§goto(addr165);
                        }
                        §§goto(addr225);
                     }
                  }
                  §§goto(addr161);
               }
               else
               {
                  §§push(_loc5_.§?s§());
                  if(_loc12_ || this)
                  {
                     if(§§pop())
                     {
                        if(_loc12_)
                        {
                           §§push((_loc8_ = this).§5i§);
                           if(_loc12_)
                           {
                              §§push(§§pop() - 1);
                           }
                           _loc9_ = §§pop();
                           if(_loc12_ || param1)
                           {
                              _loc8_.§5i§ = _loc9_;
                           }
                           if(_loc12_)
                           {
                              §§goto(addr218);
                           }
                           §§goto(addr227);
                        }
                        §§goto(addr161);
                     }
                     §§goto(addr218);
                  }
               }
            }
            §§goto(addr129);
         }
         addr34:
      }
      
      protected function addDestructionParticles(param1:§3!,§, param2:§5!5§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            param1.addDestructionParticles(param2);
         }
      }
      
      private function §8J§(param1:Sprite) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            §§push(this.§+!,§);
            if(!(_loc2_ && param1))
            {
               if(§§pop().contains(param1))
               {
                  addr170:
                  this.§+!,§.removeChild(param1);
               }
               else
               {
                  loop0:
                  while(true)
                  {
                     §§push(this.§`5§);
                     if(!(_loc2_ && _loc3_))
                     {
                        if(!§§pop().contains(param1))
                        {
                           loop1:
                           do
                           {
                              §§push(this.§2!C§);
                              if(_loc3_)
                              {
                                 if(!§§pop().contains(param1))
                                 {
                                    while(true)
                                    {
                                       §§push(this.§!!Q§);
                                       if(_loc3_ || param1)
                                       {
                                          if(!§§pop().contains(param1))
                                          {
                                             return;
                                          }
                                          if(_loc3_ || param1)
                                          {
                                             if(!_loc3_)
                                             {
                                                if(!(_loc2_ && param1))
                                                {
                                                   if(!(_loc2_ && param1))
                                                   {
                                                      if(_loc2_ && this)
                                                      {
                                                         §§push(this.§`5§);
                                                      }
                                                      else
                                                      {
                                                         addr148:
                                                      }
                                                      if(_loc2_)
                                                      {
                                                         return;
                                                      }
                                                      addr172:
                                                      continue;
                                                      break loop0;
                                                   }
                                                   break;
                                                }
                                                continue loop1;
                                             }
                                             §§push(this.§!!Q§);
                                          }
                                          return;
                                          addr58:
                                       }
                                       §§pop().removeChild(param1);
                                       §§goto(addr58);
                                    }
                                    return;
                                    addr152:
                                 }
                                 if(!(_loc3_ || param1))
                                 {
                                    continue loop0;
                                 }
                                 §§push(this.§2!C§);
                              }
                              §§pop().removeChild(param1);
                           }
                           while(!(_loc3_ || param1));
                           
                           return;
                        }
                        §§goto(addr148);
                     }
                     break;
                  }
                  §§pop().removeChild(param1);
                  §§goto(addr152);
               }
               §§goto(addr172);
            }
            §§goto(addr170);
         }
         §§goto(addr58);
      }
      
      protected function checkExplosions(param1:§3!,§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            §§push(param1.§-X§());
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
                        addr134:
                        loop5:
                        while(true)
                        {
                           §§push(param1.§51§());
                           if(!(_loc2_ && _loc3_))
                           {
                              if(!_loc3_)
                              {
                                 continue;
                              }
                              if(!(_loc3_ || param1))
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
                              if(_loc3_)
                              {
                                 continue loop0;
                              }
                              addr123:
                              if(!_loc2_)
                              {
                                 break;
                              }
                              continue loop5;
                           }
                           addr25:
                           return;
                        }
                     }
                  }
                  §§goto(addr84);
               }
            }
         }
         §§goto(addr134);
      }
      
      public function §^I§(param1:Object, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            this.§`!%§(this.§]!I§.indexOf(param1),param2,param3,param4);
         }
      }
      
      public function §<E§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §§push(this.§4!O§);
            loop0:
            while(true)
            {
               §§push(param1);
               if(_loc3_ || param1)
               {
                  §§push(-§§pop());
               }
               addr59:
               while(true)
               {
                  §§pop().x = §§pop();
                  continue loop0;
               }
            }
            addr50:
         }
         while(true)
         {
            §§push(this.§4!O§);
            if(_loc3_)
            {
               §§push(param2);
               if(!_loc4_)
               {
                  if(_loc3_)
                  {
                     §§push(-§§pop());
                  }
                  else
                  {
                     §§goto(addr59);
                  }
               }
               §§pop().y = §§pop();
               if(_loc3_)
               {
                  break;
               }
               continue;
            }
            §§goto(addr50);
            §§goto(addr59);
         }
      }
      
      public function isPigsAlive(param1:Boolean = false) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§3!,§ = null;
         var _loc2_:int = 0;
         loop0:
         while(_loc2_ < this.§]!I§.length)
         {
            _loc3_ = this.§]!I§[_loc2_] as §3!,§;
            if(!_loc4_)
            {
               §§push(Boolean(_loc3_));
               §§push(Boolean(_loc3_));
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        §§push(_loc3_.§&l§());
                        loop3:
                        while(true)
                        {
                           §§push(Boolean(§§pop()));
                           if(_loc4_)
                           {
                              while(true)
                              {
                                 §§pop();
                                 §§push(_loc3_.§8!2§);
                                 loop5:
                                 while(true)
                                 {
                                    §§push(0);
                                    loop6:
                                    while(true)
                                    {
                                       §§push(§§pop() > §§pop());
                                       addr131:
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             §§push(param1);
                                             if(_loc4_)
                                             {
                                                break;
                                             }
                                             if(_loc4_ && param1)
                                             {
                                                continue loop2;
                                             }
                                             §§push(!§§pop());
                                             loop8:
                                             while(true)
                                             {
                                                §§push(§§pop());
                                                loop9:
                                                while(true)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      §§pop();
                                                      §§push(_loc3_.§3! §);
                                                      loop10:
                                                      while(true)
                                                      {
                                                         §§push(§§pop().mTryToBlink);
                                                         loop11:
                                                         while(!_loc4_)
                                                         {
                                                            §§push(0);
                                                            loop12:
                                                            while(_loc5_ || _loc2_)
                                                            {
                                                               §§push(§§pop() <= §§pop());
                                                               while(true)
                                                               {
                                                                  §§push(§§pop());
                                                                  if(_loc4_ && _loc2_)
                                                                  {
                                                                     continue loop9;
                                                                  }
                                                                  if(!(_loc5_ || _loc2_))
                                                                  {
                                                                     break;
                                                                  }
                                                                  if(!§§pop())
                                                                  {
                                                                     addr67:
                                                                     loop15:
                                                                     while(true)
                                                                     {
                                                                        if(!§§pop())
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              _loc2_++;
                                                                              if(_loc5_ || _loc3_)
                                                                              {
                                                                                 if(true)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 loop18:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc3_.§3! §);
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       §§push(§§pop().mTryToScream);
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          §§push(0);
                                                                                          if(!_loc4_)
                                                                                          {
                                                                                             §§push(§§pop() <= §§pop());
                                                                                             if(!_loc4_)
                                                                                             {
                                                                                                continue loop15;
                                                                                             }
                                                                                             addr77:
                                                                                             while(_loc4_)
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   §§pop();
                                                                                                   addr125:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      continue loop18;
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             continue loop8;
                                                                                          }
                                                                                          continue loop12;
                                                                                       }
                                                                                       continue loop11;
                                                                                    }
                                                                                    continue loop10;
                                                                                 }
                                                                              }
                                                                              §§goto(addr125);
                                                                           }
                                                                           continue loop0;
                                                                           addr35:
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           if(!(_loc4_ && this))
                                                                           {
                                                                              §§goto(addr77);
                                                                              §§push(true);
                                                                           }
                                                                           §§goto(addr125);
                                                                        }
                                                                     }
                                                                     addr67:
                                                                  }
                                                                  §§goto(addr124);
                                                                  if(!(_loc5_ || _loc2_))
                                                                  {
                                                                     continue;
                                                                  }
                                                                  §§goto(addr67);
                                                               }
                                                               continue loop1;
                                                            }
                                                            continue loop6;
                                                         }
                                                         continue loop5;
                                                      }
                                                   }
                                                   §§goto(addr67);
                                                }
                                             }
                                          }
                                          §§goto(addr35);
                                       }
                                       continue loop3;
                                    }
                                 }
                              }
                              addr175:
                           }
                        }
                     }
                  }
                  while(true)
                  {
                     §§push(§§pop());
                     continue loop1;
                  }
               }
            }
            §§goto(addr125);
         }
         return false;
      }
      
      public function §=T§(param1:Boolean = false) : int
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:§3!,§ = null;
         var _loc2_:int = 0;
         var _loc3_:* = int(this.§]!I§.length - 1);
         loop0:
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
               §§push(Boolean(_loc4_ = this.§]!I§[_loc3_] as §3!,§));
               if(_loc5_)
               {
                  §§push(§§pop());
                  if(!_loc6_)
                  {
                     if(§§pop())
                     {
                        if(!(_loc6_ && param1))
                        {
                           §§pop();
                           addr193:
                           §§push(Boolean(_loc4_.§&l§()));
                           §§push(Boolean(_loc4_.§&l§()));
                           loop17:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 loop18:
                                 while(true)
                                 {
                                    §§pop();
                                    addr196:
                                    while(true)
                                    {
                                       §§push(_loc4_.§8!2§);
                                       addr146:
                                       while(true)
                                       {
                                          §§push(0);
                                          addr147:
                                          while(true)
                                          {
                                             §§push(§§pop() > §§pop());
                                          }
                                       }
                                       continue loop18;
                                    }
                                 }
                                 addr195:
                              }
                              while(§§pop())
                              {
                                 §§push(!param1);
                                 if(!(_loc6_ && _loc3_))
                                 {
                                    if(_loc5_)
                                    {
                                       §§push(§§pop());
                                       loop16:
                                       while(true)
                                       {
                                          if(!(_loc5_ || _loc2_))
                                          {
                                             continue loop17;
                                          }
                                          if(!§§pop())
                                          {
                                             loop6:
                                             while(true)
                                             {
                                                §§pop();
                                                while(true)
                                                {
                                                   if(!(_loc6_ && _loc2_))
                                                   {
                                                      §§push(_loc4_.§3! §);
                                                      loop13:
                                                      while(true)
                                                      {
                                                         §§push(§§pop().mTryToBlink);
                                                         loop11:
                                                         while(true)
                                                         {
                                                            if(_loc5_ || param1)
                                                            {
                                                               addr121:
                                                               §§push(0);
                                                               while(true)
                                                               {
                                                                  if(!(_loc6_ && param1))
                                                                  {
                                                                     §§push(§§pop() <= §§pop());
                                                                     if(!_loc6_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     continue loop6;
                                                                  }
                                                                  §§goto(addr121);
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(§§pop());
                                                                  if(_loc6_ && this)
                                                                  {
                                                                     continue loop16;
                                                                  }
                                                                  if(§§pop())
                                                                  {
                                                                     loop2:
                                                                     while(true)
                                                                     {
                                                                        §§pop();
                                                                        addr142:
                                                                        while(true)
                                                                        {
                                                                           addr75:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc4_.§3! §);
                                                                              if(!_loc5_)
                                                                              {
                                                                                 continue loop13;
                                                                              }
                                                                              §§push(§§pop().mTryToScream);
                                                                              if(_loc6_)
                                                                              {
                                                                                 continue loop11;
                                                                              }
                                                                              §§push(0);
                                                                              if(_loc5_)
                                                                              {
                                                                                 continue loop2;
                                                                              }
                                                                              §§goto(addr122);
                                                                           }
                                                                           continue loop2;
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr99);
                                                               }
                                                               addr122:
                                                               addr132:
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr146);
                                                            }
                                                            §§goto(addr147);
                                                         }
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr196);
                                                   }
                                                   §§goto(addr146);
                                                }
                                             }
                                             addr180:
                                          }
                                          §§goto(addr99);
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr195);
                                    }
                                    §§goto(addr196);
                                 }
                                 §§goto(addr180);
                              }
                              while(true)
                              {
                                 §§push(_loc3_);
                                 if(!(_loc6_ && param1))
                                 {
                                    §§push(§§pop() - 1);
                                 }
                                 _loc3_ = §§pop();
                                 if(!(_loc6_ && _loc2_))
                                 {
                                    if(true)
                                    {
                                       break;
                                    }
                                    §§goto(addr75);
                                 }
                                 §§goto(addr142);
                              }
                              continue loop0;
                           }
                           addr194:
                        }
                        §§goto(addr132);
                     }
                     §§goto(addr193);
                  }
                  §§goto(addr194);
               }
               §§goto(addr193);
            }
            break;
         }
         return §§pop();
      }
      
      public function §@Q§() : int
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§3!,§ = null;
         var _loc1_:int = 0;
         var _loc3_:int = 0;
         loop0:
         for each(_loc2_ in this.§]!I§)
         {
            if(_loc5_)
            {
               §§push(Boolean(_loc2_));
               §§push(Boolean(_loc2_));
               loop1:
               while(true)
               {
                  if(!§§pop())
                  {
                     loop3:
                     while(§§pop())
                     {
                        if(_loc5_ || _loc3_)
                        {
                           _loc1_++;
                        }
                        if(_loc5_)
                        {
                           if(true)
                           {
                              break;
                           }
                           loop4:
                           while(true)
                           {
                              §§push(_loc2_.§4H§());
                              addr77:
                              addr113:
                              while(true)
                              {
                                 §§push(Boolean(§§pop()));
                                 if(!(_loc6_ && this))
                                 {
                                    continue loop1;
                                 }
                              }
                              while(true)
                              {
                                 continue loop4;
                              }
                           }
                        }
                        else
                        {
                           while(true)
                           {
                              if(!_loc6_)
                              {
                                 §§push(_loc2_.§[!F§());
                                 if(_loc5_)
                                 {
                                    §§push(Boolean(§§pop()));
                                 }
                                 if(_loc5_ || _loc1_)
                                 {
                                    continue loop3;
                                 }
                                 §§goto(addr77);
                              }
                              §§goto(addr113);
                           }
                           addr105:
                        }
                        §§goto(addr113);
                     }
                     continue loop0;
                     addr60:
                  }
                  while(true)
                  {
                     §§pop();
                  }
               }
            }
            §§goto(addr113);
         }
         return _loc1_;
      }
      
      public function §!!?§() : int
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§3!,§ = null;
         var _loc1_:int = 0;
         var _loc3_:int = 0;
         for each(_loc2_ in this.§]!I§)
         {
            if(!_loc6_)
            {
               §§push(Boolean(_loc2_));
               if(_loc5_ || _loc3_)
               {
                  if(§§pop())
                  {
                     if(_loc5_)
                     {
                        §§pop();
                        addr90:
                        if(!(_loc6_ && this))
                        {
                           §§push(_loc2_.isTexture());
                           if(_loc5_ || _loc1_)
                           {
                              §§push(Boolean(§§pop()));
                           }
                        }
                        _loc1_++;
                        continue;
                     }
                  }
               }
               if(!§§pop())
               {
                  continue;
               }
               if(_loc6_)
               {
                  continue;
               }
            }
            §§goto(addr90);
         }
         return _loc1_;
      }
      
      public function makePigsSmile(param1:Number = 1) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§3!,§ = null;
         var _loc2_:* = int(this.§]!I§.length - 1);
         loop0:
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§]!I§[_loc2_];
            if(!(_loc4_ && param1))
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
                              §§push(_loc3_.§&l§());
                              if(_loc5_ || _loc3_)
                              {
                                 §§push(Boolean(§§pop()));
                              }
                              loop5:
                              while(_loc5_)
                              {
                                 addr81:
                                 if(_loc5_ || _loc2_)
                                 {
                                    loop8:
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          if(_loc5_ || param1)
                                          {
                                             if(!_loc4_)
                                             {
                                                §§push(_loc3_.§3! §);
                                                §§push(§?k§.§1J§);
                                                if(!_loc4_)
                                                {
                                                   §§push(§§pop() * param1);
                                                }
                                                §§pop().mTryToScream = §§pop();
                                                loop9:
                                                while(true)
                                                {
                                                   addr42:
                                                   while(true)
                                                   {
                                                      §§push(_loc2_);
                                                      if(_loc5_ || _loc3_)
                                                      {
                                                         §§push(§§pop() - 1);
                                                      }
                                                      _loc2_ = §§pop();
                                                      if(!_loc4_)
                                                      {
                                                         break;
                                                      }
                                                      continue loop9;
                                                   }
                                                   if(!(_loc4_ && param1))
                                                   {
                                                      if(true)
                                                      {
                                                         break loop8;
                                                      }
                                                      loop11:
                                                      while(true)
                                                      {
                                                         §§push(_loc3_.§8!2§ > 0);
                                                         if(!_loc4_)
                                                         {
                                                            continue loop8;
                                                         }
                                                         addr138:
                                                         while(true)
                                                         {
                                                            if(_loc4_)
                                                            {
                                                               continue loop3;
                                                            }
                                                            §§pop();
                                                            while(true)
                                                            {
                                                               continue loop11;
                                                            }
                                                         }
                                                         continue loop4;
                                                      }
                                                      continue loop5;
                                                   }
                                                   continue loop4;
                                                }
                                                addr108:
                                             }
                                             §§goto(addr141);
                                          }
                                          §§goto(addr108);
                                       }
                                       §§goto(addr42);
                                    }
                                    continue loop0;
                                    addr88:
                                 }
                              }
                              continue loop1;
                           }
                        }
                     }
                     while(true)
                     {
                        §§push(§§pop());
                        if(_loc4_)
                        {
                           break;
                        }
                        if(§§pop())
                        {
                           §§goto(addr138);
                        }
                        §§goto(addr88);
                     }
                  }
               }
            }
            §§goto(addr141);
         }
      }
      
      public function § O§() : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§3!,§ = null;
         var _loc1_:int = this.§]!I§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§]!I§[_loc1_] as §3!,§;
            if(!(_loc4_ && _loc1_))
            {
               §§push(Boolean(_loc2_));
               if(!(_loc4_ && this))
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
            §§goto(addr140);
         }
         return false;
      }
      
      public function isWorldAtSleep() : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§3!,§ = null;
         var _loc1_:* = int(this.§]!I§.length - 1);
         loop0:
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§]!I§[_loc1_] as §3!,§;
            §§push(Boolean(_loc2_));
            loop1:
            while(true)
            {
               §§push(§§pop());
               while(true)
               {
                  if(§§pop())
                  {
                     §§pop();
                     §§push(_loc2_.§8!2§);
                     while(true)
                     {
                        §§push(0);
                        addr195:
                        while(true)
                        {
                           §§push(§§pop() > §§pop());
                           addr196:
                           while(true)
                           {
                              §§push(Boolean(§§pop()));
                           }
                        }
                     }
                     addr194:
                  }
                  while(true)
                  {
                     loop7:
                     while(true)
                     {
                        §§push(§§pop());
                        addr200:
                        while(true)
                        {
                           if(§§pop())
                           {
                              while(true)
                              {
                                 §§pop();
                                 §§push(_loc2_.§]^§);
                                 loop10:
                                 while(true)
                                 {
                                    §§push(§§pop() != §5!1§.§2!M§);
                                    if(_loc3_ || _loc3_)
                                    {
                                       addr149:
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             continue loop7;
                                          }
                                          loop15:
                                          while(true)
                                          {
                                             §§push(_loc1_);
                                             if(_loc3_ || this)
                                             {
                                                if(!_loc3_)
                                                {
                                                   continue loop10;
                                                }
                                                §§push(§§pop() - 1);
                                             }
                                             _loc1_ = §§pop();
                                             if(_loc3_)
                                             {
                                                if(!_loc3_)
                                                {
                                                   if(!(_loc3_ || _loc1_))
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(_loc2_.§?s§());
                                                         if(!(_loc4_ && _loc1_))
                                                         {
                                                            continue loop1;
                                                         }
                                                         addr124:
                                                         addr125:
                                                         §§pop();
                                                         while(true)
                                                         {
                                                            break loop15;
                                                         }
                                                      }
                                                      continue loop1;
                                                      addr90:
                                                   }
                                                }
                                                if(false)
                                                {
                                                   break;
                                                }
                                                continue loop0;
                                                return false;
                                                addr73:
                                             }
                                             if(_loc3_ || _loc3_)
                                             {
                                                continue;
                                             }
                                             §§goto(addr125);
                                          }
                                          while(true)
                                          {
                                             §§push(_loc2_.§8!2§);
                                             if(_loc3_)
                                             {
                                                §§push(0);
                                                if(!_loc4_)
                                                {
                                                   addr63:
                                                   §§push(§§pop() > §§pop());
                                                   if(!(_loc3_ || _loc2_))
                                                   {
                                                      §§goto(addr133);
                                                   }
                                                   while(true)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         §§goto(addr36);
                                                      }
                                                      §§goto(addr73);
                                                      §§goto(addr63);
                                                   }
                                                }
                                                §§goto(addr196);
                                             }
                                             else
                                             {
                                                §§goto(addr194);
                                             }
                                          }
                                          addr36:
                                       }
                                       continue loop7;
                                       addr149:
                                    }
                                    else
                                    {
                                       addr172:
                                    }
                                    while(true)
                                    {
                                       if(_loc3_ || _loc1_)
                                       {
                                          §§pop();
                                          §§push(!_loc2_.§6D§());
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                §§push(false);
                                             }
                                             else
                                             {
                                                §§goto(addr90);
                                             }
                                             addr133:
                                             return §§pop();
                                          }
                                          addr130:
                                       }
                                    }
                                    §§goto(addr196);
                                 }
                              }
                              addr201:
                           }
                           §§goto(addr149);
                        }
                     }
                  }
               }
            }
         }
         return true;
      }
      
      public function §2Y§(param1:Boolean = false) : §3!,§
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc5_:* = 0;
         var _loc6_:§3!,§ = null;
         if(_loc7_)
         {
            if(!this.isPigsAlive())
            {
               if(_loc7_ || this)
               {
                  return null;
               }
            }
         }
         var _loc2_:int = this.§]!I§.length;
         §§push(1);
         if(_loc7_ || _loc2_)
         {
            §§push(int(§§pop() + Math.random() * this.§=T§(param1)));
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
                  if(!(_loc8_ && this))
                  {
                     _loc5_ = §§pop();
                     if(!_loc7_)
                     {
                        break;
                     }
                     do
                     {
                        §§push(_loc5_);
                     }
                     while(_loc7_ || this);
                     
                     continue loop1;
                     addr260:
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
                        continue loop0;
                     }
                     §§push(Boolean(_loc6_ = this.§]!I§[_loc5_]));
                     if(_loc7_ || param1)
                     {
                        §§push(§§pop());
                        if(!(_loc8_ && this))
                        {
                           if(§§pop())
                           {
                              if(_loc7_ || _loc3_)
                              {
                                 §§pop();
                                 §§push(_loc6_.§&l§());
                                 loop5:
                                 while(true)
                                 {
                                    §§push(Boolean(§§pop()));
                                    addr246:
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       addr247:
                                       loop21:
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             §§pop();
                                             §§push(_loc6_.§8!2§);
                                             loop16:
                                             while(true)
                                             {
                                                §§push(0);
                                                loop17:
                                                while(true)
                                                {
                                                   §§push(§§pop() > §§pop());
                                                   if(_loc8_ && _loc2_)
                                                   {
                                                   }
                                                   addr237:
                                                   loop22:
                                                   while(true)
                                                   {
                                                      §§push(!§§pop());
                                                      addr238:
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
                                                                  §§push(_loc6_.§3! §);
                                                                  loop9:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop().mTryToBlink);
                                                                     addr184:
                                                                     while(true)
                                                                     {
                                                                        if(!_loc8_)
                                                                        {
                                                                           §§push(0);
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop() <= §§pop());
                                                                              §§push(§§pop() <= §§pop());
                                                                              if(_loc8_ && this)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              if(!_loc7_)
                                                                              {
                                                                                 continue loop21;
                                                                              }
                                                                              if(§§pop())
                                                                              {
                                                                                 if(_loc7_ || param1)
                                                                                 {
                                                                                    continue loop5;
                                                                                 }
                                                                                 continue loop6;
                                                                              }
                                                                              addr165:
                                                                              §§push(0);
                                                                              if(!(_loc7_ || _loc2_))
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              if(_loc8_)
                                                                              {
                                                                                 continue loop17;
                                                                              }
                                                                              §§push(§§pop() <= §§pop());
                                                                              while(true)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    loop19:
                                                                                    while(true)
                                                                                    {
                                                                                       _loc4_++;
                                                                                       addr126:
                                                                                       while(_loc4_ >= _loc3_)
                                                                                       {
                                                                                          if(_loc7_)
                                                                                          {
                                                                                             if(_loc7_)
                                                                                             {
                                                                                                return _loc6_;
                                                                                             }
                                                                                             continue loop9;
                                                                                          }
                                                                                          continue loop19;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 addr108:
                                                                                 while(true)
                                                                                 {
                                                                                    _loc5_++;
                                                                                    if(_loc8_ && _loc3_)
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                    if(!(_loc7_ || this))
                                                                                    {
                                                                                       addr229:
                                                                                       §§push(param1);
                                                                                       if(_loc7_ || _loc2_)
                                                                                       {
                                                                                          continue loop22;
                                                                                       }
                                                                                       continue loop8;
                                                                                    }
                                                                                    if(true)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    §§goto(addr126);
                                                                                 }
                                                                                 §§goto(addr260);
                                                                              }
                                                                           }
                                                                           continue loop7;
                                                                           addr187:
                                                                        }
                                                                        continue loop16;
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr176);
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          while(!§§pop())
                                          {
                                             §§goto(addr108);
                                          }
                                          §§goto(addr229);
                                       }
                                    }
                                 }
                              }
                              §§goto(addr238);
                           }
                           §§goto(addr246);
                        }
                        §§goto(addr247);
                     }
                     §§goto(addr237);
                  }
               }
               addr287:
               return null;
            }
         }
      }
      
      public function §,u§() : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:* = 0;
         var _loc2_:* = int(this.§]!I§.length - 1);
         loop0:
         while(true)
         {
            §§push(_loc2_);
            §§push(0);
            if(_loc4_)
            {
               if(§§pop() < §§pop())
               {
                  if(!(_loc3_ && _loc1_))
                  {
                     if(!_loc3_)
                     {
                        if(_loc4_ || _loc3_)
                        {
                           §§push(_loc1_);
                           loop1:
                           while(true)
                           {
                              §§push(this.§;§.slingshot.§,u§());
                              addr74:
                              loop11:
                              while(_loc4_)
                              {
                                 if(_loc4_ || _loc1_)
                                 {
                                    §§push(§§pop() + §§pop());
                                    if(_loc4_)
                                    {
                                       §§push(int(§§pop()));
                                       loop12:
                                       while(_loc4_ || _loc3_)
                                       {
                                          addr104:
                                          _loc1_ = §§pop();
                                          while(!_loc3_)
                                          {
                                             if(_loc4_ || _loc2_)
                                             {
                                                §§push(_loc1_);
                                                if(!_loc3_)
                                                {
                                                   continue loop1;
                                                }
                                                continue loop12;
                                             }
                                             addr136:
                                             while(true)
                                             {
                                                §§push(_loc1_);
                                                addr137:
                                                while(true)
                                                {
                                                   §§push(§1r§.§5m§.getValue());
                                                   break loop11;
                                                }
                                             }
                                             §§goto(addr104);
                                          }
                                          continue loop0;
                                       }
                                       addr125:
                                       _loc2_ = §§pop();
                                       continue loop0;
                                    }
                                    while(true)
                                    {
                                       if(_loc4_)
                                       {
                                          §§push(int(§§pop()));
                                          loop3:
                                          while(true)
                                          {
                                             _loc1_ = §§pop();
                                             addr165:
                                             while(true)
                                             {
                                                continue loop3;
                                             }
                                          }
                                          addr164:
                                       }
                                       else
                                       {
                                          loop10:
                                          while(true)
                                          {
                                             _loc1_ = int(§§pop());
                                             addr180:
                                             while((this.§]!I§[_loc2_] as §3!,§).§83§())
                                             {
                                                §§goto(addr136);
                                                continue loop10;
                                             }
                                          }
                                          addr178:
                                       }
                                       while(true)
                                       {
                                          §§push(_loc2_);
                                          if(!(_loc3_ && _loc3_))
                                          {
                                             break;
                                          }
                                          §§goto(addr164);
                                       }
                                       §§goto(addr125);
                                    }
                                    addr161:
                                 }
                                 else
                                 {
                                    addr177:
                                    §§push(§§pop() + §§pop());
                                 }
                                 §§goto(addr178);
                              }
                              while(true)
                              {
                                 §§goto(addr161);
                              }
                           }
                        }
                        §§goto(addr180);
                     }
                     §§goto(addr165);
                  }
                  §§goto(addr105);
               }
               else
               {
                  §§push(_loc1_);
                  §§push((this.§]!I§[_loc2_] as §3!,§).§+!?§.score);
               }
               §§goto(addr177);
            }
            §§goto(addr74);
         }
         return §§pop();
      }
      
      public function §?n§(param1:§3!,§, param2:§3!,§) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            §§push(Boolean(param1.§?s§()));
            §§push(Boolean(param1.§?s§()));
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     addr127:
                     while(true)
                     {
                        §§push(param2.§?s§());
                        addr108:
                        while(true)
                        {
                           §§push(Boolean(§§pop()));
                        }
                     }
                  }
                  addr126:
               }
               §§goto(addr109);
            }
            addr125:
         }
         while(true)
         {
            §§push(!param1.§@G§());
            §§push(!param1.§@G§());
            if(!(_loc4_ && _loc3_))
            {
               if(§§pop())
               {
                  §§pop();
                  loop6:
                  for(; _loc3_ || param2; if(_loc4_ && param1)
                  {
                     continue;
                  },§§goto(addr24))
                  {
                     §§push(param2.§@G§());
                     loop7:
                     while(_loc3_)
                     {
                        §§push(!§§pop());
                        if(!(_loc4_ && param2))
                        {
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 addr24:
                                 §§push(false);
                                 if(_loc3_)
                                 {
                                    break;
                                 }
                                 continue loop7;
                              }
                              if(_loc4_ && _loc3_)
                              {
                                 continue loop6;
                              }
                              §§push(true);
                           }
                           return §§pop();
                           addr44:
                        }
                        return §§pop();
                     }
                     §§goto(addr108);
                  }
                  §§goto(addr127);
               }
               §§goto(addr44);
            }
            else
            {
               §§goto(addr125);
            }
            return §§pop();
         }
      }
      
      public function mightyEagleUsed() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.mSardineCanAdded = true;
         }
         do
         {
            this.§5i§ = 0;
         }
         while(!_loc2_);
         
      }
      
      public function objectCollision(param1:§3!,§, param2:§3!,§) : Boolean
      {
         var _loc20_:Boolean = true;
         var _loc21_:Boolean = false;
         var _loc18_:* = NaN;
         var _loc19_:* = NaN;
         if(this.mMightyEagleAdded)
         {
            §§push(Boolean(param1.§&0§()));
            §§push(Boolean(param1.§&0§()));
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     addr199:
                     while(true)
                     {
                        §§push(Boolean(param2.§&l§()));
                     }
                  }
                  addr198:
               }
               while(!§§pop())
               {
                  §§push(param2.§&0§());
                  loop4:
                  while(true)
                  {
                     §§push(Boolean(§§pop()));
                     loop5:
                     while(true)
                     {
                        §§push(§§pop());
                        loop6:
                        while(true)
                        {
                           if(!§§pop())
                           {
                              do
                              {
                                 §§pop();
                                 §§push(Boolean(param1.§&l§()));
                              }
                              while(_loc21_ && this);
                              
                           }
                           if(§§pop())
                           {
                              §§push(param1);
                              §§push(param1.§53§);
                              if(!_loc21_)
                              {
                                 §§push(§§pop() * 2);
                              }
                              §§pop().applyDamage(§§pop(),true,true,true,false);
                           }
                           else
                           {
                              while(true)
                              {
                                 §§push(this.§?n§(param1,param2));
                                 if(!(_loc21_ && param1))
                                 {
                                    if(§§pop())
                                    {
                                       if(!(_loc21_ && this))
                                       {
                                          if(_loc20_)
                                          {
                                             return false;
                                          }
                                          break;
                                       }
                                       loop9:
                                       while(true)
                                       {
                                          §§push(param1.§for§());
                                          if(!(_loc20_ || param2))
                                          {
                                             addr104:
                                             §§pop();
                                             §§push(param2.§for§());
                                             while(true)
                                             {
                                                if(!_loc20_)
                                                {
                                                   continue loop5;
                                                }
                                                §§push(Boolean(§§pop()));
                                                if(!_loc21_)
                                                {
                                                   if(!_loc21_)
                                                   {
                                                      break;
                                                   }
                                                   continue loop4;
                                                }
                                             }
                                             if(§§pop())
                                             {
                                                this.mMightyEagleTimer = 0;
                                                break;
                                             }
                                             break;
                                             addr52:
                                          }
                                          if(_loc20_)
                                          {
                                             §§push(Boolean(§§pop()));
                                             §§push(Boolean(§§pop()));
                                             if(!(_loc21_ && param2))
                                             {
                                                continue loop0;
                                             }
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                §§push(§§pop());
                                             }
                                             addr112:
                                          }
                                          while(true)
                                          {
                                             if(_loc21_ && this)
                                             {
                                                continue loop6;
                                             }
                                             if(!§§pop())
                                             {
                                                continue loop9;
                                             }
                                          }
                                          while(true)
                                          {
                                             if(!_loc21_)
                                             {
                                                §§pop();
                                                if(!_loc20_)
                                                {
                                                   return true;
                                                   addr158:
                                                }
                                                §§push(this.mMightyEagleTimer);
                                                if(!_loc21_)
                                                {
                                                   §§push(§§pop() == this.Tuner.MIGHTY_EAGLE_WAIT_TIME);
                                                   continue loop9;
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr198);
                                             }
                                          }
                                       }
                                       continue;
                                    }
                                    §§push(Number(10));
                                    var _loc3_:* = §§pop();
                                    §§push(param1.§3!'§(param2.§-X§()));
                                    if(!(_loc21_ && _loc3_))
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                    var _loc4_:* = §§pop();
                                    §§push(param1.§&F§(param2.§-X§()));
                                    if(_loc20_)
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                    var _loc5_:* = §§pop();
                                    §§push(param2.§3!'§(param1.§-X§()));
                                    if(!_loc21_)
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                    var _loc6_:* = §§pop();
                                    §§push(param2.§&F§(param1.§-X§()));
                                    if(_loc20_ || param2)
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                    var _loc7_:* = §§pop();
                                    §§push(param1.§`%§().GetMass());
                                    if(_loc20_ || param2)
                                    {
                                       §§push(param1.§`%§());
                                       if(!(_loc21_ && this))
                                       {
                                          §§push(§§pop().GetLinearVelocity().x);
                                          if(_loc20_ || _loc3_)
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(_loc20_)
                                             {
                                                addr278:
                                                §§push(param2.§`%§().GetMass());
                                                if(_loc20_)
                                                {
                                                   addr281:
                                                   §§push(§§pop() * param2.§`%§().GetLinearVelocity().x);
                                                }
                                                §§push(§§pop() - §§pop());
                                                if(_loc20_ || param1)
                                                {
                                                   addr294:
                                                   §§push(Number(§§pop()));
                                                }
                                             }
                                             var _loc8_:* = §§pop();
                                             §§push(param1.§`%§().GetMass());
                                             if(_loc20_ || param1)
                                             {
                                                §§push(param1.§`%§());
                                                if(_loc20_)
                                                {
                                                   §§push(§§pop().GetLinearVelocity().y);
                                                   if(_loc20_)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(_loc20_)
                                                      {
                                                         addr319:
                                                         §§push(param2.§`%§().GetMass());
                                                         if(!(_loc21_ && _loc3_))
                                                         {
                                                            addr327:
                                                            §§push(§§pop() * param2.§`%§().GetLinearVelocity().y);
                                                         }
                                                         §§push(§§pop() - §§pop());
                                                         if(!_loc21_)
                                                         {
                                                            §§push(Number(§§pop()));
                                                         }
                                                      }
                                                      var _loc9_:* = §§pop();
                                                      §§push(Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_) / _loc3_);
                                                      if(!_loc21_)
                                                      {
                                                         §§push(Number(§§pop()));
                                                      }
                                                      var _loc10_:* = §§pop();
                                                      §§push(_loc4_);
                                                      if(!(_loc21_ && _loc3_))
                                                      {
                                                         §§push(§§pop() * _loc10_);
                                                         if(_loc20_)
                                                         {
                                                            §§push(Number(§§pop()));
                                                         }
                                                      }
                                                      var _loc11_:* = §§pop();
                                                      §§push(_loc6_);
                                                      if(!_loc21_)
                                                      {
                                                         §§push(§§pop() * _loc10_);
                                                         if(_loc20_ || param2)
                                                         {
                                                            addr378:
                                                            §§push(Number(§§pop()));
                                                         }
                                                         var _loc12_:* = §§pop();
                                                         var _loc13_:Number = Math.max(0,param1.§8!2§);
                                                         var _loc14_:Number = Math.max(0,param2.§8!2§);
                                                         §§push(param1.applyDamage(_loc12_,true,param2.§?s§(),_loc14_ == param2.§53§));
                                                         if(!(_loc21_ && param2))
                                                         {
                                                            §§push(Number(§§pop()));
                                                         }
                                                         var _loc15_:* = §§pop();
                                                         §§push(param2.applyDamage(_loc11_,true,param1.§?s§(),_loc13_ == param1.§53§));
                                                         if(!_loc21_)
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
                                                               if(!_loc21_)
                                                               {
                                                                  § L§.log("--- NEW COLLISION ---");
                                                                  if(_loc20_)
                                                                  {
                                                                     §§push(§ L§);
                                                                     §§push("Mat Dam Factor1 = ");
                                                                     §§push(_loc4_);
                                                                     if(_loc20_ || _loc3_)
                                                                     {
                                                                        §§push(§§pop() + §§pop());
                                                                        §§push(" Mat Dam Factor2 = ");
                                                                        if(_loc20_ || param2)
                                                                        {
                                                                           §§push(§§pop() + §§pop());
                                                                           §§push(_loc6_);
                                                                           if(_loc20_ || this)
                                                                           {
                                                                              §§push(§§pop() + §§pop());
                                                                              §§push(" Mat Vel Factor1 = ");
                                                                              if(_loc20_ || this)
                                                                              {
                                                                                 §§push(§§pop() + §§pop());
                                                                                 §§push(_loc5_);
                                                                                 if(_loc20_)
                                                                                 {
                                                                                    addr989:
                                                                                    §§push(§§pop() + §§pop() + " Mat Vel Factor2 = ");
                                                                                    §§push(_loc7_);
                                                                                 }
                                                                              }
                                                                              §§goto(addr989);
                                                                           }
                                                                           §§pop().log(§§pop() + §§pop());
                                                                           §§push(§ L§);
                                                                           §§push("Object1: " + param1.§4V§);
                                                                           §§push(" force1 = ");
                                                                           if(!_loc21_)
                                                                           {
                                                                              §§push(§§pop() + §§pop());
                                                                              if(!(_loc21_ && param2))
                                                                              {
                                                                                 §§push(_loc11_);
                                                                                 if(_loc20_)
                                                                                 {
                                                                                    §§push(§§pop() + §§pop());
                                                                                    if(_loc20_)
                                                                                    {
                                                                                       §§push(" obj health1 = ");
                                                                                       if(_loc20_)
                                                                                       {
                                                                                          §§push(§§pop() + §§pop());
                                                                                          if(!(_loc21_ && param1))
                                                                                          {
                                                                                             §§push(_loc13_);
                                                                                             if(!_loc21_)
                                                                                             {
                                                                                                addr934:
                                                                                                addr922:
                                                                                                §§push(§§pop() + §§pop());
                                                                                                if(!(_loc21_ && _loc3_))
                                                                                                {
                                                                                                   addr931:
                                                                                                   §§push(§§pop() + " new health1 = ");
                                                                                                   §§push(_loc15_);
                                                                                                }
                                                                                                §§pop().log(§§pop());
                                                                                                §§push(§ L§);
                                                                                                §§push("Object2: " + param2.§4V§);
                                                                                                if(_loc20_)
                                                                                                {
                                                                                                   §§push(" force2 = ");
                                                                                                   if(!(_loc21_ && param2))
                                                                                                   {
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                      §§push(_loc12_);
                                                                                                      if(!_loc21_)
                                                                                                      {
                                                                                                         §§push(§§pop() + §§pop());
                                                                                                         if(_loc20_ || param2)
                                                                                                         {
                                                                                                            §§push(" obj health2 = ");
                                                                                                            if(_loc20_ || _loc3_)
                                                                                                            {
                                                                                                               addr883:
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                               §§push(_loc14_);
                                                                                                               if(_loc20_)
                                                                                                               {
                                                                                                                  addr880:
                                                                                                                  §§push(§§pop() + §§pop() + " new health2 = ");
                                                                                                                  §§push(_loc16_);
                                                                                                               }
                                                                                                               §§pop().log(§§pop() + §§pop());
                                                                                                               addr801:
                                                                                                               if(_loc15_ <= 0 && _loc12_ != 0)
                                                                                                               {
                                                                                                                  addr802:
                                                                                                                  addr825:
                                                                                                                  §§push(_loc12_);
                                                                                                                  §§push(_loc13_);
                                                                                                                  if(_loc20_)
                                                                                                                  {
                                                                                                                     addr807:
                                                                                                                     §§push(§§pop() - §§pop());
                                                                                                                     §§push(_loc12_);
                                                                                                                  }
                                                                                                                  §§push(Number(§§pop() / §§pop()));
                                                                                                                  if(!(_loc21_ && param1))
                                                                                                                  {
                                                                                                                     addr818:
                                                                                                                     §§push(_loc18_ = Number((_loc18_ = §§pop()) * _loc7_));
                                                                                                                  }
                                                                                                                  if(§§pop() > 1)
                                                                                                                  {
                                                                                                                     addr828:
                                                                                                                     _loc18_ = Number(1);
                                                                                                                     addr827:
                                                                                                                  }
                                                                                                                  if(_loc17_)
                                                                                                                  {
                                                                                                                     §§push(§ L§);
                                                                                                                     §§push(param1.§4V§ + " is killed. Speed Multiplier for ");
                                                                                                                     if(!(_loc21_ && param2))
                                                                                                                     {
                                                                                                                        §§push(§§pop() + param2.§4V§);
                                                                                                                        if(!(_loc21_ && param1))
                                                                                                                        {
                                                                                                                           §§push(§§pop() + " is ");
                                                                                                                           if(_loc20_ || this)
                                                                                                                           {
                                                                                                                              addr791:
                                                                                                                              §§push(§§pop() + _loc18_);
                                                                                                                           }
                                                                                                                           §§pop().log(§§pop());
                                                                                                                           addr794:
                                                                                                                           §§push(param2);
                                                                                                                           §§push(§§findproperty(b2Vec2));
                                                                                                                           §§push(param2.§`%§().GetLinearVelocity().x);
                                                                                                                           if(_loc20_ || _loc3_)
                                                                                                                           {
                                                                                                                              §§push(_loc18_);
                                                                                                                              if(_loc20_)
                                                                                                                              {
                                                                                                                                 addr746:
                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                 §§push(param2.§`%§().GetLinearVelocity().y);
                                                                                                                                 if(!_loc21_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() * _loc18_);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§pop().§use§(new §§pop().b2Vec2(§§pop(),§§pop()));
                                                                                                                              addr722:
                                                                                                                              §§push(_loc16_ <= 0);
                                                                                                                              §§push(_loc16_ <= 0);
                                                                                                                              if(_loc20_)
                                                                                                                              {
                                                                                                                                 if(§§pop())
                                                                                                                                 {
                                                                                                                                    addr726:
                                                                                                                                    §§pop();
                                                                                                                                    addr727:
                                                                                                                                    §§push(_loc11_);
                                                                                                                                    if(!_loc21_)
                                                                                                                                    {
                                                                                                                                       addr636:
                                                                                                                                       §§push(0);
                                                                                                                                       if(_loc20_)
                                                                                                                                       {
                                                                                                                                          addr639:
                                                                                                                                          if(§§pop() != §§pop())
                                                                                                                                          {
                                                                                                                                             if(!_loc21_)
                                                                                                                                             {
                                                                                                                                                §§push(_loc11_);
                                                                                                                                                §§push(_loc14_);
                                                                                                                                                if(!(_loc21_ && _loc3_))
                                                                                                                                                {
                                                                                                                                                   if(_loc20_ || param1)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() - §§pop());
                                                                                                                                                      if(_loc20_ || param2)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc11_);
                                                                                                                                                         if(_loc20_ || param1)
                                                                                                                                                         {
                                                                                                                                                            addr676:
                                                                                                                                                            §§push(§§pop() / §§pop());
                                                                                                                                                            if(!(_loc21_ && param1))
                                                                                                                                                            {
                                                                                                                                                               addr685:
                                                                                                                                                               §§push(_loc19_ = Number(§§pop()));
                                                                                                                                                               if(_loc20_ || param1)
                                                                                                                                                               {
                                                                                                                                                                  addr695:
                                                                                                                                                                  §§push(_loc5_);
                                                                                                                                                                  if(!_loc21_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(Number(§§pop() * §§pop()));
                                                                                                                                                                     if(_loc20_ || param2)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc20_)
                                                                                                                                                                        {
                                                                                                                                                                           addr711:
                                                                                                                                                                           if((_loc19_ = §§pop()) > 1)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(1);
                                                                                                                                                                              if(!_loc21_)
                                                                                                                                                                              {
                                                                                                                                                                                 _loc19_ = Number(§§pop());
                                                                                                                                                                                 addr717:
                                                                                                                                                                                 §§push(_loc17_);
                                                                                                                                                                                 if(_loc20_ || param2)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!_loc21_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(§§pop())
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc20_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§ L§);
                                                                                                                                                                                             §§push(param2.§4V§ + " is killed. Speed Multiplier for ");
                                                                                                                                                                                             if(_loc20_ || param2)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop() + param1.§4V§);
                                                                                                                                                                                                if(!_loc21_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop() + " is ");
                                                                                                                                                                                                   if(_loc21_ && param1)
                                                                                                                                                                                                   {
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr615:
                                                                                                                                                                                                   §§pop().log(§§pop());
                                                                                                                                                                                                   addr616:
                                                                                                                                                                                                   if(_loc20_ || _loc3_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!(_loc21_ && this))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr544:
                                                                                                                                                                                                         §§push(param1);
                                                                                                                                                                                                         §§push(§§findproperty(b2Vec2));
                                                                                                                                                                                                         §§push(param1.§`%§().GetLinearVelocity().x);
                                                                                                                                                                                                         if(_loc20_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(_loc19_);
                                                                                                                                                                                                            if(_loc20_ || this)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr562:
                                                                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                                                                               §§push(param1.§`%§().GetLinearVelocity().y);
                                                                                                                                                                                                               if(!_loc21_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§pop() * _loc19_);
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§pop().§use§(new §§pop().b2Vec2(§§pop(),§§pop()));
                                                                                                                                                                                                            addr499:
                                                                                                                                                                                                            addr572:
                                                                                                                                                                                                            §§push(_loc15_);
                                                                                                                                                                                                            §§push(0);
                                                                                                                                                                                                            if(_loc20_ || this)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!_loc21_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§pop() <= §§pop());
                                                                                                                                                                                                                  if(!(_loc21_ && param1))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!_loc21_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc20_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(_loc20_ || param1)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(§§pop());
                                                                                                                                                                                                                              if(_loc20_ || this)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(§§pop())
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr536:
                                                                                                                                                                                                                                    §§pop();
                                                                                                                                                                                                                                    if(!_loc21_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(_loc20_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(_loc20_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(_loc16_);
                                                                                                                                                                                                                                             if(!(_loc21_ && _loc3_))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(!(_loc21_ && param2))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(0);
                                                                                                                                                                                                                                                   if(_loc20_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(_loc20_ || this)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(§§pop() <= §§pop());
                                                                                                                                                                                                                                                         if(!(_loc21_ && param2))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(!(_loc20_ || param1))
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§goto(addr722);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr482);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr536);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr636);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr499);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr685);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr499);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr717);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr616);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr572);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 addr482:
                                                                                                                                                                                                                                 return §§pop();
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr722);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr799);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr801);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr726);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr536);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr722);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr711);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr562);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr802);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr794);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§push(§§pop() + _loc19_);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr615);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr727);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr544);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr639);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr827);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr717);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr828);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr722);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr818);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr685);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr695);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr807);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr818);
                                                                                                                                                }
                                                                                                                                                §§goto(addr676);
                                                                                                                                             }
                                                                                                                                             §§goto(addr717);
                                                                                                                                          }
                                                                                                                                          §§goto(addr499);
                                                                                                                                       }
                                                                                                                                       §§goto(addr825);
                                                                                                                                    }
                                                                                                                                    §§goto(addr685);
                                                                                                                                 }
                                                                                                                                 §§goto(addr639);
                                                                                                                              }
                                                                                                                              §§goto(addr801);
                                                                                                                           }
                                                                                                                           §§goto(addr746);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr791);
                                                                                                                  }
                                                                                                                  §§goto(addr794);
                                                                                                               }
                                                                                                               §§goto(addr722);
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr880);
                                                                                                }
                                                                                                §§goto(addr883);
                                                                                             }
                                                                                             §§goto(addr934);
                                                                                             §§push(§§pop() + §§pop());
                                                                                          }
                                                                                          §§goto(addr934);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr931);
                                                                                 }
                                                                                 §§goto(addr922);
                                                                              }
                                                                              §§goto(addr934);
                                                                           }
                                                                           §§goto(addr931);
                                                                        }
                                                                     }
                                                                     §§goto(addr989);
                                                                  }
                                                               }
                                                               §§goto(addr837);
                                                            }
                                                            §§goto(addr883);
                                                         }
                                                         §§goto(addr536);
                                                      }
                                                      §§goto(addr378);
                                                   }
                                                   §§goto(addr327);
                                                }
                                             }
                                             §§goto(addr319);
                                          }
                                          §§goto(addr281);
                                       }
                                       §§goto(addr278);
                                    }
                                    §§goto(addr294);
                                 }
                                 §§goto(addr52);
                              }
                              §§goto(addr199);
                           }
                           §§goto(addr158);
                        }
                     }
                  }
               }
               §§push(param2);
               §§push(param2.§53§);
               if(_loc20_)
               {
                  §§push(§§pop() * 2);
               }
               §§pop().applyDamage(§§pop(),true,true,true,false);
               return true;
            }
         }
         else
         {
            §§push(Boolean(this.mSardineCanAdded));
         }
         §§goto(addr112);
      }
      
      public function §`!'§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§3!,§ = null;
         var _loc1_:* = int(this.§]!I§.length - 1);
         loop0:
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§]!I§[_loc1_] as §3!,§;
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
                  if(!§§pop())
                  {
                     loop5:
                     while(true)
                     {
                        if(§§pop())
                        {
                           loop6:
                           while(_loc3_ || _loc1_)
                           {
                              this.§`!%§(_loc1_,true,true,true);
                              while(true)
                              {
                              }
                              if(_loc4_ && _loc3_)
                              {
                                 continue;
                              }
                              if(true)
                              {
                                 break loop5;
                              }
                              while(true)
                              {
                                 §§push(_loc2_.§&l§());
                                 if(_loc4_)
                                 {
                                    continue loop1;
                                 }
                                 if(!(_loc4_ && _loc2_))
                                 {
                                    §§push(Boolean(§§pop()));
                                    continue loop1;
                                 }
                                 addr134:
                                 while(true)
                                 {
                                    §§pop();
                                    break loop6;
                                 }
                              }
                              continue loop1;
                              addr75:
                           }
                           while(true)
                           {
                              §§goto(addr75);
                           }
                        }
                        while(true)
                        {
                           §§push(_loc1_);
                           if(_loc3_ || _loc3_)
                           {
                              §§push(§§pop() - 1);
                           }
                           _loc1_ = §§pop();
                           if(_loc4_ && _loc3_)
                           {
                              continue;
                           }
                           §§goto(addr66);
                        }
                     }
                     continue loop0;
                     addr95:
                  }
                  §§goto(addr134);
               }
            }
            §§goto(addr120);
         }
      }
      
      public function §]W§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§3!,§ = null;
         var _loc1_:* = int(this.§]!I§.length - 1);
         loop0:
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§]!I§[_loc1_] as §3!,§;
            if(_loc4_ || _loc1_)
            {
               §§push(_loc2_ == null);
               loop1:
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
                              while(_loc4_ || _loc3_)
                              {
                                 this.§`!%§(_loc1_,true,true,true);
                                 loop4:
                                 while(true)
                                 {
                                    addr44:
                                    while(true)
                                    {
                                       §§push(_loc1_);
                                       if(!(_loc3_ && _loc1_))
                                       {
                                          §§push(§§pop() - 1);
                                       }
                                       _loc1_ = §§pop();
                                       if(_loc4_ || this)
                                       {
                                          if(_loc4_ || _loc2_)
                                          {
                                             if(true)
                                             {
                                                break loop2;
                                                addr81:
                                             }
                                             loop6:
                                             while(true)
                                             {
                                                §§push(_loc2_.§51§());
                                                if(_loc3_)
                                                {
                                                   break;
                                                }
                                                if(_loc4_ || this)
                                                {
                                                   continue loop1;
                                                }
                                                addr135:
                                                while(true)
                                                {
                                                   §§pop();
                                                   continue loop6;
                                                }
                                             }
                                             continue loop2;
                                          }
                                          continue loop3;
                                       }
                                       continue loop4;
                                    }
                                 }
                              }
                              while(true)
                              {
                                 §§goto(addr81);
                              }
                              addr136:
                           }
                           §§goto(addr44);
                        }
                        continue loop0;
                        addr112:
                     }
                  }
                  §§goto(addr135);
               }
            }
            §§goto(addr136);
         }
      }
      
      public function §8G§() : int
      {
         return this.§]!I§.length;
      }
      
      public function §^!#§(param1:§[z§) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc4_:§3!,§ = null;
         var _loc5_:§72§ = null;
         var _loc6_:§3,§ = null;
         var _loc7_:§=z§ = null;
         var _loc2_:* = Number(0);
         loop0:
         while(true)
         {
            §§push(_loc2_);
            if(_loc8_)
            {
               if(§§pop() >= this.§]!I§.length)
               {
                  §§push(Number(0));
                  break;
               }
               if((_loc4_ = this.§]!I§[_loc2_]).isGround())
               {
                  if(!_loc8_)
                  {
                     continue;
                  }
               }
               else
               {
                  (_loc5_ = new §72§()).angle = _loc4_.§'!I§();
                  if(!(_loc9_ && param1))
                  {
                     _loc5_.id = _loc4_.§4V§;
                     loop1:
                     while(true)
                     {
                        _loc5_.x = _loc4_.§`%§().GetPosition().x;
                        while(true)
                        {
                           _loc5_.y = _loc4_.§`%§().GetPosition().y;
                           while(_loc8_)
                           {
                              if(!(_loc9_ && param1))
                              {
                                 addr79:
                                 if(false)
                                 {
                                    while(true)
                                    {
                                       _loc5_.uniqueID = _loc4_.uniqueID;
                                       continue loop1;
                                       §§goto(addr79);
                                    }
                                    addr127:
                                    §§push(_loc2_);
                                    if(!_loc9_)
                                    {
                                       §§push(§§pop() + 1);
                                       if(_loc8_ || param1)
                                       {
                                          §§push(Number(§§pop()));
                                       }
                                    }
                                    addr81:
                                 }
                                 else
                                 {
                                    §§goto(addr127);
                                 }
                                 _loc2_ = §§pop();
                                 continue loop0;
                              }
                           }
                        }
                     }
                  }
                  while(true)
                  {
                     §§goto(addr81);
                  }
               }
               §§goto(addr127);
            }
            break;
         }
         var _loc3_:* = §§pop();
         if(!(_loc9_ && _loc3_))
         {
            while(_loc3_ < this.§0b§.length)
            {
               _loc7_ = this.§0b§[_loc3_];
               _loc6_ = new §3,§(_loc7_.type,_loc7_.index1,_loc7_.index2,_loc7_.point1,_loc7_.point2,_loc7_.§<!#§,_loc7_.§%H§,_loc7_.lowerLimit,_loc7_.upperLimit,_loc7_.§9!0§,_loc7_.motorSpeed,_loc7_.§@L§,_loc7_.maxTorque);
               if(!(_loc9_ && _loc2_))
               {
                  param1.§%y§(_loc6_);
                  if(_loc8_ || _loc2_)
                  {
                     §§push(_loc3_);
                     if(_loc8_)
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
      
      public function §7!@§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:int = 0;
         while(true)
         {
            if(this.§]!I§.length > _loc1_)
            {
               if(this.§]!I§[_loc1_].isGround())
               {
                  if(!_loc3_)
                  {
                     _loc1_++;
                  }
               }
               else
               {
                  this.§^I§(this.§]!I§[_loc1_]);
                  addr59:
                  if(_loc2_ || this)
                  {
                     continue;
                  }
               }
               continue;
            }
            if(!_loc3_)
            {
               break;
            }
            §§goto(addr59);
         }
      }
      
      public function §6E§(param1:Point, param2:Point) : Array
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
               if(_loc5_)
               {
                  if(§§pop() >= this.§]!I§.length)
                  {
                     if(_loc5_)
                     {
                        break;
                     }
                     while(true)
                     {
                        if(!_loc6_)
                        {
                           addr59:
                           if(_loc5_ || this)
                           {
                              break;
                           }
                           addr93:
                           while(true)
                           {
                              _loc3_.push(this.§]!I§[_loc4_]);
                              §§goto(addr59);
                           }
                        }
                        while(true)
                        {
                        }
                     }
                     continue;
                     addr57:
                  }
                  else if(this.§]!I§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
                  {
                     §§goto(addr93);
                  }
                  while(true)
                  {
                     §§push(_loc4_);
                     if(_loc5_)
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
               §§goto(addr57);
            }
         }
         return _loc3_;
      }
      
      public function setGroundTextureEnabled(param1:Boolean) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§4!2§ = param1;
            if(!(_loc3_ && param1))
            {
               addr29:
               this.§6?§(param1);
            }
            var _loc2_:* = Number(0);
            while(true)
            {
               §§push(_loc2_);
               if(!(_loc3_ && this))
               {
                  if(§§pop() >= this.§]!I§.length)
                  {
                     if(_loc3_ && param1)
                     {
                        continue;
                     }
                     if(_loc4_ || this)
                     {
                        break;
                     }
                     addr125:
                  }
                  else if(this.§]!I§[_loc2_].isTexture())
                  {
                     if(_loc4_ || param1)
                     {
                        this.§]!I§[_loc2_].sprite.visible = !this.§4!2§;
                     }
                     §§goto(addr125);
                  }
                  §§push(_loc2_);
                  if(_loc4_)
                  {
                     §§push(§§pop() + 1);
                     if(_loc4_ || _loc2_)
                     {
                     }
                     addr99:
                     _loc2_ = §§pop();
                     continue;
                  }
                  §§push(Number(§§pop()));
               }
               §§goto(addr99);
            }
            return;
         }
         §§goto(addr29);
      }
      
      public function setDamageEnabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§?!L§ = param1;
         }
      }
      
      public function §6!8§() : Boolean
      {
         return this.§?!L§;
      }
      
      public function §,d§() : int
      {
         return this.§?j§;
      }
      
      public function §9Y§() : int
      {
         return this.§&!4§;
      }
      
      public function §[!H§(param1:String) : §3!,§
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§3!,§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§]!I§.length)
         {
            _loc3_ = this.§]!I§[_loc2_] as §3!,§;
            if(!(_loc4_ && _loc3_))
            {
               if(_loc3_.uniqueID == param1)
               {
                  if(_loc5_ || _loc3_)
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
