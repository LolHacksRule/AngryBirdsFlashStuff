package §<T§
{
   import §"a§.§!"J§;
   import §,"R§.§,!+§;
   import §,"R§.§2!J§;
   import §<5§.§%!P§;
   import §<5§.Texture;
   import flash.display.BitmapData;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class §`m§ extends EventDispatcher
   {
      
      private static const §7!h§:int = 2;
      
      private static const § !q§:int = 2048;
      
      private static var §-!9§:§`m§;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §7!h§ = 2;
            do
            {
               § !q§ = 2048;
            }
            while(!(_loc2_ || §`m§));
            
         }
      }
      
      private var §?^§:Dictionary;
      
      private var §8^§:Vector.<§,!+§>;
      
      private var §&,§:Dictionary;
      
      private var §="7§:Boolean;
      
      private var §&N§:String;
      
      private var §!"?§:Texture;
      
      private var §>&§:int;
      
      private var §]!&§:int;
      
      public function §`m§(param1:String = null)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super();
            while(true)
            {
               this.§8^§ = new Vector.<§,!+§>();
               addr81:
               addr60:
               while(true)
               {
                  this.§?^§ = new Dictionary();
               }
               if(_loc2_ && _loc3_)
               {
                  continue;
               }
               this.§&N§ = param1;
               if(!_loc2_)
               {
                  if(!_loc3_)
                  {
                     §§goto(addr81);
                  }
                  return;
                  addr42:
               }
               loop3:
               while(true)
               {
                  if(!_loc2_)
                  {
                     §§goto(addr60);
                  }
                  else
                  {
                     while(true)
                     {
                        this.§&,§ = new Dictionary();
                        continue loop3;
                     }
                     §§goto(addr42);
                     addr73:
                  }
               }
               addr67:
               §§goto(addr81);
            }
         }
         §§goto(addr73);
      }
      
      public static function get §&"5§() : §`m§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(§-!9§);
            if(!_loc2_)
            {
               if(!§§pop())
               {
                  if(!_loc2_)
                  {
                     addr24:
                     §-!9§ = new §`m§();
                  }
               }
               return §-!9§;
            }
         }
         §§goto(addr24);
      }
      
      public function get §!!D§() : int
      {
         return this.§>&§;
      }
      
      public function get §7!-§() : int
      {
         return this.§]!&§;
      }
      
      public function get id() : String
      {
         return this.§&N§;
      }
      
      public function dispose() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc1_:§^"5§ = null;
         var _loc2_:§,!+§ = null;
         if(_loc5_ || _loc2_)
         {
            if(this.§?^§)
            {
               addr32:
               var _loc3_:int = 0;
               var _loc4_:* = this.§?^§;
               loop14:
               while(true)
               {
                  §§push(§§hasnext(_loc4_,_loc3_));
                  if(!(_loc6_ && _loc3_))
                  {
                     if(§§pop())
                     {
                        _loc1_ = §§nextvalue(_loc3_,_loc4_);
                        if(_loc5_ || this)
                        {
                           this.unregisterBitmapDataTexture(_loc1_.texture.parent);
                           if(!_loc5_)
                           {
                              continue;
                           }
                        }
                        _loc1_.dispose();
                        continue;
                     }
                     if(!_loc6_)
                     {
                        if(_loc5_ || _loc1_)
                        {
                           if(!_loc6_)
                           {
                              this.§?^§ = null;
                              if(_loc5_ || this)
                              {
                                 addr93:
                                 if(this.§8^§)
                                 {
                                    if(_loc5_ || _loc1_)
                                    {
                                       _loc3_ = 0;
                                       if(!_loc6_)
                                       {
                                          addr107:
                                          _loc4_ = this.§8^§;
                                          while(true)
                                          {
                                             §§push(§§hasnext(_loc4_,_loc3_));
                                             break loop14;
                                          }
                                          addr137:
                                       }
                                       if(_loc5_ || this)
                                       {
                                          this.§8^§ = null;
                                          addr148:
                                          loop12:
                                          while(true)
                                          {
                                             addr250:
                                             while(true)
                                             {
                                                if(this.§&,§)
                                                {
                                                   while(true)
                                                   {
                                                      this.§&,§ = null;
                                                      addr256:
                                                      while(true)
                                                      {
                                                      }
                                                   }
                                                   addr253:
                                                }
                                                loop8:
                                                while(true)
                                                {
                                                   §§push(this.§!"?§);
                                                   if(!_loc6_)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         addr238:
                                                         while(true)
                                                         {
                                                            §§push(this.§!"?§);
                                                            break loop8;
                                                         }
                                                         addr238:
                                                      }
                                                      loop6:
                                                      while(true)
                                                      {
                                                         this.§8^§ = new Vector.<§,!+§>();
                                                         addr200:
                                                         while(true)
                                                         {
                                                            if(_loc5_)
                                                            {
                                                               addr202:
                                                               if(_loc5_ || _loc2_)
                                                               {
                                                                  break loop6;
                                                               }
                                                               §§goto(addr256);
                                                            }
                                                            addr241:
                                                            while(true)
                                                            {
                                                               if(!(_loc5_ || _loc1_))
                                                               {
                                                                  continue loop12;
                                                               }
                                                               this.§!"?§ = null;
                                                               while(true)
                                                               {
                                                                  if(!(_loc6_ && _loc3_))
                                                                  {
                                                                     continue loop6;
                                                                  }
                                                                  §§goto(addr253);
                                                               }
                                                            }
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         this.§?^§ = new Dictionary();
                                                         for(; _loc5_ || _loc1_; this.§&,§ = new Dictionary(),if(!(_loc6_ && this))
                                                         {
                                                            return;
                                                         })
                                                         {
                                                            if(!(_loc6_ && _loc1_))
                                                            {
                                                               if(!(_loc6_ && _loc3_))
                                                               {
                                                                  continue;
                                                               }
                                                               §§goto(addr238);
                                                            }
                                                            §§goto(addr214);
                                                         }
                                                         §§goto(addr200);
                                                         §§goto(addr202);
                                                      }
                                                      addr209:
                                                   }
                                                   break;
                                                }
                                                while(true)
                                                {
                                                   §§pop().dispose();
                                                   §§goto(addr241);
                                                }
                                             }
                                          }
                                          addr148:
                                       }
                                       §§goto(addr209);
                                    }
                                    §§goto(addr148);
                                 }
                                 §§goto(addr250);
                              }
                              §§goto(addr238);
                           }
                           §§goto(addr148);
                        }
                     }
                     §§goto(addr107);
                  }
                  break;
               }
               while(true)
               {
                  if(§§pop())
                  {
                     _loc2_ = §§nextvalue(_loc3_,_loc4_);
                     if(_loc5_ || _loc1_)
                     {
                        _loc2_.dispose();
                     }
                     continue;
                  }
                  §§goto(addr107);
               }
            }
            §§goto(addr93);
         }
         §§goto(addr32);
      }
      
      public function §0!6§(param1:§,!+§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            if(!this.§="7§)
            {
               loop0:
               while(this.§8^§.indexOf(param1) < 0)
               {
                  while(true)
                  {
                     this.§8^§.push(param1);
                     if(_loc2_)
                     {
                        break;
                     }
                     if(_loc2_)
                     {
                        continue;
                     }
                     continue loop0;
                  }
                  if(_loc2_ || this)
                  {
                     if(!(_loc3_ && _loc2_))
                     {
                        return;
                        addr69:
                     }
                     else
                     {
                        addr84:
                     }
                     return;
                  }
                  break;
               }
               return;
            }
            §§goto(addr84);
         }
         §§goto(addr69);
      }
      
      private function §=!3§(param1:Array) : Rectangle
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc9_:§,!+§ = null;
         var _loc10_:BitmapData = null;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:* = 0;
         var _loc7_:* = Number(1);
         var _loc8_:int = 0;
         loop0:
         while(_loc8_ < param1.length)
         {
            _loc9_ = param1[_loc8_];
            if(_loc12_ || _loc2_)
            {
               if(_loc8_ == 0)
               {
                  if(_loc12_)
                  {
                     addr57:
                     §§push(_loc9_.scale);
                     if(!_loc11_)
                     {
                        §§push(Number(§§pop()));
                        if(!(_loc11_ && this))
                        {
                           _loc7_ = §§pop();
                           if(!_loc12_)
                           {
                              addr77:
                              break;
                           }
                        }
                        else
                        {
                           addr75:
                           if(§§pop() != _loc7_)
                           {
                              §§goto(addr77);
                           }
                        }
                        _loc10_ = _loc9_.bitmapData;
                        if(!(_loc11_ && _loc2_))
                        {
                           §§push(_loc2_);
                           while(true)
                           {
                              if(§§pop() + _loc10_.width + §7!h§ >= § !q§)
                              {
                                 while(true)
                                 {
                                    §§push(0);
                                    addr306:
                                    while(true)
                                    {
                                       _loc2_ = §§pop();
                                       addr307:
                                       while(true)
                                       {
                                          §§push(_loc3_);
                                          addr292:
                                          while(true)
                                          {
                                             §§push(_loc6_);
                                             addr293:
                                             while(true)
                                             {
                                                §§push(§§pop() + §§pop());
                                                addr294:
                                                while(true)
                                                {
                                                   §§push(int(§§pop()));
                                                   addr295:
                                                   while(true)
                                                   {
                                                      _loc3_ = §§pop();
                                                      addr296:
                                                      while(true)
                                                      {
                                                         §§push(0);
                                                         addr278:
                                                         while(true)
                                                         {
                                                            _loc6_ = §§pop();
                                                            addr289:
                                                            while(true)
                                                            {
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
                                 addr305:
                              }
                              while(true)
                              {
                                 §§push(_loc3_);
                                 if(!(_loc11_ && this))
                                 {
                                    if(§§pop() + _loc10_.height + §7!h§ < § !q§)
                                    {
                                       §§push(_loc2_);
                                       loop10:
                                       while(true)
                                       {
                                          §§push(int(§§pop() + (_loc10_.width + §7!h§)));
                                          addr274:
                                          while(true)
                                          {
                                             _loc2_ = §§pop();
                                             addr275:
                                             while(true)
                                             {
                                                §§push(_loc2_);
                                                continue loop10;
                                             }
                                          }
                                       }
                                       addr268:
                                    }
                                    §§goto(addr259);
                                 }
                                 §§goto(addr268);
                              }
                              break loop0;
                              if(!(_loc12_ || this))
                              {
                                 continue;
                              }
                              _loc6_ = §§pop();
                              §§goto(addr188);
                           }
                        }
                        §§goto(addr296);
                     }
                     §§goto(addr75);
                  }
                  §§goto(addr77);
               }
               else
               {
                  §§push(_loc9_.scale);
               }
               §§goto(addr75);
            }
            §§goto(addr57);
         }
         return new Rectangle(0,0,_loc4_,_loc5_);
      }
      
      private function §?t§(param1:Array, param2:BitmapData) : Array
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         var _loc8_:§,!+§ = null;
         var _loc9_:BitmapData = null;
         var _loc10_:§=!c§ = null;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:§2!J§ = null;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:int = 0;
         var _loc6_:Array = [];
         var _loc7_:Number = NaN;
         while(true)
         {
            §§push(param1);
            while(§§pop().length > 0)
            {
               §§push(param1);
               if(_loc14_ && _loc3_)
               {
                  continue;
               }
               _loc8_ = §§pop()[0];
               if(_loc15_ || param2)
               {
                  §§push(!isNaN(_loc7_));
                  if(_loc15_)
                  {
                     if(§§pop())
                     {
                        if(!_loc14_)
                        {
                           §§pop();
                           if(_loc15_)
                           {
                              §§push(_loc7_);
                              if(!_loc14_)
                              {
                                 §§push(§§pop() == _loc8_.scale);
                                 if(_loc15_)
                                 {
                                    addr88:
                                    addr87:
                                    if(!§§pop())
                                    {
                                       if(!_loc14_)
                                       {
                                          addr91:
                                          break;
                                       }
                                    }
                                    else
                                    {
                                       §§push(_loc8_.scale);
                                       if(!(_loc14_ && param1))
                                       {
                                          addr102:
                                          _loc7_ = §§pop();
                                       }
                                       §§goto(addr102);
                                    }
                                    _loc9_ = _loc8_.bitmapData;
                                    if(!_loc14_)
                                    {
                                       §§push(_loc3_);
                                       if(_loc15_)
                                       {
                                          if(§§pop() + _loc9_.width + §7!h§ > param2.width)
                                          {
                                             loop2:
                                             while(true)
                                             {
                                                §§push(0);
                                                addr216:
                                                loop11:
                                                while(true)
                                                {
                                                   _loc3_ = §§pop();
                                                   addr217:
                                                   loop6:
                                                   while(true)
                                                   {
                                                      §§push(_loc4_);
                                                      addr168:
                                                      while(true)
                                                      {
                                                         if(!(_loc14_ && _loc3_))
                                                         {
                                                            break loop6;
                                                         }
                                                         continue loop11;
                                                      }
                                                      continue loop11;
                                                   }
                                                   addr188:
                                                   §§push(int(§§pop() + _loc5_));
                                                   while(true)
                                                   {
                                                      _loc4_ = §§pop();
                                                      addr189:
                                                      while(true)
                                                      {
                                                         if(!(_loc14_ && param1))
                                                         {
                                                            continue loop2;
                                                         }
                                                         §§goto(addr217);
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr110);
                                       }
                                       §§goto(addr216);
                                    }
                                    §§goto(addr136);
                                 }
                                 §§goto(addr88);
                              }
                              §§goto(addr102);
                           }
                           §§goto(addr91);
                        }
                        §§goto(addr87);
                     }
                  }
                  §§goto(addr88);
               }
               §§goto(addr91);
            }
            return _loc6_;
         }
      }
      
      public function §0"V§() : Boolean
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         var _loc1_:§,!+§ = null;
         var _loc3_:Rectangle = null;
         var _loc4_:BitmapData = null;
         var _loc5_:Array = null;
         var _loc6_:Texture = null;
         var _loc7_:* = 0;
         var _loc8_:§=!c§ = null;
         var _loc9_:* = 0;
         var _loc10_:* = 0;
         var _loc11_:§2!J§ = null;
         if(_loc15_)
         {
            §§push(§!"J§.§+",§());
            if(_loc15_ || _loc3_)
            {
               if(!§§pop())
               {
                  if(_loc15_ || this)
                  {
                     §§push(false);
                     if(_loc15_ || _loc2_)
                     {
                        return §§pop();
                     }
                     addr83:
                     if(§§pop())
                     {
                        if(_loc15_ || _loc3_)
                        {
                           §§push(true);
                        }
                        else
                        {
                           addr93:
                           var _loc2_:Array = [];
                           var _loc12_:int = 0;
                           var _loc13_:* = this.§8^§;
                           loop0:
                           while(true)
                           {
                              §§push(§§hasnext(_loc13_,_loc12_));
                              if(_loc15_ || this)
                              {
                                 if(§§pop())
                                 {
                                    _loc1_ = §§nextvalue(_loc12_,_loc13_);
                                    if(_loc15_)
                                    {
                                       if(_loc1_.§'"'§ <= 0)
                                       {
                                          continue;
                                       }
                                       if(!(_loc15_ || this))
                                       {
                                          continue;
                                       }
                                    }
                                    _loc2_.push(_loc1_);
                                    continue;
                                 }
                                 if(_loc15_)
                                 {
                                    if(_loc15_ || _loc1_)
                                    {
                                       if(!_loc14_)
                                       {
                                          while(true)
                                          {
                                             if(_loc2_.length > 0)
                                             {
                                                _loc3_ = this.§=!3§(_loc2_);
                                                if(_loc15_ || _loc2_)
                                                {
                                                   if(_loc3_.width * _loc3_.height == 0)
                                                   {
                                                      if(_loc15_)
                                                      {
                                                         break;
                                                      }
                                                   }
                                                   _loc4_ = new BitmapData(_loc3_.width,_loc3_.height,true,0);
                                                   if((_loc5_ = this.§?t§(_loc2_,_loc4_)).length == 0)
                                                   {
                                                      if(!(_loc14_ && _loc2_))
                                                      {
                                                         throw new Error("Found too large sprite sheet image!");
                                                      }
                                                   }
                                                   _loc6_ = this.getTextureFromBitmapData(_loc4_);
                                                   if(_loc15_ || _loc2_)
                                                   {
                                                      §§push(0);
                                                      if(_loc15_)
                                                      {
                                                         _loc7_ = §§pop();
                                                         if(!(_loc15_ || _loc3_))
                                                         {
                                                            continue;
                                                         }
                                                         addr238:
                                                         while(true)
                                                         {
                                                            §§push(_loc7_);
                                                         }
                                                         addr317:
                                                      }
                                                      for(; §§pop() < _loc5_.length; §§goto(addr317))
                                                      {
                                                         _loc1_ = (_loc8_ = _loc5_[_loc7_]).§>-§;
                                                         if(!(_loc14_ && this))
                                                         {
                                                            §§push(_loc1_.§'"'§);
                                                            if(_loc15_ || this)
                                                            {
                                                               §§push(int(§§pop()));
                                                               if(_loc15_)
                                                               {
                                                                  _loc9_ = §§pop();
                                                                  if(_loc15_)
                                                                  {
                                                                     §§push(0);
                                                                     if(!(_loc14_ && _loc3_))
                                                                     {
                                                                        _loc10_ = §§pop();
                                                                        if(_loc14_)
                                                                        {
                                                                           continue;
                                                                        }
                                                                     }
                                                                     loop4:
                                                                     for(; §§pop() < _loc9_; while(true)
                                                                     {
                                                                        continue loop4;
                                                                     })
                                                                     {
                                                                        _loc11_ = _loc1_.§ "D§(_loc10_);
                                                                        if(_loc15_ || _loc2_)
                                                                        {
                                                                           this.§do§(_loc11_,_loc6_,_loc4_,_loc1_.scale);
                                                                           if(_loc14_)
                                                                           {
                                                                              continue;
                                                                           }
                                                                        }
                                                                        _loc10_++;
                                                                     }
                                                                     if(!(_loc14_ && _loc1_))
                                                                     {
                                                                        addr316:
                                                                        _loc7_++;
                                                                     }
                                                                     continue;
                                                                     addr307:
                                                                  }
                                                                  §§goto(addr306);
                                                               }
                                                            }
                                                            §§goto(addr307);
                                                         }
                                                         §§goto(addr316);
                                                      }
                                                      continue;
                                                   }
                                                   §§goto(addr238);
                                                }
                                                break;
                                             }
                                             if(!_loc14_)
                                             {
                                                _loc12_ = 0;
                                                if(!(_loc14_ && _loc1_))
                                                {
                                                   addr336:
                                                   _loc13_ = this.§8^§;
                                                   while(true)
                                                   {
                                                      §§push(§§hasnext(_loc13_,_loc12_));
                                                      break loop0;
                                                   }
                                                   addr351:
                                                }
                                                if(!(_loc14_ && this))
                                                {
                                                   this.§8^§ = new Vector.<§,!+§>();
                                                   addr372:
                                                }
                                                do
                                                {
                                                   this.§="7§ = true;
                                                }
                                                while(_loc14_ && _loc1_);
                                                
                                                return true;
                                                addr389:
                                             }
                                             §§goto(addr372);
                                          }
                                          throw new Error("Found too large sprite sheet image!");
                                       }
                                       §§goto(addr389);
                                    }
                                 }
                                 §§goto(addr336);
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
                              §§goto(addr336);
                           }
                        }
                     }
                     §§goto(addr93);
                  }
                  §§goto(addr93);
               }
               else
               {
                  §§push(this.§="7§);
                  if(_loc15_)
                  {
                     §§goto(addr83);
                  }
               }
               return §§pop();
            }
            §§goto(addr83);
         }
         §§goto(addr93);
      }
      
      private function §do§(param1:§2!J§, param2:Texture, param3:BitmapData, param4:Number) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc6_:Rectangle = null;
         var _loc7_:§%!P§ = null;
         var _loc5_:§^"5§;
         if(!(_loc5_ = this.§?^§[param1.mName]))
         {
            _loc6_ = param1.§-"Y§.clone();
            _loc7_ = new §%!P§(param2,_loc6_,false);
            _loc5_ = new §^"5§(_loc7_,param3,_loc6_,param1.§5'§,param1.§>K§,param4);
            if(!_loc8_)
            {
               this.§?^§[param1.mName] = _loc5_;
            }
         }
      }
      
      public function §2!S§() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(§§newactivation());
         if(!_loc6_)
         {
            §§push(null);
            if(_loc5_)
            {
               §§pop().§§slot[1] = §§pop();
               if(_loc5_)
               {
                  addr32:
                  var texture:Texture = null;
                  if(_loc5_ || _loc3_)
                  {
                     §§goto(addr41);
                  }
                  §§goto(addr44);
               }
               addr41:
               if(!§!"J§.§27§)
               {
                  addr44:
                  var _loc2_:int = 0;
                  var _loc3_:* = this.§&,§;
                  while(§§hasnext(_loc3_,_loc2_))
                  {
                     §§push(§§newactivation());
                     if(_loc5_ || _loc2_)
                     {
                        §§pop().§§slot[1] = §§nextname(_loc2_,_loc3_);
                        if(_loc5_)
                        {
                           try
                           {
                              §§push(§§newactivation());
                              if(!_loc6_)
                              {
                                 §§pop().§§slot[2] = this.§&,§[bd];
                                 if(!_loc6_)
                                 {
                                    addr100:
                                    texture.requestBaseTextureUpdate(bd as BitmapData);
                                 }
                              }
                              §§goto(addr100);
                           }
                           catch(e:Error)
                           {
                           }
                        }
                        continue;
                     }
                     §§goto(addr100);
                  }
               }
               return;
            }
         }
         §§goto(addr32);
      }
      
      public function §#!L§(param1:String) : §^"5§
      {
         return this.§?^§[param1];
      }
      
      public function getTextureFromBitmapData(param1:BitmapData, param2:Boolean = true) : Texture
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Texture = this.§&,§[param1];
         if(!(_loc4_ && _loc3_))
         {
            if(_loc3_)
            {
               if(!(_loc4_ && _loc3_))
               {
                  return _loc3_;
               }
            }
         }
         _loc3_ = §!"J§.§^G§(param1,param2);
         if(!_loc4_)
         {
            this.§&,§[param1] = _loc3_;
            do
            {
               this.§5m§(_loc3_,param1,true);
            }
            while(!_loc5_);
            
         }
         return _loc3_;
      }
      
      public function §5m§(param1:Texture, param2:BitmapData, param3:Boolean) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         var _loc4_:* = 1;
         if(_loc8_)
         {
            if(!param3)
            {
               while(true)
               {
                  §§push(-1);
                  addr258:
                  addr214:
                  while(true)
                  {
                     _loc4_ = §§pop();
                     addr259:
                     while(true)
                     {
                     }
                  }
                  if(!(_loc8_ || param1))
                  {
                     continue;
                  }
                  §§push(this);
                  §§push(this.§]!&§);
                  §§push(_loc4_ * param2.width);
                  if(!_loc7_)
                  {
                     §§push(§§pop() * param2.height);
                     if(!(_loc7_ && param3))
                     {
                        addr250:
                        §§push(§§pop() * 4);
                     }
                     §§pop().§]!&§ = §§pop() + §§pop();
                     while(true)
                     {
                        §§goto(addr199);
                     }
                     addr254:
                  }
                  §§goto(addr250);
               }
            }
            while(true)
            {
               if(param2)
               {
                  if(!_loc7_)
                  {
                     §§goto(addr214);
                  }
                  §§goto(addr254);
               }
               addr199:
               loop5:
               for(; param1; continue loop4)
               {
                  loop6:
                  while(true)
                  {
                     §§push(param1.width);
                     loop7:
                     while(true)
                     {
                        §§push(int(§§pop()));
                        loop8:
                        while(true)
                        {
                           _loc5_ = §§pop();
                           while(true)
                           {
                              if(!_loc8_)
                              {
                                 continue loop5;
                              }
                              §§push(param1.height);
                              if(_loc7_ && param2)
                              {
                                 continue loop7;
                              }
                              §§push(int(§§pop()));
                              if(!_loc8_)
                              {
                                 continue loop8;
                              }
                              if(_loc8_)
                              {
                                 _loc6_ = §§pop();
                                 if(!(_loc7_ && param1))
                                 {
                                    continue loop6;
                                 }
                                 continue;
                              }
                              §§goto(addr258);
                           }
                           §§goto(addr259);
                        }
                     }
                  }
               }
               return;
               §§goto(addr259);
            }
         }
         §§goto(addr198);
      }
      
      public function §]i§() : Texture
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §§push(this.§!"?§);
            if(_loc2_ || this)
            {
               if(!§§pop())
               {
                  if(_loc2_ || this)
                  {
                     addr61:
                     this.§!"?§ = this.getTextureFromBitmapData(new BitmapData(40,40,false,16711935));
                  }
               }
               return this.§!"?§;
            }
         }
         §§goto(addr61);
      }
      
      public function unregisterBitmapDataTexture(param1:Texture) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:* = null;
         var _loc3_:BitmapData = null;
         var _loc4_:int = 0;
         var _loc5_:* = this.§&,§;
         while(true)
         {
            for(_loc2_ in _loc5_)
            {
               if(!_loc6_)
               {
                  break;
               }
               if(this.§&,§[_loc2_] == param1)
               {
                  break;
               }
            }
            return;
         }
         _loc3_ = _loc2_ as BitmapData;
         if(!(_loc7_ && _loc3_))
         {
            this.§5m§(param1,_loc3_,false);
            if(_loc3_)
            {
               addr114:
               while(true)
               {
                  _loc3_.dispose();
               }
               addr114:
            }
            while(true)
            {
               delete this.§&,§[_loc2_];
               while(_loc6_ || this)
               {
                  param1.dispose();
                  if(_loc6_)
                  {
                     return;
                  }
               }
               §§goto(addr114);
            }
         }
         §§goto(addr114);
      }
      
      public function §'"<§(param1:String) : BitmapData
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§^"5§ = this.§#!L§(param1);
         if(!_loc3_)
         {
            if(_loc2_ == null)
            {
               if(_loc4_)
               {
                  §§push(this.§#!L§(param1 + "_1"));
                  if(_loc4_ || this)
                  {
                     _loc2_ = §§pop();
                     addr63:
                     if(_loc2_ == null)
                     {
                        if(_loc4_ || _loc3_)
                        {
                           addr78:
                           _loc2_ = this.§#!L§(param1 + "_01");
                           addr80:
                           if(_loc2_ == null)
                           {
                              if(_loc4_)
                              {
                                 §§goto(addr85);
                              }
                           }
                           addr73:
                        }
                        return _loc2_.bitmapData;
                     }
                     §§goto(addr80);
                  }
                  §§goto(addr78);
               }
               addr85:
               return null;
            }
            §§goto(addr63);
         }
         §§goto(addr73);
      }
   }
}
