package §_-Qx§
{
   import §_-IG§.§_-1E§;
   import §_-IG§.§_-Hj§;
   import §_-IG§.§_-Jx§;
   import §_-OJ§.§_-LW§;
   import §_-hq§.§_-AD§;
   import §_-mJ§.*;
   
   public class §_-Wv§
   {
       
      
      public var §_-OI§:Number = 0;
      
      public var §_-tP§:Number = 0;
      
      public var §_-yZ§:Vector.<§_-1E§> = null;
      
      public var §_-zK§:Vector.<§_-Jx§> = null;
      
      public var §_-kP§:Vector.<§_-Hj§> = null;
      
      public var §_-Pg§:Vector.<§_-7x§> = null;
      
      public var §_-Sb§:Number = 0;
      
      public var §_-Jo§:Boolean = false;
      
      public var §_-Xf§:Number = 0;
      
      public var §for §:Number = 0;
      
      public var §_-7R§:Number = 0;
      
      public var §_-Tt§:String = null;
      
      public var mName:String = null;
      
      public function §_-Wv§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
            if(!_loc2_)
            {
               this.§_-Pg§ = new Vector.<§_-7x§>();
               if(!_loc2_)
               {
                  this.§_-yZ§ = new Vector.<§_-1E§>();
                  if(_loc1_ || _loc1_)
                  {
                     this.§_-zK§ = new Vector.<§_-Jx§>();
                     addr47:
                     if(_loc1_)
                     {
                        addr62:
                        this.§_-kP§ = new Vector.<§_-Hj§>();
                     }
                  }
                  §§goto(addr62);
               }
               return;
            }
            §§goto(addr62);
         }
         §§goto(addr47);
      }
      
      public static function §_-D5§(param1:String) : §_-Wv§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§_-Wv§ = new §_-Wv§();
         if(!_loc3_)
         {
            _loc2_.§_-8J§(param1);
         }
         return _loc2_;
      }
      
      public static function §_-4s§(param1:String) : §_-Wv§
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:§_-Wv§ = §_-D5§(param1);
         if(!(_loc5_ && §_-Wv§))
         {
            _loc2_.§_-OI§ = _loc2_.§_-zK§[0].x;
            if(!(_loc5_ && _loc3_))
            {
               _loc2_.§_-tP§ = _loc2_.§_-zK§[0].y - 8.5;
            }
         }
         var _loc3_:* = Number(0);
         while(true)
         {
            §§push(_loc3_);
            while(true)
            {
               if(§§pop() < _loc2_.§_-yZ§.length)
               {
                  _loc2_.§_-yZ§[_loc3_].angle = 360 - _loc2_.§_-yZ§[_loc3_].angle;
                  if(!(_loc4_ || §_-Wv§))
                  {
                     break;
                  }
                  §§push(_loc3_);
                  if(!(_loc4_ || _loc2_))
                  {
                     continue;
                  }
                  §§push(§§pop() + 1);
                  if(!(_loc4_ || _loc3_))
                  {
                     continue;
                  }
                  §§push(Number(§§pop()));
                  if(_loc5_ && _loc3_)
                  {
                     continue;
                  }
                  _loc3_ = §§pop();
                  if(!_loc5_)
                  {
                     break;
                  }
               }
               return _loc2_;
            }
         }
      }
      
      protected static function §_-Ep§(param1:int, param2:Object) : Vector.<§_-Hj§>
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc5_:Object = null;
         var _loc6_:§_-Hj§ = null;
         var _loc3_:Vector.<§_-Hj§> = new Vector.<§_-Hj§>();
         var _loc4_:int = 1;
         while(_loc4_ <= param1)
         {
            if((_loc5_ = param2["joint_" + _loc4_]) != null)
            {
               if(_loc7_ && _loc3_)
               {
                  continue;
               }
               (_loc6_ = new §_-Hj§(_loc5_.type,_loc5_.index1,_loc5_.index2)).p1.setTo(_loc5_.x1,_loc5_.y1);
               _loc6_.p2.setTo(_loc5_.x2,_loc5_.y2);
               _loc6_.collideConnected = _loc5_.collideConnected;
               if(!(_loc7_ && param1))
               {
                  if(_loc6_.type == §_-Hj§.§_-3H§)
                  {
                     _loc6_.limit = _loc5_.limit;
                     _loc6_.backAndForth = _loc5_.backAndForth;
                     _loc6_.motor = _loc5_.motor;
                     _loc6_.motorSpeed = _loc5_.motorSpeed;
                     addr110:
                     _loc6_.lowerLimit = _loc5_.lowerLimit;
                     _loc6_.upperLimit = _loc5_.upperLimit;
                     _loc6_.maxTorque = _loc5_.maxTorque;
                     if(_loc8_ || param1)
                     {
                     }
                     addr139:
                     _loc4_++;
                     continue;
                  }
                  _loc3_.push(_loc6_);
                  §§goto(addr139);
               }
            }
            §§goto(addr110);
         }
         return _loc3_;
      }
      
      public static function §_-9E§(param1:XML) : §_-Wv§
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc3_:XML = null;
         var _loc4_:XML = null;
         var _loc5_:XML = null;
         var _loc6_:§_-7x§ = null;
         var _loc7_:§_-1E§ = null;
         var _loc8_:§_-Jx§ = null;
         var _loc2_:§_-Wv§ = new §_-Wv§();
         _loc2_.§_-Sb§ = param1.@LevelExtension;
         if(_loc11_ || _loc2_)
         {
            _loc2_.§_-Jo§ = param1.@AutoCamera.toString().toUpperCase() == "TRUE";
            _loc2_.§_-Xf§ = parseInt(param1.@scoreSilver);
            _loc2_.§for § = parseInt(param1.@scoreGold);
            if(_loc11_ || §_-Wv§)
            {
               _loc2_.§_-Tt§ = param1.@background;
               _loc2_.§_-OI§ = parseFloat(param1.Slingshot.@x);
               _loc2_.§_-tP§ = parseFloat(param1.Slingshot.@y);
               _loc2_.§_-Pg§ = new Vector.<§_-7x§>();
               if(!(_loc12_ && _loc3_))
               {
                  _loc2_.§_-zK§ = new Vector.<§_-Jx§>();
                  addr110:
                  _loc2_.§_-yZ§ = new Vector.<§_-1E§>();
               }
               §§goto(addr110);
            }
            var _loc9_:* = 0;
            var _loc10_:* = param1.Cameras.Camera;
            loop0:
            while(true)
            {
               §§push(§§hasnext(_loc10_,_loc9_));
               if(!(_loc12_ && _loc3_))
               {
                  if(!§§pop())
                  {
                     if(_loc11_ || _loc3_)
                     {
                        if(!_loc12_)
                        {
                           if(_loc11_)
                           {
                              §§push(0);
                              if(!_loc12_)
                              {
                                 _loc9_ = §§pop();
                                 if(_loc11_ || _loc3_)
                                 {
                                    _loc10_ = param1.Item;
                                    while(true)
                                    {
                                       §§push(§§hasnext(_loc10_,_loc9_));
                                       if(!(_loc12_ && _loc3_))
                                       {
                                          break loop0;
                                       }
                                       break;
                                    }
                                    loop2:
                                    for(; §§pop(); while(true)
                                    {
                                       continue loop2;
                                    })
                                    {
                                       _loc5_ = §§nextvalue(_loc9_,_loc10_);
                                       (_loc8_ = new §_-Jx§()).id = _loc5_.@id.toString();
                                       if(_loc11_)
                                       {
                                          _loc8_.x = parseFloat(_loc5_.@x);
                                          if(!(_loc11_ || _loc3_))
                                          {
                                             continue;
                                          }
                                       }
                                       _loc8_.y = parseFloat(_loc5_.@y) - 50;
                                       if(!(_loc12_ && _loc2_))
                                       {
                                          _loc2_.§_-zK§.push(_loc8_);
                                       }
                                    }
                                    addr412:
                                    return _loc2_;
                                    addr411:
                                    addr410:
                                    addr304:
                                    addr409:
                                 }
                                 addr345:
                                 _loc10_ = param1.Slingshot.Birds.Bird;
                                 §§goto(addr408);
                              }
                              addr337:
                              _loc9_ = §§pop();
                              if(!(_loc12_ && _loc2_))
                              {
                                 §§goto(addr345);
                              }
                              §§goto(addr411);
                           }
                           addr336:
                           §§goto(addr337);
                           §§push(0);
                        }
                        §§goto(addr411);
                     }
                     addr320:
                     if(!(_loc12_ && param1))
                     {
                        if(_loc11_ || _loc3_)
                        {
                           §§goto(addr336);
                        }
                     }
                     §§goto(addr412);
                  }
                  else
                  {
                     _loc3_ = §§nextvalue(_loc9_,_loc10_);
                     (_loc6_ = new §_-7x§()).x = parseFloat(_loc3_.@x);
                     _loc6_.y = parseFloat(_loc3_.@y) - 50;
                     _loc6_.left = parseFloat(_loc3_.@leftBorder);
                     if(_loc11_ || §_-Wv§)
                     {
                        _loc6_.right = parseFloat(_loc3_.@rightBorder);
                        if(_loc11_ || _loc2_)
                        {
                           _loc6_.top = parseFloat(_loc3_.@topBorder);
                           _loc6_.bottom = parseFloat(_loc3_.@bottomBorder);
                           if(!_loc11_)
                           {
                              continue;
                           }
                           _loc6_.scale = parseFloat(_loc3_.@scale);
                           if(!_loc11_)
                           {
                              continue;
                           }
                           _loc6_.id = _loc3_.@id.toString();
                           addr196:
                           if(_loc12_)
                           {
                              continue;
                           }
                        }
                        _loc2_.§_-Pg§.push(_loc6_);
                        continue;
                     }
                     §§goto(addr196);
                  }
               }
               break;
            }
            while(true)
            {
               if(!§§pop())
               {
                  if(_loc11_ || _loc2_)
                  {
                     §§goto(addr320);
                  }
                  §§goto(addr410);
               }
               else
               {
                  _loc4_ = §§nextvalue(_loc9_,_loc10_);
                  (_loc7_ = new §_-1E§()).id = _loc4_.@id.toString();
                  if(_loc11_ || _loc2_)
                  {
                     _loc7_.x = parseFloat(_loc4_.@x);
                     if(_loc11_)
                     {
                        addr282:
                        _loc7_.y = parseFloat(_loc4_.@y) - 50;
                        if(_loc11_)
                        {
                           _loc7_.angle = parseFloat(_loc4_.@rotation);
                           if(!_loc12_)
                           {
                              addr300:
                              _loc2_.§_-yZ§.push(_loc7_);
                           }
                           §§goto(addr304);
                        }
                     }
                     §§goto(addr300);
                  }
                  §§goto(addr282);
               }
            }
         }
         §§goto(addr110);
      }
      
      public function §_-8J§(param1:String) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc4_:§_-7x§ = null;
         var _loc5_:Object = null;
         var _loc6_:§_-Jx§ = null;
         var _loc7_:Object = null;
         var _loc8_:§_-1E§ = null;
         var _loc2_:Object = §_-AD§.§_-Ae§(param1);
         this.§_-Sb§ = _loc2_.LevelExtension;
         this.§_-Jo§ = false;
         this.§_-Xf§ = _loc2_.scoreSilver;
         this.§for § = _loc2_.scoreGold;
         if(_loc10_)
         {
            this.§_-7R§ = _loc2_.scoreEagle;
            if(_loc10_ || param1)
            {
               this.§_-Tt§ = _loc2_.theme;
               if(!_loc9_)
               {
                  this.mName = _loc2_.name;
                  if(!(_loc9_ && param1))
                  {
                     addr79:
                     if(_loc2_.counts.joints)
                     {
                        addr83:
                        this.§_-kP§ = §_-Ep§(_loc2_.counts.joints,_loc2_.world);
                        if(_loc9_)
                        {
                        }
                        addr102:
                        this.§_-zK§ = new Vector.<§_-Jx§>();
                        if(!_loc9_)
                        {
                           addr110:
                           this.§_-yZ§ = new Vector.<§_-1E§>();
                           addr116:
                           var _loc3_:* = Number(0);
                           loop0:
                           while(true)
                           {
                              §§push(_loc3_);
                              if(!_loc9_)
                              {
                                 if(§§pop() >= _loc2_.camera.length)
                                 {
                                    if(!_loc9_)
                                    {
                                       §§push(1);
                                       if(!_loc9_)
                                       {
                                          §§push(Number(§§pop()));
                                          if(!_loc9_)
                                          {
                                             _loc3_ = §§pop();
                                             if(_loc10_ || _loc3_)
                                             {
                                                while(true)
                                                {
                                                   §§push(_loc3_);
                                                   if(!_loc9_)
                                                   {
                                                      if(§§pop() > _loc2_.counts.birds)
                                                      {
                                                         addr290:
                                                         §§push(Number(1));
                                                         if(_loc10_)
                                                         {
                                                            break loop0;
                                                         }
                                                         break;
                                                      }
                                                      _loc5_ = _loc2_.world["bird_" + _loc3_];
                                                      (_loc6_ = new §_-Jx§()).x = _loc5_.x;
                                                      if(!_loc9_)
                                                      {
                                                         _loc6_.y = _loc5_.y;
                                                         if(!_loc9_)
                                                         {
                                                            addr257:
                                                            _loc6_.id = _loc5_.id;
                                                            if(!(_loc10_ || _loc2_))
                                                            {
                                                               continue;
                                                            }
                                                            this.§_-zK§.push(_loc6_);
                                                            if(_loc9_)
                                                            {
                                                               continue;
                                                            }
                                                         }
                                                         §§push(_loc3_);
                                                         if(!_loc9_)
                                                         {
                                                            §§push(§§pop() + 1);
                                                            if(!_loc9_)
                                                            {
                                                               §§push(Number(§§pop()));
                                                            }
                                                         }
                                                         _loc3_ = §§pop();
                                                         continue;
                                                      }
                                                      §§goto(addr257);
                                                   }
                                                   break;
                                                }
                                                loop2:
                                                for(; §§pop() <= _loc2_.counts.blocks; while(true)
                                                {
                                                   continue loop2;
                                                })
                                                {
                                                   _loc7_ = _loc2_.world["block_" + _loc3_];
                                                   (_loc8_ = new §_-1E§()).x = _loc7_.x;
                                                   if(!(_loc9_ && this))
                                                   {
                                                      _loc8_.y = _loc7_.y;
                                                      if(!_loc9_)
                                                      {
                                                         addr325:
                                                         _loc8_.id = _loc7_.id;
                                                         if(!(_loc9_ && param1))
                                                         {
                                                            addr336:
                                                            _loc8_.angle = _loc7_.angle;
                                                            if(!_loc9_)
                                                            {
                                                               this.§_-yZ§.push(_loc8_);
                                                               if(_loc9_ && this)
                                                               {
                                                                  continue;
                                                               }
                                                            }
                                                         }
                                                         §§push(_loc3_);
                                                         if(!_loc9_)
                                                         {
                                                            §§push(§§pop() + 1);
                                                            if(_loc10_)
                                                            {
                                                               §§push(Number(§§pop()));
                                                            }
                                                         }
                                                         _loc3_ = §§pop();
                                                         continue;
                                                      }
                                                      §§goto(addr336);
                                                   }
                                                   §§goto(addr325);
                                                }
                                                this.§_-OI§ = _loc2_.slingshotX;
                                             }
                                             this.§_-tP§ = _loc2_.slingshotY;
                                             return;
                                          }
                                          break;
                                       }
                                    }
                                    §§goto(addr290);
                                 }
                                 else
                                 {
                                    (_loc4_ = new §_-7x§()).x = _loc2_.camera[_loc3_].x;
                                    if(_loc10_)
                                    {
                                       _loc4_.y = _loc2_.camera[_loc3_].y;
                                       if(_loc10_)
                                       {
                                          _loc4_.left = _loc2_.camera[_loc3_].left;
                                          _loc4_.right = _loc2_.camera[_loc3_].right;
                                          if(_loc9_)
                                          {
                                             continue;
                                          }
                                          _loc4_.top = _loc2_.camera[_loc3_].top;
                                          if(_loc10_)
                                          {
                                             _loc4_.bottom = _loc2_.camera[_loc3_].bottom;
                                             _loc4_.id = _loc2_.camera[_loc3_].id;
                                             if(_loc10_ || _loc3_)
                                             {
                                                addr196:
                                                this.§_-Pg§.push(_loc4_);
                                             }
                                          }
                                          §§goto(addr196);
                                       }
                                       §§push(_loc3_);
                                       if(_loc10_)
                                       {
                                          §§push(§§pop() + 1);
                                          if(_loc10_)
                                          {
                                             addr206:
                                             §§push(Number(§§pop()));
                                          }
                                          _loc3_ = §§pop();
                                          continue;
                                       }
                                       §§goto(addr206);
                                    }
                                    §§goto(addr196);
                                 }
                              }
                              break;
                           }
                           _loc3_ = §§pop();
                           §§goto(addr361);
                        }
                        §§goto(addr116);
                     }
                     this.§_-Pg§ = new Vector.<§_-7x§>();
                     if(!_loc9_)
                     {
                        §§goto(addr102);
                     }
                     §§goto(addr110);
                  }
                  §§goto(addr83);
               }
               §§goto(addr79);
            }
            §§goto(addr83);
         }
         §§goto(addr110);
      }
      
      public function §_-KF§() : Object
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:Object = new Object();
         if(_loc4_)
         {
            _loc1_.LevelExtension = this.§_-Sb§;
            if(_loc4_)
            {
               _loc1_.scoreSilver = this.§_-Xf§;
               if(!(_loc3_ && this))
               {
                  _loc1_.scoreGold = this.§for §;
                  if(!(_loc3_ && _loc2_))
                  {
                     addr48:
                     _loc1_.scoreEagle = this.§_-7R§;
                     if(!(_loc3_ && _loc3_))
                     {
                        _loc1_.theme = this.§_-Tt§;
                        if(_loc4_ || _loc3_)
                        {
                        }
                        addr76:
                        _loc1_.camera = this.§_-Pg§;
                        addr80:
                        var _loc2_:* = Number(0);
                        if(!_loc3_)
                        {
                           _loc1_.world = new Object();
                           if(!_loc3_)
                           {
                              _loc2_ = Number(0);
                           }
                        }
                        while(true)
                        {
                           §§push(_loc2_);
                           if(!(_loc3_ && _loc3_))
                           {
                              if(§§pop() >= this.§_-zK§.length)
                              {
                                 if(_loc4_)
                                 {
                                    §§push(0);
                                    if(!(_loc3_ && _loc1_))
                                    {
                                       §§push(Number(§§pop()));
                                       if(_loc4_)
                                       {
                                          _loc2_ = §§pop();
                                          if(_loc4_ || _loc1_)
                                          {
                                             loop2:
                                             while(true)
                                             {
                                                §§push(_loc2_);
                                                loop3:
                                                while(true)
                                                {
                                                   if(§§pop() >= this.§_-yZ§.length)
                                                   {
                                                      addr206:
                                                      §§push(Number(0));
                                                      if(_loc4_ || _loc1_)
                                                      {
                                                         addr214:
                                                         _loc2_ = §§pop();
                                                         addr239:
                                                         while(true)
                                                         {
                                                            §§push(_loc2_);
                                                            break loop3;
                                                         }
                                                         addr239:
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(Number(§§pop()));
                                                         addr236:
                                                         while(true)
                                                         {
                                                            _loc2_ = §§pop();
                                                            if(!_loc3_)
                                                            {
                                                               §§goto(addr239);
                                                            }
                                                            §§goto(addr255);
                                                         }
                                                      }
                                                      addr235:
                                                   }
                                                   else
                                                   {
                                                      _loc1_.world["block_" + (_loc2_ + 1)] = this.§_-yZ§[_loc2_];
                                                      while(true)
                                                      {
                                                         §§push(_loc2_);
                                                         if(_loc3_ && _loc3_)
                                                         {
                                                            break loop3;
                                                         }
                                                         §§push(Number(§§pop() + 1));
                                                         if(_loc4_ || _loc3_)
                                                         {
                                                            continue loop2;
                                                         }
                                                         continue loop3;
                                                      }
                                                      addr182:
                                                   }
                                                }
                                                §§goto(addr240);
                                             }
                                             addr200:
                                          }
                                          §§goto(addr239);
                                       }
                                       §§goto(addr236);
                                    }
                                    §§goto(addr206);
                                 }
                                 §§goto(addr269);
                              }
                              else
                              {
                                 _loc1_.world["bird_" + (_loc2_ + 1)] = this.§_-zK§[_loc2_];
                                 §§push(_loc2_);
                                 if(!(_loc3_ && _loc1_))
                                 {
                                    §§push(Number(§§pop() + 1));
                                    if(!(_loc3_ && _loc3_))
                                    {
                                       _loc2_ = §§pop();
                                       if(_loc4_)
                                       {
                                          continue;
                                       }
                                       §§goto(addr182);
                                    }
                                    §§goto(addr214);
                                 }
                              }
                              addr240:
                              while(true)
                              {
                                 if(§§pop() >= this.§_-kP§.length)
                                 {
                                    _loc1_.counts = new Object();
                                    if(_loc4_ || _loc3_)
                                    {
                                       break;
                                    }
                                    §§goto(addr269);
                                 }
                                 else
                                 {
                                    _loc1_.world["joint_" + (_loc2_ + 1)] = this.§_-kP§[_loc2_];
                                    §§push(_loc2_);
                                    if(_loc4_)
                                    {
                                       §§push(§§pop() + 1);
                                       if(!_loc4_)
                                       {
                                       }
                                       §§goto(addr236);
                                    }
                                    §§goto(addr235);
                                 }
                              }
                              addr255:
                              _loc1_.counts.blocks = this.§_-yZ§.length;
                              _loc1_.counts.birds = this.§_-zK§.length;
                              if(!_loc3_)
                              {
                                 addr269:
                                 _loc1_.counts.joints = this.§_-kP§.length;
                                 _loc1_.slingshotX = this.§_-OI§;
                                 §§goto(addr286);
                              }
                              addr286:
                              _loc1_.slingshotY = this.§_-tP§;
                              return _loc1_;
                           }
                           break;
                        }
                        while(true)
                        {
                           _loc2_ = §§pop();
                           §§goto(addr200);
                        }
                     }
                     _loc1_.name = this.mName;
                     if(!_loc4_)
                     {
                     }
                     §§goto(addr80);
                  }
                  §§goto(addr76);
               }
            }
            §§goto(addr48);
         }
         §§goto(addr76);
      }
      
      public function §_-I1§() : String
      {
         return §_-AD§.encode(this.§_-KF§());
      }
      
      public function §_-DC§() : XML
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:§_-7x§ = null;
         var _loc3_:* = 0;
         var _loc1_:* = "";
         _loc1_ += "<Level background=\"ThemeHills\"";
         if(_loc7_ || _loc1_)
         {
            §§push(_loc1_);
            §§push(" LevelExtension=\"" + this.§_-Sb§);
            §§push("\"");
            if(_loc7_)
            {
               _loc1_ = §§pop() + (§§pop() + §§pop());
               §§push(_loc1_);
               §§push(" AutoCamera=\"" + this.§_-Jo§);
               §§push("\"");
               if(_loc7_ || this)
               {
                  _loc1_ = §§pop() + (§§pop() + §§pop());
                  if(_loc7_)
                  {
                     §§push(_loc1_);
                     if(_loc7_)
                     {
                        §§push(" scoreSilver=\"" + this.§_-Xf§);
                        §§push("\"");
                        if(_loc7_ || this)
                        {
                           addr78:
                           §§push(§§pop() + §§pop());
                           if(!(_loc6_ && this))
                           {
                              §§push(§§pop() + §§pop());
                              if(_loc7_)
                              {
                                 addr90:
                                 _loc1_ = §§pop();
                                 §§push(_loc1_);
                                 if(!_loc6_)
                                 {
                                    addr100:
                                    §§push(§§pop() + (" scoreGold=\"" + this.§for § + "\""));
                                    if(_loc7_)
                                    {
                                       _loc1_ = §§pop();
                                       addr119:
                                       §§push(_loc1_ + ">");
                                       if(_loc7_ || _loc2_)
                                       {
                                          _loc1_ = §§pop();
                                          addr116:
                                          §§push(_loc1_);
                                       }
                                       _loc1_ = §§pop();
                                       addr120:
                                       for each(_loc2_ in this.§_-Pg§)
                                       {
                                          if(_loc6_ && _loc1_)
                                          {
                                             continue;
                                          }
                                          §§push(_loc1_);
                                          if(!(_loc6_ && _loc2_))
                                          {
                                             §§push(" <Camera id=\"" + _loc2_.id + "\" leftBorder=\"");
                                             if(_loc7_ || _loc2_)
                                             {
                                                §§push(_loc2_.left);
                                                if(!_loc6_)
                                                {
                                                   §§push(§§pop() + §§pop());
                                                   if(!_loc6_)
                                                   {
                                                      §§push(§§pop() + "\" rightBorder=\"");
                                                      §§push(_loc2_.right);
                                                      if(_loc7_ || _loc3_)
                                                      {
                                                         §§push(§§pop() + §§pop() + "\" topBorder=\"");
                                                         §§push(_loc2_.top);
                                                         if(!(_loc6_ && this))
                                                         {
                                                            addr192:
                                                            §§push(§§pop() + §§pop() + "\" bottomBorder=\"");
                                                            §§push(_loc2_.top);
                                                            if(_loc7_)
                                                            {
                                                               addr201:
                                                               §§push(§§pop() + (§§pop() + §_-LW§.§_-iy§) + "\"></Camera>");
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr201);
                                                   }
                                                   addr206:
                                                   _loc1_ = §§pop() + §§pop();
                                                   continue;
                                                }
                                                §§goto(addr201);
                                             }
                                             §§goto(addr192);
                                          }
                                          §§goto(addr206);
                                       }
                                       if(_loc7_ || this)
                                       {
                                          §§push(_loc1_);
                                          if(!(_loc6_ && _loc2_))
                                          {
                                             _loc1_ = §§pop() + "</Cameras>";
                                             §§push(_loc1_);
                                             if(_loc7_)
                                             {
                                                §§push("<Slingshot x=\"" + this.§_-zK§[0].x);
                                                if(_loc7_ || _loc1_)
                                                {
                                                   §§push("\" y=\"");
                                                   if(_loc7_)
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      if(!(_loc6_ && _loc2_))
                                                      {
                                                         §§push(§§pop() + (this.§_-zK§[0].y - 8) + "\">");
                                                         if(_loc7_)
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            if(!(_loc6_ && _loc3_))
                                                            {
                                                               _loc1_ = §§pop();
                                                               addr287:
                                                               _loc1_ += " <Birds>";
                                                               §§push(0);
                                                               if(!(_loc6_ && _loc3_))
                                                               {
                                                                  _loc3_ = §§pop();
                                                                  loop13:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc3_);
                                                                     if(!(_loc6_ && _loc2_))
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           if(§§pop() < this.§_-zK§.length)
                                                                           {
                                                                              §§push(_loc1_);
                                                                              §§push("  <Bird id=\"" + this.§_-zK§[_loc3_].id);
                                                                              §§push("\" x=\"");
                                                                              if(_loc7_ || this)
                                                                              {
                                                                                 addr317:
                                                                                 §§push(§§pop() + §§pop());
                                                                                 if(!(_loc6_ && _loc2_))
                                                                                 {
                                                                                    addr417:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() + this.§_-zK§[_loc3_].x);
                                                                                       §§push("\" y=\"");
                                                                                       if(_loc7_)
                                                                                       {
                                                                                          §§push(§§pop() + §§pop());
                                                                                          if(!_loc6_)
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop() + this.§_-zK§[_loc3_].y);
                                                                                                if(_loc7_ || _loc1_)
                                                                                                {
                                                                                                   _loc1_ = §§pop() + (§§pop() + "\"></Bird>");
                                                                                                   if(!(_loc6_ && _loc1_))
                                                                                                   {
                                                                                                      _loc3_++;
                                                                                                      continue loop13;
                                                                                                   }
                                                                                                   §§goto(addr377);
                                                                                                }
                                                                                                break;
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop() + this.§_-yZ§[_loc3_].angle);
                                                                                                addr439:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop() + (§§pop() + "\" ></Item>"));
                                                                                                   if(_loc7_)
                                                                                                   {
                                                                                                      _loc1_ = §§pop();
                                                                                                      _loc3_++;
                                                                                                      if(_loc7_)
                                                                                                      {
                                                                                                         §§goto(addr449);
                                                                                                      }
                                                                                                      §§goto(addr472);
                                                                                                   }
                                                                                                   addr469:
                                                                                                   _loc1_ = §§pop() + "</Level>";
                                                                                                   §§goto(addr472);
                                                                                                }
                                                                                             }
                                                                                             addr433:
                                                                                             addr337:
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§goto(addr433);
                                                                                          }
                                                                                          addr431:
                                                                                       }
                                                                                       break;
                                                                                       §§goto(addr317);
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() + §§pop());
                                                                                       if(!(_loc6_ && _loc3_))
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                          }
                                                                                          addr425:
                                                                                       }
                                                                                       §§goto(addr431);
                                                                                    }
                                                                                    addr417:
                                                                                    addr325:
                                                                                 }
                                                                                 §§goto(addr337);
                                                                              }
                                                                              break;
                                                                           }
                                                                           if(_loc7_)
                                                                           {
                                                                              addr378:
                                                                              _loc1_ += " </Birds>";
                                                                              addr377:
                                                                              if(!(_loc6_ && _loc1_))
                                                                              {
                                                                                 _loc1_ += "</Slingshot>";
                                                                                 if(_loc6_)
                                                                                 {
                                                                                 }
                                                                                 §§goto(addr472);
                                                                              }
                                                                              §§push(0);
                                                                              if(!_loc6_)
                                                                              {
                                                                                 _loc3_ = §§pop();
                                                                                 addr449:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc3_);
                                                                                    break loop13;
                                                                                 }
                                                                                 addr449:
                                                                              }
                                                                              break loop13;
                                                                           }
                                                                           §§goto(addr472);
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§goto(addr417);
                                                                        }
                                                                        addr409:
                                                                        addr371:
                                                                     }
                                                                     break;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     if(§§pop() >= this.§_-yZ§.length)
                                                                     {
                                                                        if(!(_loc6_ && _loc1_))
                                                                        {
                                                                           §§push(_loc1_);
                                                                           break;
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(_loc1_);
                                                                        while(true)
                                                                        {
                                                                           §§goto(addr409);
                                                                        }
                                                                        addr401:
                                                                     }
                                                                     addr472:
                                                                     return new XML(_loc1_);
                                                                     §§goto(addr449);
                                                                  }
                                                                  §§goto(addr469);
                                                                  addr363:
                                                               }
                                                               §§goto(addr371);
                                                            }
                                                            §§goto(addr378);
                                                         }
                                                         §§goto(addr325);
                                                      }
                                                      §§goto(addr425);
                                                   }
                                                   §§goto(addr417);
                                                }
                                                §§goto(addr439);
                                             }
                                             §§goto(addr401);
                                          }
                                          §§goto(addr287);
                                       }
                                       §§goto(addr363);
                                    }
                                    §§goto(addr119);
                                 }
                                 §§push(§§pop() + "<Cameras>");
                              }
                              §§goto(addr119);
                           }
                        }
                        §§goto(addr100);
                     }
                     §§goto(addr90);
                  }
                  §§goto(addr120);
               }
               §§goto(addr100);
            }
            §§goto(addr78);
         }
         §§goto(addr116);
      }
   }
}
