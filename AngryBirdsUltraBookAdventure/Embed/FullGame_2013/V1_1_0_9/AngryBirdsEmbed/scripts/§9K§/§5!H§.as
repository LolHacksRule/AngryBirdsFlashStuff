package §9K§
{
   import §0! §.§63§;
   import §0! §.Texture;
   import §=!0§.§>I§;
   import §>k§.§`-§;
   import §>k§.§`z§;
   import flash.display.BitmapData;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class §5!H§ extends EventDispatcher
   {
      
      private static const §,e§:int = 2;
      
      private static const § B§:int = 2048;
      
      private static var §?#§:§5!H§;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §,e§ = 2;
            if(!(_loc2_ && _loc1_))
            {
               addr43:
               § B§ = 2048;
            }
            return;
         }
         §§goto(addr43);
      }
      
      private var §9[§:Dictionary;
      
      private var §?U§:Vector.<§`z§>;
      
      private var §;4§:Dictionary;
      
      private var §?!,§:Boolean;
      
      private var §3!8§:String;
      
      private var §`!!§:Texture;
      
      private var §^!=§:int;
      
      private var §"!=§:int;
      
      public function §5!H§(param1:String = null)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super();
            if(_loc2_ || _loc3_)
            {
               this.§?U§ = new Vector.<§`z§>();
               if(!(_loc3_ && param1))
               {
                  this.§9[§ = new Dictionary();
                  if(!(_loc3_ && _loc3_))
                  {
                     this.§;4§ = new Dictionary();
                     if(_loc2_)
                     {
                        addr77:
                        this.§3!8§ = param1;
                     }
                  }
               }
               §§goto(addr77);
            }
            return;
         }
         §§goto(addr77);
      }
      
      public static function get §@6§() : §5!H§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(§?#§);
            if(_loc1_)
            {
               if(!§§pop())
               {
                  if(_loc1_ || §5!H§)
                  {
                     §?#§ = new §5!H§();
                     addr33:
                     §§push(§?#§);
                  }
               }
               §§goto(addr33);
            }
            return §§pop();
         }
         §§goto(addr33);
      }
      
      public function get §`!M§() : int
      {
         return this.§^!=§;
      }
      
      public function get §,G§() : int
      {
         return this.§"!=§;
      }
      
      public function get id() : String
      {
         return this.§3!8§;
      }
      
      public function dispose() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc1_:§,z§ = null;
         var _loc2_:§`z§ = null;
         if(!_loc5_)
         {
            if(this.§9[§)
            {
               addr28:
               var _loc3_:int = 0;
               var _loc4_:* = this.§9[§;
               loop1:
               while(true)
               {
                  §§push(§§hasnext(_loc4_,_loc3_));
                  if(!(_loc5_ && _loc2_))
                  {
                     if(§§pop())
                     {
                        _loc1_ = §§nextvalue(_loc3_,_loc4_);
                        if(!_loc5_)
                        {
                           this.§<T§(_loc1_.texture.parent);
                           if(_loc6_)
                           {
                              _loc1_.dispose();
                           }
                        }
                        continue;
                     }
                     if(_loc6_ || this)
                     {
                        if(_loc6_ || _loc1_)
                        {
                           this.§9[§ = null;
                           addr90:
                           if(this.§?U§)
                           {
                              if(_loc6_ || this)
                              {
                                 _loc3_ = 0;
                                 if(!(_loc5_ && _loc3_))
                                 {
                                    _loc4_ = this.§?U§;
                                    while(true)
                                    {
                                       §§push(§§hasnext(_loc4_,_loc3_));
                                       break loop1;
                                    }
                                    addr132:
                                    this.§?U§ = null;
                                    addr136:
                                    if(this.§;4§)
                                    {
                                       this.§;4§ = null;
                                    }
                                    §§push(this.§`!!§);
                                    if(_loc6_)
                                    {
                                       if(§§pop())
                                       {
                                          if(_loc6_)
                                          {
                                             addr161:
                                             this.§`!!§.dispose();
                                          }
                                          this.§`!!§ = null;
                                       }
                                       this.§?U§ = new Vector.<§`z§>();
                                       if(_loc6_ || _loc3_)
                                       {
                                          this.§9[§ = new Dictionary();
                                          addr182:
                                          this.§;4§ = new Dictionary();
                                       }
                                       return;
                                    }
                                    §§goto(addr161);
                                    addr131:
                                    addr129:
                                 }
                                 §§goto(addr132);
                              }
                              §§goto(addr182);
                           }
                           §§goto(addr136);
                        }
                        §§goto(addr132);
                     }
                     §§goto(addr131);
                  }
                  break;
               }
               while(true)
               {
                  if(§§pop())
                  {
                     _loc2_ = §§nextvalue(_loc3_,_loc4_);
                     if(_loc6_ || _loc2_)
                     {
                        _loc2_.dispose();
                     }
                     continue;
                  }
                  §§goto(addr132);
               }
            }
            §§goto(addr90);
         }
         §§goto(addr28);
      }
      
      public function §%R§(param1:§`z§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            if(this.§?!,§)
            {
               if(_loc2_)
               {
                  return;
               }
            }
            else if(this.§?U§.indexOf(param1) >= 0)
            {
               if(!_loc3_)
               {
                  return;
               }
            }
         }
         this.§?U§.push(param1);
      }
      
      private function §&!"§(param1:Array) : Rectangle
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc9_:§`z§ = null;
         var _loc10_:BitmapData = null;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:* = 0;
         var _loc7_:* = Number(1);
         var _loc8_:int = 0;
         while(_loc8_ < param1.length)
         {
            _loc9_ = param1[_loc8_];
            if(_loc11_ || param1)
            {
               if(_loc8_ == 0)
               {
                  if(!(_loc12_ && _loc3_))
                  {
                     §§push(_loc9_.scale);
                     if(_loc11_ || param1)
                     {
                        §§push(Number(§§pop()));
                        if(!(_loc12_ && _loc3_))
                        {
                           _loc7_ = §§pop();
                           if(!_loc11_)
                           {
                              addr86:
                              break;
                           }
                           addr81:
                        }
                        else
                        {
                           addr84:
                           if(§§pop() != _loc7_)
                           {
                              §§goto(addr86);
                           }
                        }
                        _loc10_ = _loc9_.bitmapData;
                        if(!(_loc12_ && param1))
                        {
                           if(_loc2_ + _loc10_.width + §,e§ >= § B§)
                           {
                              if(!(_loc12_ && _loc3_))
                              {
                                 _loc2_ = 0;
                                 if(!_loc12_)
                                 {
                                    §§push(_loc3_);
                                    if(_loc11_)
                                    {
                                       §§push(_loc6_);
                                       if(!_loc12_)
                                       {
                                          §§push(§§pop() + §§pop());
                                          if(_loc11_ || _loc2_)
                                          {
                                             §§push(int(§§pop()));
                                             if(!(_loc12_ && this))
                                             {
                                                _loc3_ = §§pop();
                                                if(!_loc12_)
                                                {
                                                   §§push(0);
                                                   if(!(_loc12_ && _loc2_))
                                                   {
                                                      _loc6_ = §§pop();
                                                      addr210:
                                                      addr208:
                                                      addr211:
                                                      if(_loc11_)
                                                      {
                                                         addr163:
                                                         §§push(_loc3_);
                                                      }
                                                      _loc4_ = _loc2_;
                                                      if(_loc10_.height + §,e§ > _loc6_)
                                                      {
                                                         addr217:
                                                         _loc6_ = int(_loc10_.height + §,e§);
                                                         if(_loc12_ && _loc3_)
                                                         {
                                                            continue;
                                                         }
                                                         addr240:
                                                         §§push(_loc3_);
                                                         if(_loc11_ || _loc2_)
                                                         {
                                                            addr251:
                                                            _loc5_ = §§pop() + _loc6_;
                                                            if(_loc12_)
                                                            {
                                                               continue;
                                                            }
                                                         }
                                                         §§goto(addr251);
                                                      }
                                                      _loc8_++;
                                                      continue;
                                                   }
                                                   if(§§pop() + _loc10_.height + §,e§ >= § B§)
                                                   {
                                                      if(_loc11_)
                                                      {
                                                         break;
                                                      }
                                                      addr198:
                                                      §§push(_loc2_);
                                                   }
                                                   else
                                                   {
                                                      §§push(_loc2_);
                                                      if(_loc11_ || this)
                                                      {
                                                         §§push(int(§§pop() + (_loc10_.width + §,e§)));
                                                         if(!(_loc12_ && _loc3_))
                                                         {
                                                            _loc2_ = §§pop();
                                                            if(!_loc12_)
                                                            {
                                                               §§goto(addr198);
                                                            }
                                                            §§goto(addr240);
                                                         }
                                                         §§goto(addr210);
                                                      }
                                                      §§goto(addr251);
                                                   }
                                                   §§goto(addr251);
                                                }
                                                §§goto(addr208);
                                             }
                                             §§push(_loc4_);
                                             if(_loc11_ || param1)
                                             {
                                                addr207:
                                                if(§§pop() > §§pop())
                                                {
                                                   §§goto(addr210);
                                                }
                                                §§goto(addr211);
                                             }
                                          }
                                          §§goto(addr251);
                                       }
                                       §§goto(addr207);
                                    }
                                    §§goto(addr251);
                                 }
                                 §§goto(addr217);
                              }
                              §§goto(addr198);
                           }
                           §§goto(addr163);
                        }
                        §§goto(addr210);
                     }
                  }
                  §§goto(addr81);
               }
               else
               {
                  §§push(_loc9_.scale);
               }
               §§goto(addr84);
            }
            §§goto(addr81);
         }
         return new Rectangle(0,0,_loc4_,_loc5_);
      }
      
      private function §%?§(param1:Array, param2:BitmapData) : Array
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         var _loc8_:§`z§ = null;
         var _loc9_:BitmapData = null;
         var _loc10_:§1Y§ = null;
         var _loc11_:* = 0;
         var _loc12_:* = 0;
         var _loc13_:§`-§ = null;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:Array = [];
         var _loc7_:Number = NaN;
         loop0:
         while(true)
         {
            §§push(param1);
            while(§§pop().length > 0)
            {
               §§push(param1);
               if(_loc14_ && param1)
               {
                  continue;
               }
               _loc8_ = §§pop()[0];
               if(_loc15_ || _loc3_)
               {
                  §§push(!isNaN(_loc7_));
                  if(_loc15_)
                  {
                     if(§§pop())
                     {
                        if(_loc15_ || this)
                        {
                           §§pop();
                           if(_loc15_ || this)
                           {
                              addr89:
                              §§push(_loc7_);
                              if(_loc15_)
                              {
                                 §§push(§§pop() == _loc8_.scale);
                                 if(!_loc14_)
                                 {
                                    addr98:
                                    if(!§§pop())
                                    {
                                       if(_loc15_ || param1)
                                       {
                                          addr106:
                                          break;
                                       }
                                    }
                                    else
                                    {
                                       §§push(_loc8_.scale);
                                       if(!_loc14_)
                                       {
                                          addr112:
                                          _loc7_ = §§pop();
                                       }
                                       §§goto(addr112);
                                    }
                                    _loc9_ = _loc8_.bitmapData;
                                    §§push(_loc3_);
                                    if(!(_loc14_ && this))
                                    {
                                       if(§§pop() + _loc9_.width + §,e§ > param2.width)
                                       {
                                          §§push(0);
                                          if(_loc15_ || this)
                                          {
                                             addr141:
                                             _loc3_ = §§pop();
                                             if(!(_loc14_ && _loc3_))
                                             {
                                                §§push(_loc4_);
                                                if(_loc15_ || param1)
                                                {
                                                   §§push(int(§§pop() + _loc5_));
                                                   if(_loc14_ && param2)
                                                   {
                                                   }
                                                   addr186:
                                                   _loc5_ = §§pop();
                                                   if(!_loc14_)
                                                   {
                                                      addr190:
                                                      if(_loc4_ + _loc9_.height + §,e§ > param2.height)
                                                      {
                                                         break;
                                                      }
                                                      param2.copyPixels(_loc9_,_loc9_.rect,new Point(_loc3_,_loc4_),null,null,true);
                                                      addr211:
                                                      (_loc10_ = new §1Y§()).offset = new Point(_loc3_,_loc4_);
                                                      _loc10_.§1y§ = _loc8_;
                                                      if(!(_loc14_ && this))
                                                      {
                                                         _loc6_.push(_loc10_);
                                                         if(_loc15_)
                                                         {
                                                            §§push(int(_loc8_.§69§));
                                                            if(_loc15_ || param2)
                                                            {
                                                               _loc11_ = §§pop();
                                                               addr247:
                                                               §§push(0);
                                                               if(!(_loc14_ && param1))
                                                               {
                                                                  _loc12_ = §§pop();
                                                                  while(_loc12_ < _loc11_)
                                                                  {
                                                                     (_loc13_ = _loc8_.§`Q§(_loc12_)).§<c§ = null;
                                                                     if(!_loc14_)
                                                                     {
                                                                        _loc13_.§@n§.offset(_loc3_,_loc4_);
                                                                        if(!_loc14_)
                                                                        {
                                                                           _loc12_++;
                                                                        }
                                                                     }
                                                                  }
                                                                  §§push(_loc3_);
                                                                  if(_loc15_ || this)
                                                                  {
                                                                     addr287:
                                                                     §§push(int(§§pop() + (_loc9_.width + §,e§)));
                                                                  }
                                                                  _loc3_ = §§pop();
                                                                  if(!_loc14_)
                                                                  {
                                                                     if(_loc9_.height + §,e§ <= _loc5_)
                                                                     {
                                                                        continue loop0;
                                                                     }
                                                                     addr312:
                                                                     §§push(int(_loc9_.height + §,e§));
                                                                  }
                                                                  §§goto(addr312);
                                                               }
                                                               _loc5_ = §§pop();
                                                               continue loop0;
                                                            }
                                                            §§goto(addr287);
                                                         }
                                                         §§goto(addr312);
                                                      }
                                                      §§goto(addr247);
                                                   }
                                                   §§goto(addr211);
                                                }
                                                _loc4_ = §§pop();
                                                §§push(0);
                                                if(!(_loc14_ && param2))
                                                {
                                                   §§goto(addr186);
                                                }
                                                §§goto(addr190);
                                             }
                                             §§goto(addr211);
                                          }
                                          §§goto(addr186);
                                       }
                                       §§goto(addr190);
                                    }
                                    §§goto(addr141);
                                 }
                                 §§goto(addr98);
                              }
                              §§goto(addr112);
                           }
                           §§goto(addr106);
                        }
                     }
                  }
                  §§goto(addr98);
               }
               §§goto(addr89);
            }
            return _loc6_;
         }
      }
      
      public function §1#§() : Boolean
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         var _loc1_:§`z§ = null;
         var _loc3_:Rectangle = null;
         var _loc4_:BitmapData = null;
         var _loc5_:Array = null;
         var _loc6_:Texture = null;
         var _loc7_:* = 0;
         var _loc8_:§1Y§ = null;
         var _loc9_:* = 0;
         var _loc10_:* = 0;
         var _loc11_:§`-§ = null;
         if(_loc15_)
         {
            §§push(§>I§.§]u§());
            if(!(_loc14_ && _loc3_))
            {
               if(!§§pop())
               {
                  if(!(_loc14_ && _loc2_))
                  {
                     §§push(false);
                     if(!(_loc14_ && _loc1_))
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr74:
                     §§push(this.§?!,§);
                     if(_loc15_)
                     {
                        if(§§pop())
                        {
                           if(_loc15_)
                           {
                              §§goto(addr82);
                           }
                        }
                        var _loc2_:Array = [];
                        var _loc12_:int = 0;
                        var _loc13_:* = this.§?U§;
                        loop0:
                        while(true)
                        {
                           §§push(§§hasnext(_loc13_,_loc12_));
                           if(_loc15_ || _loc2_)
                           {
                              if(§§pop())
                              {
                                 _loc1_ = §§nextvalue(_loc12_,_loc13_);
                                 if(!_loc14_)
                                 {
                                    if(_loc1_.§69§ <= 0)
                                    {
                                       continue;
                                    }
                                    if(!_loc15_)
                                    {
                                       continue;
                                    }
                                 }
                                 _loc2_.push(_loc1_);
                                 continue;
                              }
                              if(!_loc14_)
                              {
                                 if(!(_loc14_ && _loc1_))
                                 {
                                    if(_loc15_ || _loc2_)
                                    {
                                       while(true)
                                       {
                                          if(_loc2_.length > 0)
                                          {
                                             _loc3_ = this.§&!"§(_loc2_);
                                             if(!_loc14_)
                                             {
                                                if(_loc3_.width * _loc3_.height == 0)
                                                {
                                                   if(_loc15_)
                                                   {
                                                      break;
                                                   }
                                                }
                                                _loc4_ = new BitmapData(_loc3_.width,_loc3_.height,true,0);
                                                if((_loc5_ = this.§%?§(_loc2_,_loc4_)).length == 0)
                                                {
                                                   if(!(_loc14_ && this))
                                                   {
                                                      throw new Error("Found too large sprite sheet image!");
                                                   }
                                                }
                                                _loc6_ = this.§<o§(_loc4_);
                                                if(_loc15_ || _loc2_)
                                                {
                                                   §§push(0);
                                                   if(!(_loc14_ && this))
                                                   {
                                                      _loc7_ = §§pop();
                                                      if(_loc14_)
                                                      {
                                                         continue;
                                                      }
                                                      addr223:
                                                      while(true)
                                                      {
                                                         §§push(_loc7_);
                                                      }
                                                      addr292:
                                                   }
                                                   loop2:
                                                   for(; §§pop() < _loc5_.length; §§goto(addr292))
                                                   {
                                                      _loc1_ = (_loc8_ = _loc5_[_loc7_]).§1y§;
                                                      if(_loc15_)
                                                      {
                                                         §§push(_loc1_.§69§);
                                                         if(!_loc14_)
                                                         {
                                                            §§push(int(§§pop()));
                                                            if(!_loc14_)
                                                            {
                                                               _loc9_ = §§pop();
                                                               if(!_loc14_)
                                                               {
                                                                  addr246:
                                                                  §§push(0);
                                                                  if(!_loc14_)
                                                                  {
                                                                     addr249:
                                                                     _loc10_ = §§pop();
                                                                     if(_loc14_ && this)
                                                                     {
                                                                        continue;
                                                                     }
                                                                     loop3:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc10_);
                                                                        addr282:
                                                                        for(; §§pop() < _loc9_; continue loop3)
                                                                        {
                                                                           _loc11_ = _loc1_.§`Q§(_loc10_);
                                                                           if(_loc15_)
                                                                           {
                                                                              this.§%v§(_loc11_,_loc6_,_loc4_,_loc1_.scale);
                                                                              if(_loc14_ && _loc1_)
                                                                              {
                                                                                 continue;
                                                                              }
                                                                           }
                                                                           _loc10_++;
                                                                        }
                                                                        if(_loc14_ && _loc3_)
                                                                        {
                                                                           continue loop2;
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr282);
                                                               }
                                                               _loc7_++;
                                                               continue;
                                                            }
                                                            §§goto(addr249);
                                                         }
                                                         §§goto(addr282);
                                                      }
                                                      §§goto(addr246);
                                                   }
                                                   continue;
                                                }
                                                §§goto(addr223);
                                             }
                                             break;
                                          }
                                          if(!(_loc14_ && _loc1_))
                                          {
                                             _loc12_ = 0;
                                             addr339:
                                             if(_loc15_)
                                             {
                                                _loc13_ = this.§?U§;
                                                addr336:
                                                §§push(§§hasnext(_loc13_,_loc12_));
                                                break loop0;
                                             }
                                             if(_loc15_)
                                             {
                                                this.§?U§ = new Vector.<§`z§>();
                                                if(!_loc15_)
                                                {
                                                }
                                             }
                                             §§goto(addr353);
                                          }
                                          this.§?!,§ = true;
                                       }
                                       throw new Error("Found too large sprite sheet image!");
                                    }
                                    addr353:
                                    return true;
                                 }
                              }
                              §§goto(addr339);
                           }
                           break;
                        }
                        while(§§pop())
                        {
                           _loc1_ = §§nextvalue(_loc12_,_loc13_);
                           if(_loc15_)
                           {
                              _loc1_.dispose();
                           }
                           §§goto(addr336);
                        }
                        §§goto(addr338);
                     }
                  }
               }
               §§goto(addr74);
            }
            addr82:
            return true;
         }
         §§goto(addr74);
      }
      
      private function §%v§(param1:§`-§, param2:Texture, param3:BitmapData, param4:Number) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc6_:Rectangle = null;
         var _loc7_:§63§ = null;
         var _loc5_:§,z§;
         if(!(_loc5_ = this.§9[§[param1.mName]))
         {
            _loc6_ = param1.§@n§.clone();
            _loc7_ = new §63§(param2,_loc6_,false);
            _loc5_ = new §,z§(_loc7_,param3,_loc6_,param1.§!!J§,param1.§[R§,param4);
            if(!(_loc9_ && param3))
            {
               this.§9[§[param1.mName] = _loc5_;
            }
         }
      }
      
      public function §]b§() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(§§newactivation());
         if(!(_loc6_ && _loc1_))
         {
            §§push(null);
            if(!_loc6_)
            {
               §§pop().§§slot[1] = §§pop();
               if(!_loc6_)
               {
                  addr37:
                  var texture:Texture = null;
                  if(_loc5_ || _loc3_)
                  {
                     §§goto(addr46);
                  }
                  §§goto(addr49);
               }
               addr46:
               if(!§>I§.§8$§)
               {
                  var _loc2_:int = 0;
                  var _loc3_:* = this.§;4§;
                  addr49:
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
                              if(_loc5_ || _loc3_)
                              {
                                 §§pop().§§slot[2] = this.§;4§[bd];
                                 addr111:
                                 if(!_loc6_)
                                 {
                                    addr104:
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
                           §§goto(addr111);
                        }
                        §§goto(addr104);
                     }
                     §§goto(addr111);
                  }
               }
               return;
            }
         }
         §§goto(addr37);
      }
      
      public function §3!'§(param1:String) : §,z§
      {
         return this.§9[§[param1];
      }
      
      public function §<o§(param1:BitmapData, param2:Boolean = true) : Texture
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Texture = this.§;4§[param1];
         if(_loc5_ || this)
         {
            if(_loc3_)
            {
               if(!(_loc4_ && param2))
               {
                  §§goto(addr49);
               }
            }
            _loc3_ = §>I§.§ G§(param1,param2);
            if(_loc5_ || _loc3_)
            {
               this.§;4§[param1] = _loc3_;
               if(!(_loc4_ && _loc3_))
               {
                  this.§!K§(_loc3_,param1,true);
               }
            }
            return _loc3_;
         }
         addr49:
         return _loc3_;
      }
      
      public function §!K§(param1:Texture, param2:BitmapData, param3:Boolean) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         var _loc4_:* = 1;
         if(!(_loc8_ && param3))
         {
            if(!param3)
            {
               §§push(-1);
               if(_loc7_ || param2)
               {
                  _loc4_ = §§pop();
                  addr40:
                  if(param2)
                  {
                     if(!(_loc8_ && this))
                     {
                        §§push(this);
                        §§push(this.§"!=§);
                        §§push(_loc4_ * param2.width);
                        if(_loc7_)
                        {
                           §§push(§§pop() * param2.height);
                           if(!(_loc8_ && param2))
                           {
                              addr68:
                              §§push(§§pop() * 4);
                           }
                           §§pop().§"!=§ = §§pop() + §§pop();
                           addr72:
                           if(param1)
                           {
                              addr74:
                              §§push(param1.width);
                              if(!_loc8_)
                              {
                                 §§push(int(§§pop()));
                                 if(!(_loc8_ && param3))
                                 {
                                    addr86:
                                    _loc5_ = §§pop();
                                    addr89:
                                    §§push(int(param1.height));
                                 }
                                 _loc6_ = §§pop();
                                 addr91:
                                 while(true)
                                 {
                                    §§push(_loc5_);
                                    if(_loc7_)
                                    {
                                       loop1:
                                       while(true)
                                       {
                                          §§push(1);
                                          if(!_loc8_)
                                          {
                                             §§push(§§pop() >= §§pop());
                                             if(!_loc8_)
                                             {
                                                if(§§pop())
                                                {
                                                   if(!(_loc8_ && param2))
                                                   {
                                                      addr205:
                                                      §§pop();
                                                      if(!(_loc8_ && this))
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(_loc6_);
                                                            addr214:
                                                            while(true)
                                                            {
                                                               §§push(1);
                                                               addr215:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() >= §§pop());
                                                               }
                                                            }
                                                         }
                                                         addr213:
                                                      }
                                                      §§goto(addr217);
                                                   }
                                                }
                                                for(; §§pop(); §§goto(addr215))
                                                {
                                                   §§push(this);
                                                   §§push(this.§^!=§);
                                                   §§push(_loc4_ * _loc5_);
                                                   if(_loc7_)
                                                   {
                                                      §§push(_loc6_);
                                                      if(!(_loc8_ && param3))
                                                      {
                                                         addr124:
                                                         §§push(§§pop() * §§pop());
                                                         if(_loc7_)
                                                         {
                                                            §§push(4);
                                                         }
                                                         §§pop().§^!=§ = §§pop() + §§pop();
                                                         if(_loc7_)
                                                         {
                                                            §§push(_loc5_);
                                                            if(_loc7_)
                                                            {
                                                               §§push(1);
                                                               if(!(_loc8_ && param3))
                                                               {
                                                                  §§push(§§pop() >> §§pop());
                                                                  if(_loc8_ && param1)
                                                                  {
                                                                     continue loop1;
                                                                  }
                                                                  addr147:
                                                                  _loc5_ = §§pop();
                                                                  if(_loc8_ && param1)
                                                                  {
                                                                     break loop1;
                                                                  }
                                                                  §§push(_loc6_);
                                                                  if(!_loc7_)
                                                                  {
                                                                     continue loop1;
                                                                  }
                                                                  §§push(1);
                                                                  if(_loc8_ && param2)
                                                                  {
                                                                     continue;
                                                                  }
                                                               }
                                                               §§push(§§pop() >> §§pop());
                                                               if(_loc7_ || this)
                                                               {
                                                                  _loc6_ = §§pop();
                                                                  if(_loc7_)
                                                                  {
                                                                     break loop1;
                                                                  }
                                                                  break;
                                                               }
                                                               continue loop1;
                                                            }
                                                            §§goto(addr147);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr213);
                                                         }
                                                      }
                                                      §§push(§§pop() * §§pop());
                                                   }
                                                   §§goto(addr124);
                                                }
                                                addr217:
                                                return;
                                             }
                                             §§goto(addr205);
                                          }
                                          §§goto(addr215);
                                       }
                                       continue;
                                    }
                                    §§goto(addr214);
                                 }
                              }
                              §§goto(addr89);
                           }
                           §§goto(addr205);
                        }
                        §§goto(addr68);
                     }
                     §§goto(addr74);
                  }
                  §§goto(addr72);
               }
               §§goto(addr86);
            }
            §§goto(addr40);
         }
         §§goto(addr91);
      }
      
      public function §=^§() : Texture
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            §§push(this.§`!!§);
            if(!(_loc2_ && _loc2_))
            {
               if(!§§pop())
               {
                  if(!_loc2_)
                  {
                     addr45:
                     this.§`!!§ = this.§<o§(new BitmapData(40,40,false,16711935));
                  }
               }
               §§push(this.§`!!§);
            }
            return §§pop();
         }
         §§goto(addr45);
      }
      
      public function §<T§(param1:Texture) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:* = null;
         var _loc3_:BitmapData = null;
         var _loc4_:int = 0;
         var _loc5_:* = this.§;4§;
         while(true)
         {
            for(_loc2_ in _loc5_)
            {
               if(!(_loc7_ && _loc3_))
               {
                  if(this.§;4§[_loc2_] != param1)
                  {
                     continue;
                  }
               }
               _loc3_ = _loc2_ as BitmapData;
               this.§!K§(param1,_loc3_,false);
               if(_loc6_)
               {
                  if(_loc3_)
                  {
                     if(!(_loc7_ && this))
                     {
                        addr89:
                        _loc3_.dispose();
                        addr91:
                        delete this.§;4§[_loc2_];
                        if(!(_loc6_ || _loc3_))
                        {
                           continue;
                        }
                     }
                     param1.dispose();
                     if(!_loc7_)
                     {
                        break;
                     }
                     continue;
                  }
                  §§goto(addr91);
               }
               §§goto(addr89);
            }
            return;
         }
      }
      
      public function §3W§(param1:String) : BitmapData
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§,z§ = this.§3!'§(param1);
         if(!(_loc4_ && this))
         {
            if(_loc2_ == null)
            {
               if(!_loc4_)
               {
                  §§push(this.§3!'§(param1 + "_1"));
                  if(!(_loc4_ && param1))
                  {
                     _loc2_ = §§pop();
                     addr67:
                     if(_loc2_ == null)
                     {
                        if(_loc3_)
                        {
                           addr77:
                           _loc2_ = this.§3!'§(param1 + "_01");
                           addr79:
                           if(_loc2_ == null)
                           {
                              if(_loc3_ || _loc3_)
                              {
                                 §§goto(addr89);
                              }
                           }
                        }
                        return _loc2_.bitmapData;
                     }
                     §§goto(addr79);
                  }
                  §§goto(addr77);
               }
               §§goto(addr89);
            }
            §§goto(addr67);
         }
         addr89:
         return null;
      }
   }
}
