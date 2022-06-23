package §-!0§
{
   import §&p§.§'_§;
   import §<!B§.§#z§;
   import §<!B§.§]!=§;
   import each.§-0§;
   import each.Texture;
   import flash.display.BitmapData;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class §'!3§ extends EventDispatcher
   {
      
      private static const §5d§:int = 2;
      
      private static const §[P§:int = 2048;
      
      private static var §4-§:§'!3§;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §5d§ = 2;
            if(!_loc2_)
            {
               §[P§ = 2048;
            }
         }
      }
      
      private var §4Y§:Dictionary;
      
      private var §^Q§:Vector.<§]!=§>;
      
      private var §!!,§:Dictionary;
      
      private var §'!=§:Boolean;
      
      private var §]!8§:String;
      
      private var §;O§:Texture;
      
      private var §4s§:int;
      
      private var §`y§:int;
      
      public function §'!3§(param1:String = null)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            super();
            if(!_loc2_)
            {
               this.§^Q§ = new Vector.<§]!=§>();
               if(_loc3_)
               {
                  this.§4Y§ = new Dictionary();
                  if(_loc3_ || param1)
                  {
                     addr67:
                     this.§!!,§ = new Dictionary();
                     if(_loc3_ || _loc3_)
                     {
                        addr78:
                        this.§]!8§ = param1;
                     }
                  }
                  §§goto(addr78);
               }
               return;
            }
            §§goto(addr78);
         }
         §§goto(addr67);
      }
      
      public static function get §-]§() : §'!3§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(§4-§);
            if(!_loc2_)
            {
               if(!§§pop())
               {
                  if(_loc1_ || §'!3§)
                  {
                     addr29:
                     §4-§ = new §'!3§();
                  }
               }
               §§push(§4-§);
            }
            return §§pop();
         }
         §§goto(addr29);
      }
      
      public function get §=M§() : int
      {
         return this.§4s§;
      }
      
      public function get §&i§() : int
      {
         return this.§`y§;
      }
      
      public function get id() : String
      {
         return this.§]!8§;
      }
      
      public function dispose() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc1_:§9X§ = null;
         var _loc2_:§]!=§ = null;
         if(!_loc5_)
         {
            if(this.§4Y§)
            {
               addr28:
               var _loc3_:int = 0;
               var _loc4_:* = this.§4Y§;
               loop1:
               while(true)
               {
                  §§push(§§hasnext(_loc4_,_loc3_));
                  if(_loc6_ || this)
                  {
                     if(§§pop())
                     {
                        _loc1_ = §§nextvalue(_loc3_,_loc4_);
                        if(_loc6_)
                        {
                           this.§9a§(_loc1_.texture.parent);
                           if(_loc6_ || _loc1_)
                           {
                              _loc1_.dispose();
                           }
                        }
                        continue;
                     }
                     if(_loc6_ || _loc3_)
                     {
                        if(!(_loc5_ && _loc2_))
                        {
                           if(!_loc5_)
                           {
                              this.§4Y§ = null;
                              addr97:
                              if(this.§^Q§)
                              {
                                 if(!_loc5_)
                                 {
                                    _loc3_ = 0;
                                    if(!_loc5_)
                                    {
                                       addr106:
                                       _loc4_ = this.§^Q§;
                                       while(true)
                                       {
                                          §§push(§§hasnext(_loc4_,_loc3_));
                                          break loop1;
                                       }
                                       addr121:
                                    }
                                    if(_loc6_)
                                    {
                                       this.§^Q§ = null;
                                       if(_loc6_ || this)
                                       {
                                          addr137:
                                          if(this.§!!,§)
                                          {
                                             if(_loc6_)
                                             {
                                                addr142:
                                                this.§!!,§ = null;
                                                if(!_loc6_)
                                                {
                                                }
                                                addr171:
                                                this.§;O§.dispose();
                                                this.§;O§ = null;
                                                addr169:
                                                if(!_loc5_)
                                                {
                                                   addr177:
                                                   this.§^Q§ = new Vector.<§]!=§>();
                                                   §§goto(addr183);
                                                }
                                                §§goto(addr189);
                                                addr169:
                                             }
                                             §§goto(addr169);
                                          }
                                          §§push(this.§;O§);
                                          if(_loc6_)
                                          {
                                             if(§§pop())
                                             {
                                                if(!(_loc5_ && _loc3_))
                                                {
                                                   §§goto(addr169);
                                                }
                                                addr183:
                                                this.§4Y§ = new Dictionary();
                                                if(_loc6_)
                                                {
                                                   addr189:
                                                   this.§!!,§ = new Dictionary();
                                                }
                                                return;
                                             }
                                             §§goto(addr177);
                                          }
                                       }
                                    }
                                    §§goto(addr171);
                                 }
                                 §§goto(addr177);
                              }
                              §§goto(addr137);
                           }
                           §§goto(addr142);
                        }
                     }
                     §§goto(addr106);
                  }
                  break;
               }
               while(true)
               {
                  if(§§pop())
                  {
                     _loc2_ = §§nextvalue(_loc3_,_loc4_);
                     if(!_loc5_)
                     {
                        _loc2_.dispose();
                     }
                     continue;
                  }
                  §§goto(addr106);
               }
            }
            §§goto(addr97);
         }
         §§goto(addr28);
      }
      
      public function §4!2§(param1:§]!=§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(this.§'!=§)
            {
               if(!(_loc3_ && this))
               {
                  return;
               }
            }
            else if(this.§^Q§.indexOf(param1) >= 0)
            {
               if(_loc2_ || _loc2_)
               {
                  return;
               }
            }
         }
         this.§^Q§.push(param1);
      }
      
      private function §6z§(param1:Array) : Rectangle
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc9_:§]!=§ = null;
         var _loc10_:BitmapData = null;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
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
                     if(_loc12_)
                     {
                        §§push(Number(§§pop()));
                        if(_loc12_ || _loc3_)
                        {
                           _loc7_ = §§pop();
                           if(_loc11_ && _loc3_)
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
                        if(_loc12_)
                        {
                           if(_loc2_ + _loc10_.width + §5d§ >= §[P§)
                           {
                              _loc2_ = 0;
                              if(!(_loc11_ && _loc2_))
                              {
                                 §§push(_loc3_);
                                 if(!(_loc11_ && param1))
                                 {
                                    §§push(_loc6_);
                                    if(!(_loc11_ && _loc2_))
                                    {
                                       §§push(§§pop() + §§pop());
                                       if(_loc12_ || param1)
                                       {
                                          §§push(int(§§pop()));
                                          if(_loc12_ || this)
                                          {
                                             _loc3_ = §§pop();
                                             _loc6_ = 0;
                                             addr146:
                                             if(_loc3_ + _loc10_.height + §5d§ >= §[P§)
                                             {
                                                break;
                                             }
                                             §§push(_loc2_);
                                             if(!_loc11_)
                                             {
                                                addr158:
                                                §§push(int(§§pop() + (_loc10_.width + §5d§)));
                                                if(!_loc11_)
                                                {
                                                   _loc2_ = §§pop();
                                                   if(_loc12_)
                                                   {
                                                      §§push(_loc2_);
                                                      if(_loc12_)
                                                      {
                                                         §§push(_loc4_);
                                                         if(!(_loc11_ && _loc3_))
                                                         {
                                                            addr180:
                                                            if(§§pop() > §§pop())
                                                            {
                                                               if(_loc12_)
                                                               {
                                                                  addr184:
                                                                  _loc4_ = _loc2_;
                                                                  addr186:
                                                                  if(_loc10_.height + §5d§ > _loc6_)
                                                                  {
                                                                     addr192:
                                                                     _loc6_ = _loc10_.height + §5d§;
                                                                     if(!(_loc12_ || _loc2_))
                                                                     {
                                                                        continue;
                                                                     }
                                                                     addr215:
                                                                     §§push(_loc3_);
                                                                     if(!_loc11_)
                                                                     {
                                                                        addr221:
                                                                        _loc5_ = §§pop() + _loc6_;
                                                                        if(_loc11_ && param1)
                                                                        {
                                                                           continue;
                                                                        }
                                                                     }
                                                                     §§goto(addr221);
                                                                  }
                                                                  _loc8_++;
                                                                  continue;
                                                               }
                                                               §§goto(addr215);
                                                            }
                                                            §§goto(addr186);
                                                         }
                                                         §§goto(addr221);
                                                      }
                                                   }
                                                   §§goto(addr184);
                                                }
                                                §§goto(addr221);
                                             }
                                          }
                                          §§goto(addr184);
                                       }
                                       §§goto(addr221);
                                    }
                                    §§goto(addr180);
                                 }
                                 §§goto(addr158);
                              }
                              §§goto(addr192);
                           }
                           §§goto(addr146);
                        }
                        §§goto(addr192);
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
            §§goto(addr52);
         }
         return new Rectangle(0,0,_loc4_,_loc5_);
      }
      
      private function §;>§(param1:Array, param2:BitmapData) : Array
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         var _loc8_:§]!=§ = null;
         var _loc9_:BitmapData = null;
         var _loc10_:§8§ = null;
         var _loc11_:* = 0;
         var _loc12_:int = 0;
         var _loc13_:§#z§ = null;
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
               if(_loc15_)
               {
                  continue;
               }
               _loc8_ = §§pop()[0];
               if(!_loc15_)
               {
                  §§push(!isNaN(_loc7_));
                  if(_loc14_)
                  {
                     if(§§pop())
                     {
                        if(_loc14_ || this)
                        {
                           addr70:
                           §§pop();
                           if(_loc14_ || this)
                           {
                              §§push(_loc7_);
                              if(_loc14_ || param2)
                              {
                                 §§push(§§pop() == _loc8_.scale);
                                 if(!(_loc15_ && param2))
                                 {
                                    addr97:
                                    if(!§§pop())
                                    {
                                       if(!(_loc15_ && _loc3_))
                                       {
                                          addr105:
                                          break;
                                       }
                                       addr117:
                                       _loc9_ = _loc8_.bitmapData;
                                       §§push(_loc3_);
                                       if(_loc14_)
                                       {
                                          if(§§pop() + _loc9_.width + §5d§ > param2.width)
                                          {
                                             §§push(0);
                                             if(!(_loc15_ && this))
                                             {
                                                _loc3_ = §§pop();
                                                if(!(_loc15_ && param2))
                                                {
                                                   §§push(_loc4_);
                                                   if(!_loc15_)
                                                   {
                                                      addr161:
                                                      §§push(int(§§pop() + _loc5_));
                                                      if(_loc14_)
                                                      {
                                                         _loc4_ = §§pop();
                                                         §§push(0);
                                                         if(_loc15_ && param2)
                                                         {
                                                         }
                                                         addr177:
                                                         if(§§pop() + _loc9_.height + §5d§ > param2.height)
                                                         {
                                                            break;
                                                         }
                                                         param2.copyPixels(_loc9_,_loc9_.rect,new Point(_loc3_,_loc4_),null,null,true);
                                                         addr198:
                                                         (_loc10_ = new §8§()).offset = new Point(_loc3_,_loc4_);
                                                         if(_loc14_)
                                                         {
                                                            _loc10_.§7p§ = _loc8_;
                                                            if(_loc14_ || _loc3_)
                                                            {
                                                               _loc6_.push(_loc10_);
                                                               if(!(_loc14_ || param1))
                                                               {
                                                                  continue loop0;
                                                               }
                                                               §§push(_loc8_.§9@§);
                                                               if(_loc14_ || param2)
                                                               {
                                                                  §§push(int(§§pop()));
                                                                  if(!(_loc15_ && param2))
                                                                  {
                                                                     _loc11_ = §§pop();
                                                                     _loc12_ = 0;
                                                                     while(_loc12_ < _loc11_)
                                                                     {
                                                                        (_loc13_ = _loc8_.§^!B§(_loc12_)).§93§ = null;
                                                                        if(_loc14_)
                                                                        {
                                                                           _loc13_.§9!&§.offset(_loc3_,_loc4_);
                                                                           if(!_loc14_)
                                                                           {
                                                                              continue;
                                                                           }
                                                                        }
                                                                        _loc12_++;
                                                                     }
                                                                     addr273:
                                                                     §§push(_loc3_);
                                                                  }
                                                                  §§push(int(§§pop() + (_loc9_.width + §5d§)));
                                                               }
                                                               _loc3_ = §§pop();
                                                            }
                                                            if(_loc9_.height + §5d§ > _loc5_)
                                                            {
                                                               if(!(_loc15_ && param2))
                                                               {
                                                                  _loc5_ = int(_loc9_.height + §5d§);
                                                                  if(!(_loc14_ || param2))
                                                                  {
                                                                     continue loop0;
                                                                  }
                                                               }
                                                            }
                                                            param1.splice(0,1);
                                                            continue loop0;
                                                         }
                                                         §§goto(addr273);
                                                      }
                                                      _loc5_ = §§pop();
                                                      §§push(_loc4_);
                                                   }
                                                   §§goto(addr177);
                                                }
                                                §§goto(addr198);
                                             }
                                          }
                                       }
                                       §§goto(addr161);
                                    }
                                    else
                                    {
                                       §§push(_loc8_.scale);
                                       if(_loc14_ || this)
                                       {
                                          §§push(Number(§§pop()));
                                       }
                                    }
                                    §§goto(addr117);
                                 }
                                 §§goto(addr97);
                              }
                              _loc7_ = §§pop();
                              §§goto(addr117);
                           }
                           §§goto(addr105);
                        }
                     }
                     §§goto(addr97);
                  }
                  §§goto(addr70);
               }
               §§goto(addr117);
            }
            return _loc6_;
         }
      }
      
      public function §,_§() : Boolean
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         var _loc1_:§]!=§ = null;
         var _loc3_:Rectangle = null;
         var _loc4_:BitmapData = null;
         var _loc5_:Array = null;
         var _loc6_:Texture = null;
         var _loc7_:* = 0;
         var _loc8_:§8§ = null;
         var _loc9_:* = 0;
         var _loc10_:* = 0;
         var _loc11_:§#z§ = null;
         if(!(_loc15_ && _loc2_))
         {
            §§push(§'_§.§+! §());
            if(_loc14_ || _loc1_)
            {
               if(!§§pop())
               {
                  if(!(_loc15_ && _loc3_))
                  {
                     §§push(false);
                     if(_loc14_ || _loc3_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr90:
                     return true;
                  }
               }
               else
               {
                  §§push(this.§'!=§);
                  if(!(_loc15_ && _loc2_))
                  {
                     if(§§pop())
                     {
                        if(!_loc15_)
                        {
                           §§goto(addr90);
                        }
                        else
                        {
                           addr92:
                           var _loc2_:Array = [];
                           var _loc12_:int = 0;
                           var _loc13_:* = this.§^Q§;
                           loop0:
                           while(true)
                           {
                              §§push(§§hasnext(_loc13_,_loc12_));
                              if(!_loc15_)
                              {
                                 if(§§pop())
                                 {
                                    _loc1_ = §§nextvalue(_loc12_,_loc13_);
                                    if(!(_loc15_ && _loc3_))
                                    {
                                       if(_loc1_.§9@§ > 0)
                                       {
                                          if(!(_loc15_ && _loc2_))
                                          {
                                             _loc2_.push(_loc1_);
                                          }
                                       }
                                    }
                                    continue;
                                 }
                                 if(!_loc15_)
                                 {
                                    if(_loc14_)
                                    {
                                       if(!(_loc15_ && _loc1_))
                                       {
                                          while(_loc2_.length > 0)
                                          {
                                             _loc3_ = this.§6z§(_loc2_);
                                             if(_loc14_ || this)
                                             {
                                                if(_loc3_.width * _loc3_.height == 0)
                                                {
                                                   if(!_loc15_)
                                                   {
                                                      throw new Error("Found too large sprite sheet image!");
                                                   }
                                                }
                                             }
                                             _loc4_ = new BitmapData(_loc3_.width,_loc3_.height,true,0);
                                             if((_loc5_ = this.§;>§(_loc2_,_loc4_)).length == 0)
                                             {
                                                if(_loc14_ || _loc3_)
                                                {
                                                   throw new Error("Found too large sprite sheet image!");
                                                }
                                             }
                                             _loc6_ = this.§ b§(_loc4_);
                                             if(_loc14_ || _loc2_)
                                             {
                                                §§push(0);
                                                if(!_loc15_)
                                                {
                                                   _loc7_ = §§pop();
                                                   if(_loc15_ && _loc3_)
                                                   {
                                                      continue;
                                                   }
                                                   addr237:
                                                   while(true)
                                                   {
                                                      §§push(_loc7_);
                                                   }
                                                   addr306:
                                                }
                                                for(; §§pop() < _loc5_.length; §§goto(addr306))
                                                {
                                                   _loc1_ = (_loc8_ = _loc5_[_loc7_]).§7p§;
                                                   if(_loc14_ || _loc2_)
                                                   {
                                                      §§push(_loc1_.§9@§);
                                                      if(_loc14_)
                                                      {
                                                         §§push(int(§§pop()));
                                                         if(!(_loc15_ && _loc2_))
                                                         {
                                                            addr267:
                                                            _loc9_ = §§pop();
                                                            if(_loc14_ || this)
                                                            {
                                                               §§push(0);
                                                               if(!_loc15_)
                                                               {
                                                                  addr278:
                                                                  _loc10_ = §§pop();
                                                                  if(_loc14_)
                                                                  {
                                                                     addr281:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc10_);
                                                                     }
                                                                     addr303:
                                                                     if(!_loc15_)
                                                                     {
                                                                        addr305:
                                                                        _loc7_++;
                                                                     }
                                                                     addr300:
                                                                  }
                                                                  continue;
                                                               }
                                                               while(true)
                                                               {
                                                                  if(§§pop() < _loc9_)
                                                                  {
                                                                     _loc11_ = _loc1_.§^!B§(_loc10_);
                                                                     if(_loc14_)
                                                                     {
                                                                        this.§-9§(_loc11_,_loc6_,_loc4_,_loc1_.scale);
                                                                        if(_loc14_)
                                                                        {
                                                                           _loc10_++;
                                                                        }
                                                                     }
                                                                     continue;
                                                                  }
                                                                  §§goto(addr303);
                                                               }
                                                            }
                                                            §§goto(addr281);
                                                         }
                                                         §§goto(addr278);
                                                      }
                                                      §§goto(addr267);
                                                   }
                                                   §§goto(addr305);
                                                }
                                                continue;
                                             }
                                             §§goto(addr237);
                                          }
                                          if(_loc14_ || this)
                                          {
                                             _loc12_ = 0;
                                             if(!_loc15_)
                                             {
                                                addr325:
                                                _loc13_ = this.§^Q§;
                                                while(true)
                                                {
                                                   §§push(§§hasnext(_loc13_,_loc12_));
                                                   break loop0;
                                                }
                                                addr350:
                                             }
                                             if(!_loc15_)
                                             {
                                                this.§^Q§ = new Vector.<§]!=§>();
                                                if(_loc15_)
                                                {
                                                }
                                             }
                                             §§goto(addr367);
                                          }
                                          this.§'!=§ = true;
                                       }
                                       addr367:
                                       return true;
                                    }
                                 }
                                 §§goto(addr325);
                              }
                              break;
                           }
                           while(true)
                           {
                              if(§§pop())
                              {
                                 _loc1_ = §§nextvalue(_loc12_,_loc13_);
                                 if(_loc14_)
                                 {
                                    _loc1_.dispose();
                                 }
                                 continue;
                              }
                              §§goto(addr325);
                           }
                        }
                     }
                     §§goto(addr92);
                  }
               }
            }
            return §§pop();
         }
         §§goto(addr92);
      }
      
      private function §-9§(param1:§#z§, param2:Texture, param3:BitmapData, param4:Number) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc6_:Rectangle = null;
         var _loc7_:§-0§ = null;
         var _loc5_:§9X§;
         if(!(_loc5_ = this.§4Y§[param1.mName]))
         {
            _loc6_ = param1.§9!&§.clone();
            _loc7_ = new §-0§(param2,_loc6_,false);
            _loc5_ = new §9X§(_loc7_,param3,_loc6_,param1.§^A§,param1.§6W§,param4);
            if(_loc8_)
            {
               this.§4Y§[param1.mName] = _loc5_;
            }
         }
      }
      
      public function §-+§() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(§§newactivation());
         if(!(_loc5_ && this))
         {
            §§push(null);
            if(!(_loc5_ && _loc3_))
            {
               §§pop().§§slot[1] = §§pop();
               if(!_loc5_)
               {
                  addr43:
                  var texture:Texture = null;
                  if(_loc6_)
                  {
                     if(!§'_§.§3R§)
                     {
                        addr60:
                        var _loc2_:int = 0;
                        var _loc3_:* = this.§!!,§;
                        while(§§hasnext(_loc3_,_loc2_))
                        {
                           §§push(§§newactivation());
                           if(!(_loc5_ && _loc3_))
                           {
                              §§pop().§§slot[1] = §§nextname(_loc2_,_loc3_);
                              if(_loc6_)
                              {
                                 try
                                 {
                                    §§push(§§newactivation());
                                    if(!_loc5_)
                                    {
                                       §§pop().§§slot[2] = this.§!!,§[bd];
                                       addr112:
                                       if(_loc6_)
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
                           §§goto(addr112);
                        }
                     }
                     return;
                  }
               }
               §§goto(addr60);
            }
         }
         §§goto(addr43);
      }
      
      public function §4K§(param1:String) : §9X§
      {
         return this.§4Y§[param1];
      }
      
      public function § b§(param1:BitmapData, param2:Boolean = true) : Texture
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Texture = this.§!!,§[param1];
         if(!_loc5_)
         {
            if(_loc3_)
            {
               if(_loc4_ || _loc3_)
               {
                  §§goto(addr43);
               }
            }
            _loc3_ = §'_§.§]e§(param1,param2);
            if(_loc4_ || param1)
            {
               this.§!!,§[param1] = _loc3_;
               if(_loc4_ || param1)
               {
                  this.§'K§(_loc3_,param1,true);
               }
            }
            return _loc3_;
         }
         addr43:
         return _loc3_;
      }
      
      public function §'K§(param1:Texture, param2:BitmapData, param3:Boolean) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         var _loc4_:* = 1;
         if(!param3)
         {
            if(!_loc7_)
            {
               §§push(-1);
               if(_loc8_ || param1)
               {
                  _loc4_ = §§pop();
                  if(_loc8_ || param3)
                  {
                     addr43:
                     if(param2)
                     {
                        addr45:
                        §§push(this);
                        §§push(this.§`y§);
                        §§push(_loc4_ * param2.width);
                        if(_loc8_)
                        {
                           §§push(§§pop() * param2.height);
                           if(_loc8_ || param3)
                           {
                              addr64:
                              §§push(§§pop() * 4);
                           }
                           §§pop().§`y§ = §§pop() + §§pop();
                           if(_loc8_ || param1)
                           {
                              addr75:
                              if(param1)
                              {
                                 §§push(param1.width);
                                 if(_loc8_ || this)
                                 {
                                    addr98:
                                    §§push(int(§§pop()));
                                    if(_loc8_ || param3)
                                    {
                                       _loc5_ = §§pop();
                                       §§push(param1.height);
                                    }
                                    _loc6_ = §§pop();
                                    loop0:
                                    while(true)
                                    {
                                       §§push(_loc5_);
                                       if(!(_loc7_ && param3))
                                       {
                                          while(true)
                                          {
                                             §§push(1);
                                             if(!(_loc7_ && this))
                                             {
                                                loop2:
                                                while(true)
                                                {
                                                   §§push(§§pop() >= §§pop());
                                                   if(_loc8_ || param2)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         if(!_loc7_)
                                                         {
                                                            addr223:
                                                            §§pop();
                                                            if(!_loc7_)
                                                            {
                                                               addr226:
                                                               while(true)
                                                               {
                                                                  §§push(_loc6_);
                                                                  addr227:
                                                                  while(true)
                                                                  {
                                                                     §§push(1);
                                                                     addr228:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() >= §§pop());
                                                                     }
                                                                  }
                                                               }
                                                               addr226:
                                                            }
                                                            §§goto(addr230);
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            addr230:
                                                            return;
                                                         }
                                                         §§push(this);
                                                         §§push(this.§4s§);
                                                         §§push(_loc4_ * _loc5_);
                                                         if(_loc8_ || param1)
                                                         {
                                                            §§push(_loc6_);
                                                            if(_loc8_ || param3)
                                                            {
                                                               addr137:
                                                               §§push(§§pop() * §§pop());
                                                               if(_loc8_)
                                                               {
                                                                  §§push(4);
                                                               }
                                                               §§pop().§4s§ = §§pop() + §§pop();
                                                               if(!_loc8_)
                                                               {
                                                                  break;
                                                               }
                                                               §§push(_loc5_);
                                                               if(_loc8_ || param3)
                                                               {
                                                                  continue loop2;
                                                               }
                                                               addr171:
                                                               §§push(1);
                                                               if(!_loc8_)
                                                               {
                                                                  continue;
                                                               }
                                                               §§push(§§pop() >> §§pop());
                                                               if(!(_loc7_ && param3))
                                                               {
                                                                  addr182:
                                                                  _loc6_ = §§pop();
                                                                  if(_loc8_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  §§goto(addr226);
                                                               }
                                                               §§goto(addr227);
                                                            }
                                                            §§push(§§pop() * §§pop());
                                                         }
                                                         §§goto(addr137);
                                                      }
                                                      continue loop0;
                                                   }
                                                   §§goto(addr223);
                                                }
                                             }
                                             §§goto(addr228);
                                             §§push(_loc6_);
                                             if(_loc7_ && this)
                                             {
                                                continue;
                                             }
                                             §§goto(addr171);
                                          }
                                       }
                                       §§goto(addr227);
                                    }
                                 }
                                 §§goto(addr98);
                                 §§push(int(§§pop()));
                              }
                              §§goto(addr223);
                           }
                           §§goto(addr98);
                        }
                        §§goto(addr64);
                     }
                  }
                  §§goto(addr75);
               }
               §§goto(addr98);
            }
            §§goto(addr45);
         }
         §§goto(addr43);
      }
      
      public function §?K§() : Texture
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§;O§);
            if(_loc1_)
            {
               if(!§§pop())
               {
                  if(_loc1_)
                  {
                     this.§;O§ = this.§ b§(new BitmapData(40,40,false,16711935));
                     addr45:
                     §§push(this.§;O§);
                  }
               }
               §§goto(addr45);
            }
            return §§pop();
         }
         §§goto(addr45);
      }
      
      public function §9a§(param1:Texture) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:* = null;
         var _loc3_:BitmapData = null;
         var _loc4_:int = 0;
         var _loc5_:* = this.§!!,§;
         while(true)
         {
            for(_loc2_ in _loc5_)
            {
               if(_loc7_)
               {
                  break;
               }
               if(this.§!!,§[_loc2_] == param1)
               {
                  break;
               }
            }
            return;
         }
         _loc3_ = _loc2_ as BitmapData;
         if(_loc6_ || this)
         {
            this.§'K§(param1,_loc3_,false);
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
                        delete this.§!!,§[_loc2_];
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
      
      public function §@!E§(param1:String) : BitmapData
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§9X§ = this.§4K§(param1);
         if(!(_loc3_ && _loc3_))
         {
            if(_loc2_ == null)
            {
               if(!(_loc3_ && _loc2_))
               {
                  addr49:
                  §§push(this.§4K§(param1 + "_1"));
                  if(!(_loc3_ && _loc2_))
                  {
                     _loc2_ = §§pop();
                     addr63:
                     if(_loc2_ == null)
                     {
                        if(_loc4_ || _loc2_)
                        {
                           addr88:
                           _loc2_ = this.§4K§(param1 + "_01");
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
