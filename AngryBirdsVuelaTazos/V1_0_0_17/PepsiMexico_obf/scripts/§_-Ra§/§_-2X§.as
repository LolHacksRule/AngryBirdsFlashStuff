package §_-Ra§
{
   import §_-2J§.§_-4w§;
   import §_-2J§.§_-Tz§;
   import §_-4g§.Texture;
   import §_-4g§.§_-la§;
   import §_-gY§.§_-Vu§;
   import flash.display.BitmapData;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class §_-2X§ extends EventDispatcher
   {
      
      private static const §_-uf§:int = 2;
      
      private static const §_-sd§:int = 2048;
      
      private static var §_-bv§:§_-2X§;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §_-uf§ = 2;
            if(_loc2_ || _loc2_)
            {
               addr33:
               §_-sd§ = 2048;
            }
            return;
         }
         §§goto(addr33);
      }
      
      private var §_-Jh§:Dictionary;
      
      private var §_-g5§:Vector.<§_-Tz§>;
      
      private var §_-gk§:Dictionary;
      
      private var §_-sz§:Boolean;
      
      private var §_-VW§:Texture;
      
      public function §_-2X§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
            if(_loc1_)
            {
               if(§_-bv§)
               {
                  if(_loc1_)
                  {
                     throw new Error("Only one instance of TextureManager should exist.");
                  }
               }
               else
               {
                  this.§_-g5§ = new Vector.<§_-Tz§>();
                  if(!(_loc2_ && _loc1_))
                  {
                     addr47:
                     this.§_-Jh§ = new Dictionary();
                     if(!_loc1_)
                     {
                     }
                     §§goto(addr64);
                  }
                  this.§_-gk§ = new Dictionary();
               }
            }
            addr64:
            §_-bv§ = this;
            return;
         }
         §§goto(addr47);
      }
      
      public static function get §_-mE§() : §_-2X§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §§push(§_-bv§);
            if(!(_loc2_ && §_-2X§))
            {
               if(!§§pop())
               {
                  if(_loc1_ || §_-2X§)
                  {
                     new §_-2X§();
                     addr53:
                     §§push(§_-bv§);
                  }
               }
               §§goto(addr53);
            }
            return §§pop();
         }
         §§goto(addr53);
      }
      
      public function §_-Lf§(param1:§_-Tz§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(this.§_-sz§)
            {
               if(_loc2_ || _loc3_)
               {
                  return;
               }
            }
            if(this.§_-g5§.indexOf(param1) >= 0)
            {
               if(_loc2_)
               {
                  §§goto(addr55);
               }
            }
            this.§_-g5§.push(param1);
            return;
         }
         addr55:
      }
      
      private function §_-x7§(param1:Array) : Rectangle
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc8_:§_-Tz§ = null;
         var _loc9_:BitmapData = null;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         var _loc7_:int = 0;
         for(; _loc7_ < param1.length; _loc7_++)
         {
            _loc9_ = (_loc8_ = param1[_loc7_]).bitmapData;
            if(!_loc10_)
            {
               continue;
            }
            §§push(_loc2_);
            if(!(_loc11_ && param1))
            {
               if(§§pop() + _loc9_.width + §_-uf§ >= §_-sd§)
               {
                  _loc2_ = 0;
                  §§push(_loc3_);
                  if(!_loc11_)
                  {
                     §§push(_loc6_);
                     if(_loc10_)
                     {
                        §§push(§§pop() + §§pop());
                        if(!(_loc11_ && param1))
                        {
                           _loc3_ = §§pop();
                           if(!(_loc11_ && _loc3_))
                           {
                              §§push(0);
                              if(!(_loc11_ && param1))
                              {
                                 _loc6_ = §§pop();
                                 addr100:
                                 if(_loc3_ + _loc9_.height + §_-uf§ >= §_-sd§)
                                 {
                                    break;
                                 }
                                 addr116:
                                 _loc2_ += _loc9_.width + §_-uf§;
                                 §§push(_loc2_);
                                 §§push(_loc4_);
                                 if(!_loc11_)
                                 {
                                    addr121:
                                    if(§§pop() > §§pop())
                                    {
                                       if(!(_loc11_ && _loc2_))
                                       {
                                          §§push(_loc2_);
                                          if(!_loc11_)
                                          {
                                             §§push(int(§§pop()));
                                             if(!_loc11_)
                                             {
                                                _loc4_ = §§pop();
                                                addr136:
                                                if(_loc9_.height + §_-uf§ <= _loc6_)
                                                {
                                                   continue;
                                                }
                                                _loc6_ = int(_loc9_.height + §_-uf§);
                                                addr149:
                                                §§push(int(_loc3_ + _loc6_));
                                             }
                                             _loc5_ = §§pop();
                                             continue;
                                          }
                                       }
                                       §§goto(addr149);
                                    }
                                    §§goto(addr136);
                                 }
                              }
                              §§goto(addr149);
                           }
                           §§goto(addr136);
                        }
                        §§goto(addr149);
                     }
                     §§goto(addr121);
                  }
                  §§goto(addr149);
               }
               §§goto(addr100);
            }
            §§goto(addr116);
         }
         return new Rectangle(0,0,_loc4_,_loc5_);
      }
      
      private function §_-75§(param1:Array, param2:BitmapData) : Array
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         var _loc7_:§_-Tz§ = null;
         var _loc8_:BitmapData = null;
         var _loc9_:§_-CM§ = null;
         var _loc10_:* = 0;
         var _loc11_:int = 0;
         var _loc12_:§_-4w§ = null;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:Array = [];
         loop0:
         while(true)
         {
            §§push(param1);
            while(§§pop().length > 0)
            {
               §§push(param1);
               if(_loc13_ && param2)
               {
                  continue;
               }
               _loc8_ = (_loc7_ = §§pop()[0]).bitmapData;
               if(!(_loc13_ && _loc3_))
               {
                  §§push(_loc3_);
                  if(!_loc13_)
                  {
                     if(§§pop() + _loc8_.width + §_-uf§ > param2.width)
                     {
                        §§push(0);
                        if(!(_loc13_ && this))
                        {
                           addr83:
                           _loc3_ = §§pop();
                           §§push(_loc4_);
                           if(!(_loc13_ && _loc3_))
                           {
                              addr92:
                              §§push(int(§§pop() + _loc5_));
                              if(!_loc13_)
                              {
                                 _loc4_ = §§pop();
                                 §§push(0);
                                 if(_loc14_ || this)
                                 {
                                    addr106:
                                    _loc5_ = §§pop();
                                    §§push(_loc4_);
                                 }
                                 if(§§pop() + _loc8_.height + §_-uf§ > param2.height)
                                 {
                                    break;
                                 }
                                 param2.copyPixels(_loc8_,_loc8_.rect,new Point(_loc3_,_loc4_),null,null,true);
                                 addr136:
                                 (_loc9_ = new §_-CM§()).offset = new Point(_loc3_,_loc4_);
                                 if(!(_loc13_ && param1))
                                 {
                                    _loc9_.§_-9M§ = _loc7_;
                                    if(_loc14_)
                                    {
                                       _loc6_.push(_loc9_);
                                    }
                                    §§push(_loc7_.§_-PF§);
                                    if(_loc14_ || this)
                                    {
                                       §§push(int(§§pop()));
                                       if(_loc14_ || this)
                                       {
                                          _loc10_ = §§pop();
                                          addr180:
                                          _loc11_ = 0;
                                          if(!_loc13_)
                                          {
                                             addr183:
                                             loop3:
                                             while(true)
                                             {
                                                §§push(_loc11_);
                                                if(_loc14_ || param1)
                                                {
                                                   while(true)
                                                   {
                                                      if(§§pop() >= _loc10_)
                                                      {
                                                         _loc3_ += _loc8_.width + §_-uf§;
                                                         if(_loc8_.height + §_-uf§ > _loc5_)
                                                         {
                                                            addr227:
                                                            §§push(int(_loc8_.height + §_-uf§));
                                                            break;
                                                         }
                                                         continue loop0;
                                                      }
                                                      (_loc12_ = _loc7_.§_-e-§(_loc11_)).§_-6p§ = null;
                                                      if(!_loc13_)
                                                      {
                                                         _loc12_.§_-ua§.offset(_loc3_,_loc4_);
                                                         if(!_loc13_)
                                                         {
                                                            _loc11_++;
                                                         }
                                                      }
                                                      continue loop3;
                                                   }
                                                   addr211:
                                                }
                                                _loc5_ = §§pop();
                                                continue loop0;
                                             }
                                          }
                                          §§goto(addr227);
                                       }
                                       §§goto(addr211);
                                    }
                                    §§goto(addr180);
                                 }
                                 §§goto(addr183);
                              }
                           }
                           §§goto(addr106);
                        }
                        §§goto(addr92);
                     }
                     §§goto(addr106);
                  }
                  §§goto(addr83);
               }
               §§goto(addr136);
            }
            return _loc6_;
         }
      }
      
      public function §_-WP§() : Boolean
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         var _loc1_:§_-Tz§ = null;
         var _loc3_:Rectangle = null;
         var _loc4_:BitmapData = null;
         var _loc5_:Array = null;
         var _loc6_:Texture = null;
         var _loc7_:* = 0;
         var _loc8_:§_-CM§ = null;
         var _loc9_:* = 0;
         var _loc10_:* = 0;
         var _loc11_:§_-4w§ = null;
         if(!(_loc14_ && _loc1_))
         {
            if(!§_-Vu§.§_-ez§)
            {
               if(!(_loc14_ && _loc1_))
               {
                  §§push(false);
                  if(!_loc14_)
                  {
                     return §§pop();
                  }
                  addr68:
                  if(§§pop())
                  {
                     if(!(_loc14_ && _loc1_))
                     {
                        §§goto(addr77);
                     }
                  }
               }
               var _loc2_:Array = [];
               var _loc12_:int = 0;
               var _loc13_:* = this.§_-g5§;
               loop0:
               while(true)
               {
                  §§push(§§hasnext(_loc13_,_loc12_));
                  if(_loc15_)
                  {
                     if(§§pop())
                     {
                        _loc1_ = §§nextvalue(_loc12_,_loc13_);
                        if(_loc15_)
                        {
                           if(_loc1_.§_-PF§ > 0)
                           {
                              if(!_loc14_)
                              {
                                 _loc2_.push(_loc1_);
                              }
                           }
                        }
                        continue;
                     }
                     if(!(_loc14_ && _loc1_))
                     {
                        if(_loc15_ || this)
                        {
                           if(!_loc14_)
                           {
                              while(_loc2_.length > 0)
                              {
                                 _loc3_ = this.§_-x7§(_loc2_);
                                 _loc4_ = new BitmapData(_loc3_.width,_loc3_.height,true,0);
                                 if((_loc5_ = this.§_-75§(_loc2_,_loc4_)).length == 0)
                                 {
                                    if(_loc15_ || this)
                                    {
                                       throw new Error("Found too large sprite sheet image!");
                                    }
                                 }
                                 _loc6_ = this.§_-pz§(_loc4_);
                                 if(!(_loc14_ && _loc1_))
                                 {
                                    §§push(0);
                                    if(_loc15_)
                                    {
                                       _loc7_ = §§pop();
                                       if(!_loc15_)
                                       {
                                          continue;
                                       }
                                       while(true)
                                       {
                                          §§push(_loc7_);
                                       }
                                       addr262:
                                    }
                                    for(; §§pop() < _loc5_.length; §§goto(addr262))
                                    {
                                       _loc1_ = (_loc8_ = _loc5_[_loc7_]).§_-9M§;
                                       if(!(_loc14_ && _loc2_))
                                       {
                                          §§push(_loc1_.§_-PF§);
                                          if(_loc15_)
                                          {
                                             §§push(int(§§pop()));
                                             if(!_loc14_)
                                             {
                                                _loc9_ = §§pop();
                                                if(_loc15_)
                                                {
                                                   addr218:
                                                   §§push(0);
                                                   if(_loc15_)
                                                   {
                                                      addr221:
                                                      _loc10_ = §§pop();
                                                      if(!(_loc15_ || this))
                                                      {
                                                         continue;
                                                      }
                                                   }
                                                   loop5:
                                                   while(§§pop() < _loc9_)
                                                   {
                                                      _loc11_ = _loc1_.§_-e-§(_loc10_);
                                                      if(!_loc14_)
                                                      {
                                                         this.§_-N0§(_loc11_,_loc6_,_loc4_);
                                                         if(!(_loc14_ && _loc2_))
                                                         {
                                                            _loc10_++;
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         continue loop5;
                                                      }
                                                   }
                                                   if(_loc15_ || _loc3_)
                                                   {
                                                      _loc7_++;
                                                   }
                                                   continue;
                                                   addr252:
                                                }
                                                §§goto(addr251);
                                             }
                                             §§goto(addr221);
                                          }
                                          §§goto(addr252);
                                       }
                                       §§goto(addr218);
                                    }
                                 }
                              }
                              if(_loc15_ || _loc1_)
                              {
                                 _loc12_ = 0;
                                 if(_loc15_ || _loc1_)
                                 {
                                    _loc13_ = this.§_-g5§;
                                    while(true)
                                    {
                                       §§push(§§hasnext(_loc13_,_loc12_));
                                       break loop0;
                                    }
                                    addr304:
                                    if(!_loc14_)
                                    {
                                       this.§_-g5§ = new Vector.<§_-Tz§>();
                                       addr307:
                                       if(_loc15_)
                                       {
                                          this.§_-sz§ = true;
                                       }
                                    }
                                    return true;
                                    addr303:
                                    addr301:
                                 }
                                 §§goto(addr304);
                              }
                           }
                           §§goto(addr307);
                        }
                        §§goto(addr304);
                     }
                     §§goto(addr303);
                  }
                  break;
               }
               while(true)
               {
                  if(§§pop())
                  {
                     _loc1_ = §§nextvalue(_loc12_,_loc13_);
                     if(!_loc14_)
                     {
                        _loc1_.dispose();
                     }
                     continue;
                  }
                  §§goto(addr304);
               }
            }
            else
            {
               §§push(this.§_-sz§);
               if(_loc15_)
               {
                  §§goto(addr68);
               }
            }
            §§goto(addr77);
         }
         addr77:
         return true;
      }
      
      private function §_-N0§(param1:§_-4w§, param2:Texture, param3:BitmapData) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc5_:Rectangle = null;
         var _loc6_:§_-la§ = null;
         var _loc4_:§_-Vr§;
         if(!(_loc4_ = this.§_-Jh§[param1.mName]))
         {
            _loc5_ = param1.§_-ua§.clone();
            _loc6_ = new §_-la§(param2,_loc5_,false);
            _loc4_ = new §_-Vr§(_loc6_,param3,_loc5_,param1.§_-ov§,param1.§_-eM§);
            if(_loc8_)
            {
               this.§_-Jh§[param1.mName] = _loc4_;
            }
         }
      }
      
      public function §_-dk§() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var bd:Object = null;
         var _loc2_:int = 0;
         for(bd in this.§_-gk§)
         {
            if(!(_loc5_ && _loc2_))
            {
               try
               {
                  this.§_-gk§[bd].updateBaseTexture(bd as BitmapData);
               }
               catch(e:Error)
               {
                  continue;
               }
            }
         }
      }
      
      public function §_-ln§(param1:String) : §_-Vr§
      {
         return this.§_-Jh§[param1];
      }
      
      public function §_-pz§(param1:BitmapData) : Texture
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Texture = this.§_-gk§[param1];
         if(_loc3_)
         {
            if(_loc2_)
            {
               if(_loc3_)
               {
                  return _loc2_;
               }
            }
         }
         _loc2_ = Texture.§_-su§(param1);
         if(!_loc4_)
         {
            this.§_-gk§[param1] = _loc2_;
         }
         return _loc2_;
      }
      
      public function §_-Z0§() : Texture
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§_-VW§);
            if(!_loc1_)
            {
               if(!§§pop())
               {
                  if(!_loc1_)
                  {
                     this.§_-VW§ = this.§_-pz§(new BitmapData(40,40,false,16711935));
                     addr30:
                  }
               }
               §§push(this.§_-VW§);
            }
            return §§pop();
         }
         §§goto(addr30);
      }
      
      public function §_-tO§(param1:Texture) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:* = null;
         var _loc3_:BitmapData = null;
         var _loc4_:int = 0;
         var _loc5_:* = this.§_-gk§;
         while(true)
         {
            for(_loc2_ in _loc5_)
            {
               if(_loc6_ || this)
               {
                  if(this.§_-gk§[_loc2_] != param1)
                  {
                     continue;
                  }
               }
               _loc3_ = _loc2_ as BitmapData;
               if(!_loc7_)
               {
                  if(_loc3_)
                  {
                     if(!(_loc7_ && _loc2_))
                     {
                        _loc3_.dispose();
                        if(_loc6_ || this)
                        {
                           addr77:
                           delete this.§_-gk§[_loc2_];
                           if(_loc7_ && param1)
                           {
                              continue;
                           }
                        }
                     }
                     param1.dispose();
                     if(_loc6_)
                     {
                        break;
                     }
                     continue;
                  }
               }
               §§goto(addr77);
            }
            return;
         }
      }
      
      public function §_-jZ§(param1:String) : BitmapData
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§_-Vr§ = this.§_-ln§(param1);
         if(!_loc3_)
         {
            if(_loc2_ == null)
            {
               if(!_loc3_)
               {
                  addr26:
                  §§push(this.§_-ln§(param1 + "_1"));
                  if(!_loc3_)
                  {
                     _loc2_ = §§pop();
                     addr42:
                     if(_loc2_ == null)
                     {
                        if(_loc4_ || _loc2_)
                        {
                           addr57:
                           _loc2_ = this.§_-ln§(param1 + "_01");
                        }
                        §§goto(addr73);
                     }
                     if(_loc2_ == null)
                     {
                        if(_loc4_)
                        {
                           return null;
                        }
                        §§goto(addr73);
                     }
                     §§goto(addr73);
                  }
                  §§goto(addr57);
               }
               addr73:
               return _loc2_.bitmapData;
            }
            §§goto(addr42);
         }
         §§goto(addr26);
      }
   }
}
