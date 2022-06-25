package §5`§
{
   import §7!=§.§;"§;
   import §7!=§.Texture;
   import §<=§.;
   import §<=§.§66§;
   import §catch§.§4@§;
   import flash.display.BitmapData;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class §?y§ extends EventDispatcher
   {
      
      private static const §;7§:int = 2;
      
      private static const §4'§:int = 2048;
      
      private static var §@!E§:§?y§;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §;7§ = 2;
            if(!(_loc1_ && §?y§))
            {
               addr29:
               §4'§ = 2048;
            }
            return;
         }
         §§goto(addr29);
      }
      
      private var §8I§:Dictionary;
      
      private var §<&§:Vector.<§66§>;
      
      private var §"#§:Dictionary;
      
      private var §<?§:Boolean;
      
      private var §]v§:String;
      
      private var §+O§:Texture;
      
      private var §6!E§:int;
      
      private var §68§:int;
      
      public function §?y§(param1:String = null)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            super();
            if(_loc2_ || _loc2_)
            {
               addr47:
               this.§<&§ = new Vector.<§66§>();
               if(!_loc3_)
               {
                  this.§8I§ = new Dictionary();
                  if(_loc2_)
                  {
                     addr61:
                     this.§"#§ = new Dictionary();
                     if(_loc2_ || _loc2_)
                     {
                        addr72:
                        this.§]v§ = param1;
                     }
                  }
                  return;
               }
               §§goto(addr72);
            }
            §§goto(addr61);
         }
         §§goto(addr47);
      }
      
      public static function get §@j§() : §?y§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §§push(§@!E§);
            if(_loc2_)
            {
               if(!§§pop())
               {
                  if(_loc2_ || _loc2_)
                  {
                     §@!E§ = new §?y§();
                     addr49:
                     §§push(§@!E§);
                  }
               }
               §§goto(addr49);
            }
            return §§pop();
         }
         §§goto(addr49);
      }
      
      public function get §=N§() : int
      {
         return this.§6!E§;
      }
      
      public function get §?^§() : int
      {
         return this.§68§;
      }
      
      public function get id() : String
      {
         return this.§]v§;
      }
      
      public function dispose() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc1_:§%F§ = null;
         var _loc2_:§66§ = null;
         if(!_loc6_)
         {
            if(this.§8I§)
            {
               addr27:
               var _loc3_:int = 0;
               var _loc4_:* = this.§8I§;
               loop1:
               while(true)
               {
                  §§push(§§hasnext(_loc4_,_loc3_));
                  if(_loc5_)
                  {
                     if(§§pop())
                     {
                        _loc1_ = §§nextvalue(_loc3_,_loc4_);
                        if(!(_loc6_ && _loc1_))
                        {
                           this.§[^§(_loc1_.texture.parent);
                           if(_loc6_ && _loc3_)
                           {
                              continue;
                           }
                        }
                        _loc1_.dispose();
                        continue;
                     }
                     if(!(_loc6_ && _loc1_))
                     {
                        if(!(_loc6_ && _loc1_))
                        {
                           if(_loc5_ || _loc2_)
                           {
                              this.§8I§ = null;
                              addr101:
                              if(this.§<&§)
                              {
                                 if(_loc5_)
                                 {
                                    _loc3_ = 0;
                                    if(!(_loc6_ && this))
                                    {
                                       _loc4_ = this.§<&§;
                                       while(true)
                                       {
                                          §§push(§§hasnext(_loc4_,_loc3_));
                                          break loop1;
                                       }
                                       addr133:
                                       if(!(_loc6_ && _loc1_))
                                       {
                                          this.§<&§ = null;
                                          §§goto(addr144);
                                       }
                                       addr144:
                                       if(this.§"#§)
                                       {
                                          if(_loc5_)
                                          {
                                             addr149:
                                             this.§"#§ = null;
                                             if(!_loc6_)
                                             {
                                                §§goto(addr154);
                                             }
                                          }
                                          §§goto(addr199);
                                       }
                                       addr154:
                                       §§push(this.§+O§);
                                       if(!_loc6_)
                                       {
                                          if(§§pop())
                                          {
                                             if(!(_loc6_ && this))
                                             {
                                                §§goto(addr178);
                                             }
                                             §§goto(addr181);
                                          }
                                          §§goto(addr186);
                                       }
                                       addr178:
                                       this.§+O§.dispose();
                                       if(!_loc6_)
                                       {
                                          addr181:
                                          this.§+O§ = null;
                                          if(!_loc6_)
                                          {
                                             addr186:
                                             this.§<&§ = new Vector.<§66§>();
                                             if(_loc5_ || _loc3_)
                                             {
                                                addr199:
                                                this.§8I§ = new Dictionary();
                                                this.§"#§ = new Dictionary();
                                             }
                                          }
                                          §§goto(addr199);
                                       }
                                       return;
                                       addr132:
                                       addr130:
                                    }
                                    §§goto(addr133);
                                 }
                                 §§goto(addr199);
                              }
                              §§goto(addr144);
                           }
                           §§goto(addr149);
                        }
                        §§goto(addr133);
                     }
                     §§goto(addr132);
                  }
                  break;
               }
               while(true)
               {
                  if(§§pop())
                  {
                     _loc2_ = §§nextvalue(_loc3_,_loc4_);
                     if(!_loc6_)
                     {
                        _loc2_.dispose();
                     }
                     continue;
                  }
                  §§goto(addr133);
               }
            }
            §§goto(addr101);
         }
         §§goto(addr27);
      }
      
      public function §6v§(param1:§66§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            if(this.§<?§)
            {
               if(!(_loc3_ && this))
               {
                  return;
               }
            }
            else
            {
               if(this.§<&§.indexOf(param1) >= 0)
               {
                  if(!(_loc3_ && _loc3_))
                  {
                     §§goto(addr69);
                  }
               }
               this.§<&§.push(param1);
               return;
            }
         }
         addr69:
      }
      
      private function §!P§(param1:Array) : Rectangle
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc9_:§66§ = null;
         var _loc10_:BitmapData = null;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc4_:int = 0;
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         var _loc7_:* = Number(1);
         var _loc8_:int = 0;
         while(_loc8_ < param1.length)
         {
            _loc9_ = param1[_loc8_];
            if(!_loc11_)
            {
               if(_loc8_ == 0)
               {
                  if(!_loc11_)
                  {
                     addr52:
                     §§push(_loc9_.scale);
                     if(_loc12_ || _loc2_)
                     {
                        §§push(Number(§§pop()));
                        if(_loc12_ || _loc3_)
                        {
                           addr69:
                           _loc7_ = §§pop();
                           if(!(_loc12_ || _loc3_))
                           {
                              addr82:
                              break;
                           }
                        }
                        else
                        {
                           addr80:
                           if(§§pop() != _loc7_)
                           {
                              §§goto(addr82);
                           }
                        }
                        _loc10_ = _loc9_.bitmapData;
                        §§push(_loc2_);
                        if(_loc12_)
                        {
                           if(§§pop() + _loc10_.width + §;7§ >= §4'§)
                           {
                              if(!_loc11_)
                              {
                                 _loc2_ = 0;
                              }
                              §§push(_loc3_);
                              §§push(_loc6_);
                              if(_loc12_ || this)
                              {
                                 §§push(§§pop() + §§pop());
                                 if(!_loc11_)
                                 {
                                    §§push(int(§§pop()));
                                    if(_loc12_ || _loc2_)
                                    {
                                       addr131:
                                       _loc3_ = §§pop();
                                       if(!_loc11_)
                                       {
                                          §§push(0);
                                          if(!(_loc11_ && param1))
                                          {
                                             _loc6_ = §§pop();
                                             addr143:
                                             if(_loc3_ + _loc10_.height + §;7§ >= §4'§)
                                             {
                                                break;
                                             }
                                             §§push(int(_loc2_ + (_loc10_.width + §;7§)));
                                             if(!(_loc11_ && param1))
                                             {
                                                _loc2_ = §§pop();
                                                §§push(_loc2_);
                                                if(_loc12_ || this)
                                                {
                                                   addr175:
                                                   §§push(_loc4_);
                                                   if(!_loc11_)
                                                   {
                                                      addr178:
                                                      if(§§pop() > §§pop())
                                                      {
                                                         if(!(_loc11_ && _loc2_))
                                                         {
                                                            addr187:
                                                            _loc4_ = _loc2_;
                                                            addr189:
                                                            if(_loc10_.height + §;7§ > _loc6_)
                                                            {
                                                               addr205:
                                                               §§push(int(_loc10_.height + §;7§));
                                                               if(!_loc11_)
                                                               {
                                                                  addr212:
                                                                  _loc6_ = §§pop();
                                                                  §§push(_loc3_);
                                                                  if(!_loc11_)
                                                                  {
                                                                     addr217:
                                                                     §§push(int(§§pop() + _loc6_));
                                                                  }
                                                               }
                                                               _loc5_ = §§pop();
                                                               if(!_loc12_)
                                                               {
                                                                  continue;
                                                               }
                                                            }
                                                            _loc8_++;
                                                            continue;
                                                            addr186:
                                                         }
                                                         §§goto(addr205);
                                                      }
                                                      §§goto(addr189);
                                                   }
                                                   §§goto(addr217);
                                                }
                                             }
                                             §§goto(addr187);
                                          }
                                          §§goto(addr175);
                                       }
                                       §§goto(addr186);
                                    }
                                    §§goto(addr212);
                                 }
                                 §§goto(addr217);
                              }
                              §§goto(addr178);
                           }
                           §§goto(addr143);
                        }
                        §§goto(addr131);
                     }
                     §§goto(addr69);
                  }
                  §§goto(addr82);
               }
               else
               {
                  §§push(_loc9_.scale);
               }
               §§goto(addr80);
            }
            §§goto(addr52);
         }
         return new Rectangle(0,0,_loc4_,_loc5_);
      }
      
      private function §&s§(param1:Array, param2:BitmapData) : Array
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         var _loc8_:§66§ = null;
         var _loc9_:BitmapData = null;
         var _loc10_:§<c§ = null;
         var _loc11_:* = 0;
         var _loc12_:int = 0;
         var _loc13_:§#8§ = null;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:Array = [];
         var _loc7_:* = Number(NaN);
         loop0:
         while(true)
         {
            §§push(param1);
            while(§§pop().length > 0)
            {
               §§push(param1);
               if(!(_loc14_ || param2))
               {
                  continue;
               }
               _loc8_ = §§pop()[0];
               if(_loc14_ || _loc3_)
               {
                  §§push(!isNaN(_loc7_));
                  if(!_loc15_)
                  {
                     if(§§pop())
                     {
                        if(!_loc15_)
                        {
                           §§pop();
                           if(!(_loc15_ && param1))
                           {
                              §§push(_loc7_);
                              if(!(_loc15_ && _loc3_))
                              {
                                 §§push(§§pop() == _loc8_.scale);
                                 if(_loc14_)
                                 {
                                    addr97:
                                    if(!§§pop())
                                    {
                                       if(!_loc15_)
                                       {
                                          addr100:
                                          break;
                                       }
                                       addr112:
                                       _loc9_ = _loc8_.bitmapData;
                                       if(!(_loc15_ && param2))
                                       {
                                          §§push(_loc3_);
                                          if(!_loc15_)
                                          {
                                             if(§§pop() + _loc9_.width + §;7§ > param2.width)
                                             {
                                                §§push(0);
                                                if(_loc14_)
                                                {
                                                   _loc3_ = §§pop();
                                                   if(_loc14_ || param2)
                                                   {
                                                      §§push(_loc4_);
                                                      if(!(_loc15_ && this))
                                                      {
                                                         §§push(int(§§pop() + _loc5_));
                                                         if(!_loc15_)
                                                         {
                                                            addr158:
                                                            _loc4_ = §§pop();
                                                            §§push(0);
                                                            if(_loc14_)
                                                            {
                                                               addr172:
                                                               _loc5_ = §§pop();
                                                               addr204:
                                                               if(!_loc15_)
                                                               {
                                                                  addr175:
                                                                  §§push(_loc4_);
                                                               }
                                                               (_loc10_ = new §<c§()).offset = new Point(_loc3_,_loc4_);
                                                               if(!(_loc15_ && this))
                                                               {
                                                                  _loc10_.§&!0§ = _loc8_;
                                                                  if(_loc14_ || param2)
                                                                  {
                                                                     _loc6_.push(_loc10_);
                                                                     if(_loc14_ || param2)
                                                                     {
                                                                        §§push(_loc8_.§<q§);
                                                                        if(!(_loc15_ && param2))
                                                                        {
                                                                           §§push(int(§§pop()));
                                                                        }
                                                                        _loc11_ = §§pop();
                                                                        _loc12_ = 0;
                                                                     }
                                                                     addr289:
                                                                     _loc3_ += _loc9_.width + §;7§;
                                                                     if(!(_loc15_ && param2))
                                                                     {
                                                                        if(_loc9_.height + §;7§ > _loc5_)
                                                                        {
                                                                           if(!(_loc14_ || param2))
                                                                           {
                                                                              continue loop0;
                                                                           }
                                                                           addr327:
                                                                           _loc5_ = int(_loc9_.height + §;7§);
                                                                           if(!(_loc14_ || param2))
                                                                           {
                                                                              continue loop0;
                                                                           }
                                                                        }
                                                                        param1.splice(0,1);
                                                                        continue loop0;
                                                                     }
                                                                     §§goto(addr327);
                                                                  }
                                                                  while(_loc12_ < _loc11_)
                                                                  {
                                                                     (_loc13_ = _loc8_.§1@§(_loc12_)).§!! § = null;
                                                                     if(!(_loc15_ && param1))
                                                                     {
                                                                        _loc13_.§%!<§.offset(_loc3_,_loc4_);
                                                                        if(_loc15_)
                                                                        {
                                                                           continue;
                                                                        }
                                                                     }
                                                                     _loc12_++;
                                                                  }
                                                                  if(!(_loc15_ && this))
                                                                  {
                                                                     §§goto(addr289);
                                                                  }
                                                                  §§goto(addr327);
                                                               }
                                                               §§goto(addr289);
                                                            }
                                                            if(§§pop() + _loc9_.height + §;7§ > param2.height)
                                                            {
                                                               if(!(_loc15_ && param2))
                                                               {
                                                                  addr191:
                                                                  break;
                                                               }
                                                            }
                                                            else
                                                            {
                                                               param2.copyPixels(_loc9_,_loc9_.rect,new Point(_loc3_,_loc4_),null,null,true);
                                                            }
                                                            §§goto(addr204);
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr172);
                                                }
                                                §§goto(addr158);
                                             }
                                             §§goto(addr175);
                                          }
                                          §§goto(addr158);
                                       }
                                       §§goto(addr191);
                                    }
                                    else
                                    {
                                       §§push(_loc8_.scale);
                                       if(!(_loc15_ && param2))
                                       {
                                          §§push(Number(§§pop()));
                                       }
                                    }
                                    §§goto(addr112);
                                 }
                                 §§goto(addr97);
                              }
                              _loc7_ = §§pop();
                           }
                           §§goto(addr112);
                        }
                     }
                  }
                  §§goto(addr97);
               }
               §§goto(addr100);
            }
            return _loc6_;
         }
      }
      
      public function §4+§() : Boolean
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         var _loc1_:§66§ = null;
         var _loc3_:Rectangle = null;
         var _loc4_:BitmapData = null;
         var _loc5_:Array = null;
         var _loc6_:Texture = null;
         var _loc7_:* = 0;
         var _loc8_:§<c§ = null;
         var _loc9_:* = 0;
         var _loc10_:* = 0;
         var _loc11_:§#8§ = null;
         if(!_loc14_)
         {
            §§push(§4@§.§!!7§());
            if(!(_loc14_ && _loc2_))
            {
               if(!§§pop())
               {
                  if(!(_loc14_ && _loc1_))
                  {
                     §§push(false);
                     if(!_loc14_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr86:
                     return true;
                  }
               }
               else
               {
                  §§push(this.§<?§);
                  if(!(_loc14_ && _loc1_))
                  {
                     addr78:
                     if(§§pop())
                     {
                        if(!(_loc14_ && _loc3_))
                        {
                           §§goto(addr86);
                        }
                     }
                     var _loc2_:Array = [];
                     var _loc12_:int = 0;
                     var _loc13_:* = this.§<&§;
                     loop0:
                     while(true)
                     {
                        §§push(§§hasnext(_loc13_,_loc12_));
                        if(!_loc14_)
                        {
                           if(§§pop())
                           {
                              _loc1_ = §§nextvalue(_loc12_,_loc13_);
                              if(!(_loc14_ && this))
                              {
                                 if(_loc1_.§<q§ > 0)
                                 {
                                    if(!(_loc14_ && _loc1_))
                                    {
                                       _loc2_.push(_loc1_);
                                    }
                                 }
                              }
                              continue;
                           }
                           if(_loc15_ || _loc1_)
                           {
                              if(_loc15_ || this)
                              {
                                 if(!(_loc14_ && this))
                                 {
                                    while(_loc2_.length > 0)
                                    {
                                       _loc3_ = this.§!P§(_loc2_);
                                       if(_loc15_)
                                       {
                                          if(_loc3_.width * _loc3_.height == 0)
                                          {
                                             if(!(_loc14_ && _loc3_))
                                             {
                                                throw new Error("Found too large sprite sheet image!");
                                             }
                                          }
                                       }
                                       _loc4_ = new BitmapData(_loc3_.width,_loc3_.height,true,0);
                                       if((_loc5_ = this.§&s§(_loc2_,_loc4_)).length == 0)
                                       {
                                          if(!(_loc14_ && _loc2_))
                                          {
                                             throw new Error("Found too large sprite sheet image!");
                                          }
                                       }
                                       _loc6_ = this.§-§(_loc4_);
                                       if(_loc15_ || _loc3_)
                                       {
                                          §§push(0);
                                          if(!(_loc14_ && _loc2_))
                                          {
                                             _loc7_ = §§pop();
                                             if(!_loc15_)
                                             {
                                                continue;
                                             }
                                             addr243:
                                             while(true)
                                             {
                                                §§push(_loc7_);
                                             }
                                             addr307:
                                          }
                                          loop2:
                                          for(; §§pop() < _loc5_.length; §§goto(addr307))
                                          {
                                             _loc1_ = (_loc8_ = _loc5_[_loc7_]).§&!0§;
                                             if(!(_loc14_ && this))
                                             {
                                                §§push(_loc1_.§<q§);
                                                if(_loc15_ || _loc2_)
                                                {
                                                   §§push(int(§§pop()));
                                                   if(_loc15_)
                                                   {
                                                      addr273:
                                                      _loc9_ = §§pop();
                                                      if(!_loc14_)
                                                      {
                                                         addr276:
                                                         §§push(0);
                                                         if(!_loc14_)
                                                         {
                                                            _loc10_ = §§pop();
                                                            if(_loc15_)
                                                            {
                                                               addr282:
                                                               loop4:
                                                               while(true)
                                                               {
                                                                  §§push(_loc10_);
                                                                  addr302:
                                                                  while(§§pop() < _loc9_)
                                                                  {
                                                                     _loc11_ = _loc1_.§1@§(_loc10_);
                                                                     if(!_loc14_)
                                                                     {
                                                                        this.§;!D§(_loc11_,_loc6_,_loc4_,_loc1_.scale);
                                                                        if(_loc14_)
                                                                        {
                                                                           continue loop4;
                                                                        }
                                                                     }
                                                                     _loc10_++;
                                                                     continue loop4;
                                                                  }
                                                                  if(_loc14_)
                                                                  {
                                                                     continue loop2;
                                                                  }
                                                               }
                                                            }
                                                            _loc7_++;
                                                            continue;
                                                         }
                                                         §§goto(addr302);
                                                      }
                                                      §§goto(addr282);
                                                   }
                                                   §§goto(addr302);
                                                }
                                                §§goto(addr273);
                                             }
                                             §§goto(addr276);
                                          }
                                          continue;
                                       }
                                       §§goto(addr243);
                                    }
                                    if(_loc15_)
                                    {
                                       _loc12_ = 0;
                                       if(_loc15_ || _loc1_)
                                       {
                                          addr326:
                                          _loc13_ = this.§<&§;
                                          while(true)
                                          {
                                             §§push(§§hasnext(_loc13_,_loc12_));
                                             break loop0;
                                          }
                                          addr351:
                                       }
                                       if(_loc15_)
                                       {
                                          addr357:
                                          this.§<&§ = new Vector.<§66§>();
                                          if(_loc14_ && this)
                                          {
                                          }
                                          §§goto(addr373);
                                       }
                                       this.§<?§ = true;
                                    }
                                    addr373:
                                    return true;
                                 }
                                 §§goto(addr357);
                              }
                           }
                           §§goto(addr326);
                        }
                        break;
                     }
                     while(true)
                     {
                        if(§§pop())
                        {
                           _loc1_ = §§nextvalue(_loc12_,_loc13_);
                           if(_loc15_)
                           {
                              _loc1_.dispose();
                           }
                           continue;
                        }
                        §§goto(addr326);
                     }
                  }
               }
               return §§pop();
            }
            §§goto(addr78);
         }
         §§goto(addr86);
      }
      
      private function §;!D§(param1:§#8§, param2:Texture, param3:BitmapData, param4:Number) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc6_:Rectangle = null;
         var _loc7_:§;"§ = null;
         var _loc5_:§%F§;
         if(!(_loc5_ = this.§8I§[param1.mName]))
         {
            _loc6_ = param1.§%!<§.clone();
            _loc7_ = new §;"§(param2,_loc6_,false);
            _loc5_ = new §%F§(_loc7_,param3,_loc6_,param1.§3!4§,param1.§;!0§,param4);
            if(_loc8_ || param3)
            {
               this.§8I§[param1.mName] = _loc5_;
            }
         }
      }
      
      public function §0<§() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(§§newactivation());
         if(_loc5_ || _loc3_)
         {
            §§push(null);
            if(_loc5_)
            {
               §§pop().§§slot[1] = §§pop();
               if(!_loc6_)
               {
                  addr37:
                  var texture:Texture = null;
                  if(_loc5_ || _loc3_)
                  {
                     if(!§4@§.§#!1§)
                     {
                        addr59:
                        var _loc2_:int = 0;
                        var _loc3_:* = this.§"#§;
                        while(§§hasnext(_loc3_,_loc2_))
                        {
                           §§push(§§newactivation());
                           if(_loc5_)
                           {
                              §§pop().§§slot[1] = §§nextname(_loc2_,_loc3_);
                              if(!_loc6_)
                              {
                                 try
                                 {
                                    §§push(§§newactivation());
                                    if(!_loc6_)
                                    {
                                       §§pop().§§slot[2] = this.§"#§[bd];
                                       addr106:
                                       if(!_loc6_)
                                       {
                                          §§push(§§newactivation());
                                       }
                                       continue;
                                    }
                                    §§pop().§§slot[2].requestBaseTextureUpdate(bd as BitmapData);
                                 }
                                 catch(e:Error)
                                 {
                                    continue;
                                 }
                              }
                           }
                           §§goto(addr106);
                        }
                     }
                     return;
                  }
               }
               §§goto(addr59);
            }
         }
         §§goto(addr37);
      }
      
      public function §9,§(param1:String) : §%F§
      {
         return this.§8I§[param1];
      }
      
      public function §-§(param1:BitmapData, param2:Boolean = true) : Texture
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Texture = this.§"#§[param1];
         if(_loc4_ || _loc3_)
         {
            if(_loc3_)
            {
               if(_loc4_ || param1)
               {
                  return _loc3_;
               }
            }
         }
         _loc3_ = §4@§.§=I§(param1,param2);
         if(_loc4_ || param1)
         {
            this.§"#§[param1] = _loc3_;
            if(_loc4_ || param2)
            {
               this.§`'§(_loc3_,param1,true);
            }
         }
         return _loc3_;
      }
      
      public function §`'§(param1:Texture, param2:BitmapData, param3:Boolean) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         var _loc4_:* = 1;
         if(_loc7_ || param2)
         {
            if(!param3)
            {
               §§push(-1);
               if(_loc7_)
               {
                  _loc4_ = §§pop();
                  addr35:
                  if(param2)
                  {
                     if(!(_loc8_ && param1))
                     {
                        addr44:
                        §§push(this);
                        §§push(this.§68§);
                        §§push(_loc4_ * param2.width);
                        if(!_loc8_)
                        {
                           §§push(§§pop() * param2.height);
                           if(!(_loc8_ && param3))
                           {
                              addr63:
                              §§push(§§pop() * 4);
                           }
                           §§pop().§68§ = §§pop() + §§pop();
                           addr67:
                           if(param1)
                           {
                              §§push(param1.width);
                              if(!(_loc8_ && this))
                              {
                                 addr90:
                                 §§push(int(§§pop()));
                                 if(!(_loc8_ && param3))
                                 {
                                    _loc5_ = §§pop();
                                    §§push(param1.height);
                                 }
                                 _loc6_ = §§pop();
                                 loop0:
                                 while(true)
                                 {
                                    §§push(_loc5_);
                                    if(_loc7_ || param3)
                                    {
                                       while(true)
                                       {
                                          §§push(1);
                                          if(_loc7_ || this)
                                          {
                                             loop2:
                                             while(true)
                                             {
                                                §§push(§§pop() >= §§pop());
                                                if(!(_loc8_ && param2))
                                                {
                                                   if(§§pop())
                                                   {
                                                      if(_loc7_)
                                                      {
                                                         addr215:
                                                         §§pop();
                                                         if(_loc7_)
                                                         {
                                                            addr218:
                                                            while(true)
                                                            {
                                                               §§push(_loc6_);
                                                               addr219:
                                                               while(true)
                                                               {
                                                                  §§push(1);
                                                                  addr220:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() >= §§pop());
                                                                  }
                                                               }
                                                            }
                                                            addr218:
                                                         }
                                                         §§goto(addr222);
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         addr222:
                                                         return;
                                                      }
                                                      §§push(this);
                                                      §§push(this.§6!E§);
                                                      §§push(_loc4_ * _loc5_);
                                                      if(!(_loc8_ && param1))
                                                      {
                                                         §§push(_loc6_);
                                                         if(!(_loc8_ && param3))
                                                         {
                                                            addr129:
                                                            §§push(§§pop() * §§pop());
                                                            if(!_loc8_)
                                                            {
                                                               §§push(4);
                                                            }
                                                            §§pop().§6!E§ = §§pop() + §§pop();
                                                            if(_loc8_)
                                                            {
                                                               break;
                                                            }
                                                            §§push(_loc5_);
                                                            if(!(_loc8_ && param3))
                                                            {
                                                               continue loop2;
                                                            }
                                                            addr163:
                                                            §§push(1);
                                                            if(_loc8_)
                                                            {
                                                               continue;
                                                            }
                                                            §§push(§§pop() >> §§pop());
                                                            if(_loc7_ || param3)
                                                            {
                                                               addr174:
                                                               _loc6_ = §§pop();
                                                               if(!_loc8_)
                                                               {
                                                                  break;
                                                               }
                                                               §§goto(addr218);
                                                            }
                                                            §§goto(addr219);
                                                         }
                                                         §§push(§§pop() * §§pop());
                                                      }
                                                      §§goto(addr129);
                                                   }
                                                   continue loop0;
                                                }
                                                §§goto(addr215);
                                             }
                                          }
                                          §§goto(addr220);
                                          §§push(_loc6_);
                                          if(!(_loc7_ || this))
                                          {
                                             continue;
                                          }
                                          §§goto(addr163);
                                       }
                                    }
                                    §§goto(addr219);
                                 }
                              }
                              §§goto(addr90);
                              §§push(int(§§pop()));
                           }
                           §§goto(addr215);
                        }
                        §§goto(addr63);
                     }
                     §§goto(addr90);
                  }
                  §§goto(addr67);
               }
               §§goto(addr90);
            }
            §§goto(addr35);
         }
         §§goto(addr44);
      }
      
      public function §9!?§() : Texture
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§+O§);
            if(_loc1_)
            {
               if(!§§pop())
               {
                  if(_loc1_)
                  {
                     this.§+O§ = this.§-§(new BitmapData(40,40,false,16711935));
                     addr45:
                     §§push(this.§+O§);
                  }
               }
               §§goto(addr45);
            }
            return §§pop();
         }
         §§goto(addr45);
      }
      
      public function §[^§(param1:Texture) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:* = null;
         var _loc3_:BitmapData = null;
         var _loc4_:int = 0;
         var _loc5_:* = this.§"#§;
         while(true)
         {
            for(_loc2_ in _loc5_)
            {
               if(_loc7_)
               {
                  break;
               }
               if(this.§"#§[_loc2_] == param1)
               {
                  break;
               }
            }
            return;
         }
         _loc3_ = _loc2_ as BitmapData;
         if(_loc6_ || this)
         {
            this.§`'§(param1,_loc3_,false);
            if(!(_loc7_ && _loc2_))
            {
               addr77:
               if(_loc3_)
               {
                  if(!(_loc7_ && _loc2_))
                  {
                     _loc3_.dispose();
                     if(_loc6_ || param1)
                     {
                        addr105:
                        delete this.§"#§[_loc2_];
                     }
                     param1.dispose();
                     §§goto(addr112);
                  }
               }
               §§goto(addr105);
            }
            addr112:
            return;
         }
         §§goto(addr77);
      }
      
      public function §5!C§(param1:String) : BitmapData
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§%F§ = this.§9,§(param1);
         if(!(_loc3_ && _loc3_))
         {
            if(_loc2_ == null)
            {
               if(!(_loc3_ && _loc2_))
               {
                  addr49:
                  §§push(this.§9,§(param1 + "_1"));
                  if(!(_loc3_ && _loc2_))
                  {
                     _loc2_ = §§pop();
                     addr63:
                     if(_loc2_ == null)
                     {
                        if(_loc4_ || _loc2_)
                        {
                           addr88:
                           _loc2_ = this.§9,§(param1 + "_01");
                           §§goto(addr90);
                        }
                        return null;
                     }
                     addr90:
                     if(_loc2_ == null)
                     {
                        if(!(_loc4_ || _loc3_))
                        {
                           §§goto(addr102);
                        }
                     }
                     §§goto(addr102);
                  }
                  §§goto(addr88);
               }
               addr102:
               return _loc2_.bitmapData;
            }
            §§goto(addr63);
         }
         §§goto(addr49);
      }
   }
}
