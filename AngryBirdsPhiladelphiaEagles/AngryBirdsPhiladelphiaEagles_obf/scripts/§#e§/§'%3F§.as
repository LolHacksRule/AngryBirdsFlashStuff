package §#e§
{
   import §5Z§.§[Z§;
   import §8z§.§>6§;
   import §8z§.Texture;
   import §=I§.§-§;
   import §=I§.§5!B§;
   import flash.display.BitmapData;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class §'?§ extends EventDispatcher
   {
      
      private static const §^0§:int = 2;
      
      private static const §8!C§:int = 2048;
      
      private static var §,z§:§'?§;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §^0§ = 2;
            do
            {
               §8!C§ = 2048;
            }
            while(_loc2_ && _loc2_);
            
         }
      }
      
      private var § !#§:Dictionary;
      
      private var §7S§:Vector.<§-§>;
      
      private var §%B§:Dictionary;
      
      private var §8i§:Boolean;
      
      private var §[!&§:String;
      
      private var §]!P§:Texture;
      
      private var §]!C§:int;
      
      private var §&>§:int;
      
      public function §'?§(param1:String = null)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            super();
            loop0:
            while(true)
            {
               this.§7S§ = new Vector.<§-§>();
               while(true)
               {
                  this.§ !#§ = new Dictionary();
                  loop2:
                  while(!_loc3_)
                  {
                     while(true)
                     {
                        this.§%B§ = new Dictionary();
                        do
                        {
                           this.§[!&§ = param1;
                        }
                        while(!(_loc2_ || _loc2_));
                        
                        if(!_loc3_)
                        {
                           if(!_loc3_)
                           {
                              break;
                           }
                           continue loop0;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr72);
      }
      
      public static function get §>o§() : §'?§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §§push(§,z§);
            if(!_loc1_)
            {
               if(!§§pop())
               {
                  if(_loc2_ || _loc2_)
                  {
                     addr45:
                     §,z§ = new §'?§();
                  }
               }
               return §,z§;
            }
         }
         §§goto(addr45);
      }
      
      public function get §,!K§() : int
      {
         return this.§]!C§;
      }
      
      public function get §1z§() : int
      {
         return this.§&>§;
      }
      
      public function get id() : String
      {
         return this.§[!&§;
      }
      
      public function dispose() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc1_:§`!9§ = null;
         var _loc2_:§-§ = null;
         if(!_loc5_)
         {
            if(this.§ !#§)
            {
               addr28:
               var _loc3_:int = 0;
               var _loc4_:* = this.§ !#§;
               loop6:
               while(true)
               {
                  §§push(§§hasnext(_loc4_,_loc3_));
                  if(!(_loc5_ && _loc3_))
                  {
                     if(§§pop())
                     {
                        _loc1_ = §§nextvalue(_loc3_,_loc4_);
                        if(_loc6_ || _loc1_)
                        {
                           this.§@C§(_loc1_.texture.parent);
                           if(!_loc6_)
                           {
                              continue;
                           }
                        }
                        _loc1_.dispose();
                        continue;
                     }
                     if(_loc6_)
                     {
                        if(_loc6_)
                        {
                           if(!(_loc5_ && _loc1_))
                           {
                              this.§ !#§ = null;
                              if(_loc6_ || _loc1_)
                              {
                                 addr99:
                                 if(this.§7S§)
                                 {
                                    _loc3_ = 0;
                                    if(_loc6_ || _loc3_)
                                    {
                                       _loc4_ = this.§7S§;
                                       while(true)
                                       {
                                          §§push(§§hasnext(_loc4_,_loc3_));
                                          break loop6;
                                       }
                                       this.§7S§ = null;
                                       addr129:
                                       addr128:
                                       addr126:
                                    }
                                    §§goto(addr129);
                                 }
                                 if(this.§%B§)
                                 {
                                    loop1:
                                    while(true)
                                    {
                                       this.§%B§ = null;
                                       addr154:
                                       while(true)
                                       {
                                          this.§7S§ = new Vector.<§-§>();
                                          if(_loc6_)
                                          {
                                             this.§ !#§ = new Dictionary();
                                             do
                                             {
                                                this.§%B§ = new Dictionary();
                                             }
                                             while(_loc5_ && this);
                                             
                                             return;
                                             addr173:
                                          }
                                          continue loop1;
                                       }
                                    }
                                    addr195:
                                 }
                                 while(true)
                                 {
                                    §§push(this.§]!P§);
                                    if(!_loc5_)
                                    {
                                       if(§§pop())
                                       {
                                          loop3:
                                          while(true)
                                          {
                                             §§push(this.§]!P§);
                                             addr189:
                                             addr180:
                                             while(true)
                                             {
                                                §§pop().dispose();
                                                this.§]!P§ = null;
                                                if(!_loc5_)
                                                {
                                                   break;
                                                }
                                                continue loop3;
                                             }
                                             while(true)
                                             {
                                                §§goto(addr154);
                                             }
                                          }
                                          addr187:
                                       }
                                       §§goto(addr154);
                                    }
                                    §§goto(addr189);
                                    §§goto(addr195);
                                 }
                                 §§goto(addr173);
                              }
                              §§goto(addr187);
                           }
                           §§goto(addr180);
                        }
                        §§goto(addr129);
                     }
                     §§goto(addr128);
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
                  §§goto(addr129);
               }
            }
            §§goto(addr99);
         }
         §§goto(addr28);
      }
      
      public function §!=§(param1:§-§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(!this.§8i§)
            {
               loop0:
               while(this.§7S§.indexOf(param1) < 0)
               {
                  do
                  {
                     this.§7S§.push(param1);
                     if(_loc3_)
                     {
                        if(!_loc2_)
                        {
                           return;
                        }
                        break loop0;
                     }
                  }
                  while(!(_loc2_ && this));
                  
                  while(true)
                  {
                     continue loop0;
                  }
               }
               if(!(_loc2_ && _loc3_))
               {
                  return;
               }
            }
            return;
         }
         §§goto(addr81);
      }
      
      private function §&!+§(param1:Array) : Rectangle
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc9_:§-§ = null;
         var _loc10_:BitmapData = null;
         var _loc2_:* = 0;
         var _loc3_:int = 0;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         var _loc7_:* = Number(1);
         var _loc8_:int = 0;
         loop0:
         while(_loc8_ < param1.length)
         {
            _loc9_ = param1[_loc8_];
            if(!_loc11_)
            {
               if(_loc8_ == 0)
               {
                  if(_loc12_ || _loc3_)
                  {
                     §§push(_loc9_.scale);
                     if(_loc12_ || _loc2_)
                     {
                        §§push(Number(§§pop()));
                        if(!_loc11_)
                        {
                           addr69:
                           _loc7_ = §§pop();
                           if(!(_loc12_ || this))
                           {
                              addr82:
                              break;
                           }
                           addr77:
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
                        if(!_loc11_)
                        {
                           if(_loc2_ + _loc10_.width + §^0§ >= §8!C§)
                           {
                              addr256:
                              while(true)
                              {
                                 _loc2_ = 0;
                                 addr258:
                                 while(true)
                                 {
                                    §§push(_loc3_);
                                    §§push(_loc6_);
                                    addr244:
                                    while(true)
                                    {
                                       §§push(§§pop() + §§pop());
                                       addr245:
                                       while(true)
                                       {
                                          _loc3_ = §§pop();
                                          _loc6_ = 0;
                                       }
                                    }
                                 }
                              }
                              addr256:
                           }
                           loop1:
                           while(true)
                           {
                              if(_loc3_ + _loc10_.height + §^0§ < §8!C§)
                              {
                                 §§push(int(_loc2_ + (_loc10_.width + §^0§)));
                                 loop2:
                                 while(true)
                                 {
                                    _loc2_ = §§pop();
                                    loop3:
                                    while(_loc12_ || param1)
                                    {
                                       §§push(_loc2_);
                                       loop4:
                                       while(true)
                                       {
                                          §§push(_loc4_);
                                          addr185:
                                          while(_loc12_)
                                          {
                                             if(§§pop() > §§pop())
                                             {
                                                loop6:
                                                while(true)
                                                {
                                                   if(!(_loc11_ && param1))
                                                   {
                                                      §§push(_loc2_);
                                                      if(!_loc12_)
                                                      {
                                                         continue loop2;
                                                      }
                                                      §§push(int(§§pop()));
                                                      while(true)
                                                      {
                                                         _loc4_ = §§pop();
                                                         addr200:
                                                         addr162:
                                                         while(true)
                                                         {
                                                         }
                                                         while(!(_loc11_ && this))
                                                         {
                                                            _loc6_ = §§pop();
                                                            if(!_loc11_)
                                                            {
                                                               continue loop6;
                                                            }
                                                            §§goto(addr200);
                                                            addr141:
                                                            if(!(_loc12_ || _loc3_))
                                                            {
                                                               continue;
                                                            }
                                                            _loc5_ = §§pop();
                                                            loop12:
                                                            while(true)
                                                            {
                                                               addr90:
                                                               while(true)
                                                               {
                                                                  _loc8_++;
                                                                  if(_loc12_ || param1)
                                                                  {
                                                                     if(!(_loc11_ && _loc2_))
                                                                     {
                                                                        if(true)
                                                                        {
                                                                           break;
                                                                           addr108:
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc3_);
                                                                           if(_loc12_)
                                                                           {
                                                                              continue loop4;
                                                                           }
                                                                           §§goto(addr141);
                                                                        }
                                                                        continue loop4;
                                                                     }
                                                                     continue loop3;
                                                                  }
                                                                  continue loop12;
                                                               }
                                                               continue loop0;
                                                            }
                                                         }
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr256);
                                                   }
                                                }
                                                continue loop1;
                                             }
                                             while(true)
                                             {
                                                if(_loc10_.height + §^0§ > _loc6_)
                                                {
                                                   §§goto(addr162);
                                                   §§push(int(_loc10_.height + §^0§));
                                                }
                                                §§goto(addr90);
                                                §§goto(addr200);
                                             }
                                          }
                                          §§goto(addr244);
                                       }
                                    }
                                    §§goto(addr258);
                                 }
                              }
                              §§goto(addr210);
                           }
                        }
                        §§goto(addr256);
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
            §§goto(addr77);
         }
         return new Rectangle(0,0,_loc4_,_loc5_);
      }
      
      private function §%!M§(param1:Array, param2:BitmapData) : Array
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         var _loc8_:§-§ = null;
         var _loc9_:BitmapData = null;
         var _loc10_:§2!F§ = null;
         var _loc11_:* = 0;
         var _loc12_:int = 0;
         var _loc13_:§5!B§ = null;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:Array = [];
         var _loc7_:* = Number(NaN);
         loop0:
         while(true)
         {
            §§push(param1);
            loop1:
            while(§§pop().length > 0)
            {
               §§push(param1);
               if(!_loc15_)
               {
                  continue;
               }
               _loc8_ = §§pop()[0];
               if(!_loc14_)
               {
                  §§push(!isNaN(_loc7_));
                  if(!(_loc14_ && param1))
                  {
                     if(§§pop())
                     {
                        if(!(_loc14_ && _loc3_))
                        {
                           addr76:
                           §§pop();
                           if(!_loc14_)
                           {
                              §§push(_loc7_);
                              if(_loc15_ || param2)
                              {
                                 §§push(§§pop() == _loc8_.scale);
                                 if(!_loc14_)
                                 {
                                    addr93:
                                    addr92:
                                    if(!§§pop())
                                    {
                                       if(_loc15_)
                                       {
                                          addr96:
                                          break;
                                       }
                                    }
                                    else
                                    {
                                       §§push(_loc8_.scale);
                                       if(!_loc14_)
                                       {
                                          addr101:
                                          §§push(Number(§§pop()));
                                       }
                                       _loc7_ = §§pop();
                                    }
                                    _loc9_ = _loc8_.bitmapData;
                                    if(_loc15_)
                                    {
                                       §§push(_loc3_);
                                       loop2:
                                       while(true)
                                       {
                                          if(§§pop() + _loc9_.width + §^0§ <= param2.width)
                                          {
                                             loop12:
                                             while(true)
                                             {
                                                §§push(_loc4_);
                                                if(!(_loc14_ && param2))
                                                {
                                                   addr119:
                                                   if(_loc15_ || _loc3_)
                                                   {
                                                      if(§§pop() + _loc9_.height + §^0§ > param2.height)
                                                      {
                                                         if(!_loc14_)
                                                         {
                                                            break;
                                                         }
                                                      }
                                                      else
                                                      {
                                                         addr137:
                                                         param2.copyPixels(_loc9_,_loc9_.rect,new Point(_loc3_,_loc4_),null,null,true);
                                                         if(_loc15_ || this)
                                                         {
                                                            if(false)
                                                            {
                                                               loop9:
                                                               while(true)
                                                               {
                                                                  §§push(0);
                                                                  addr170:
                                                                  loop10:
                                                                  while(!(_loc14_ && param1))
                                                                  {
                                                                     if(!(_loc14_ && _loc3_))
                                                                     {
                                                                        _loc5_ = §§pop();
                                                                        while(!_loc14_)
                                                                        {
                                                                           if(!_loc14_)
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 continue loop12;
                                                                              }
                                                                              addr189:
                                                                           }
                                                                           else
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§push(0);
                                                                              }
                                                                              addr213:
                                                                           }
                                                                           §§goto(addr137);
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           continue loop9;
                                                                        }
                                                                        addr185:
                                                                        addr203:
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        _loc3_ = §§pop();
                                                                        addr215:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc4_);
                                                                           break loop10;
                                                                        }
                                                                     }
                                                                  }
                                                                  continue loop2;
                                                               }
                                                            }
                                                            else
                                                            {
                                                               (_loc10_ = new §2!F§()).offset = new Point(_loc3_,_loc4_);
                                                               _loc10_.§`l§ = _loc8_;
                                                               _loc6_.push(_loc10_);
                                                               if(_loc15_ || _loc3_)
                                                               {
                                                                  addr232:
                                                                  §§push(_loc8_.§5]§);
                                                                  if(!_loc14_)
                                                                  {
                                                                     §§push(int(§§pop()));
                                                                     if(!_loc14_)
                                                                     {
                                                                        _loc11_ = §§pop();
                                                                        _loc12_ = 0;
                                                                        if(false)
                                                                        {
                                                                           §§goto(addr232);
                                                                        }
                                                                        addr283:
                                                                        §§push(_loc12_);
                                                                        if(_loc14_ && _loc3_)
                                                                        {
                                                                        }
                                                                        _loc3_ = §§pop();
                                                                        if(!_loc14_)
                                                                        {
                                                                           if(_loc9_.height + §^0§ > _loc5_)
                                                                           {
                                                                              addr328:
                                                                              _loc5_ = int(_loc9_.height + §^0§);
                                                                              addr323:
                                                                           }
                                                                           continue loop0;
                                                                        }
                                                                        §§goto(addr323);
                                                                     }
                                                                     if(§§pop() < _loc11_)
                                                                     {
                                                                        (_loc13_ = _loc8_.§`T§(_loc12_)).§;S§ = null;
                                                                        if(_loc15_)
                                                                        {
                                                                           _loc13_.§7!N§.offset(_loc3_,_loc4_);
                                                                           if(!(_loc14_ && _loc3_))
                                                                           {
                                                                              addr282:
                                                                              _loc12_++;
                                                                           }
                                                                           §§goto(addr283);
                                                                        }
                                                                        §§goto(addr282);
                                                                     }
                                                                     if(_loc14_)
                                                                     {
                                                                        continue loop0;
                                                                     }
                                                                     §§push(_loc3_);
                                                                     if(!_loc14_)
                                                                     {
                                                                        §§goto(addr283);
                                                                        §§push(int(§§pop() + (_loc9_.width + §^0§)));
                                                                     }
                                                                     §§goto(addr328);
                                                                  }
                                                                  §§goto(addr283);
                                                               }
                                                               §§goto(addr328);
                                                            }
                                                         }
                                                         §§goto(addr185);
                                                      }
                                                      §§goto(addr215);
                                                   }
                                                   else
                                                   {
                                                      while(true)
                                                      {
                                                         _loc4_ = §§pop();
                                                         §§goto(addr119);
                                                      }
                                                      addr202:
                                                   }
                                                   §§goto(addr203);
                                                }
                                                §§goto(addr170);
                                             }
                                             break loop1;
                                          }
                                          §§goto(addr213);
                                       }
                                    }
                                    §§goto(addr189);
                                 }
                                 §§goto(addr93);
                              }
                              §§goto(addr101);
                           }
                           §§goto(addr96);
                        }
                        §§goto(addr92);
                     }
                     §§goto(addr93);
                  }
                  §§goto(addr76);
               }
               §§goto(addr96);
            }
            return _loc6_;
         }
      }
      
      public function §7E§() : Boolean
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         var _loc1_:§-§ = null;
         var _loc3_:Rectangle = null;
         var _loc4_:BitmapData = null;
         var _loc5_:Array = null;
         var _loc6_:Texture = null;
         var _loc7_:* = 0;
         var _loc8_:§2!F§ = null;
         var _loc9_:* = 0;
         var _loc10_:* = 0;
         var _loc11_:§5!B§ = null;
         if(_loc14_)
         {
            §§push(§[Z§.§?4§());
            if(!_loc15_)
            {
               if(!§§pop())
               {
                  if(_loc14_ || this)
                  {
                     §§push(false);
                     if(!_loc15_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr80:
                     return true;
                  }
               }
               else
               {
                  §§push(this.§8i§);
                  if(!(_loc15_ && this))
                  {
                     addr72:
                     if(§§pop())
                     {
                        if(_loc14_ || this)
                        {
                           §§goto(addr80);
                        }
                        else
                        {
                           addr82:
                           var _loc2_:Array = [];
                           var _loc12_:int = 0;
                           var _loc13_:* = this.§7S§;
                           loop0:
                           while(true)
                           {
                              §§push(§§hasnext(_loc13_,_loc12_));
                              if(_loc14_)
                              {
                                 if(§§pop())
                                 {
                                    _loc1_ = §§nextvalue(_loc12_,_loc13_);
                                    if(_loc14_)
                                    {
                                       if(_loc1_.§5]§ <= 0)
                                       {
                                          continue;
                                       }
                                       if(!_loc14_)
                                       {
                                          continue;
                                       }
                                    }
                                    _loc2_.push(_loc1_);
                                    continue;
                                 }
                                 if(_loc14_ || _loc2_)
                                 {
                                    if(_loc14_)
                                    {
                                       if(_loc14_ || this)
                                       {
                                          while(_loc2_.length > 0)
                                          {
                                             _loc3_ = this.§&!+§(_loc2_);
                                             if(!(_loc15_ && _loc1_))
                                             {
                                                if(_loc3_.width * _loc3_.height == 0)
                                                {
                                                   if(!(_loc15_ && _loc3_))
                                                   {
                                                      throw new Error("Found too large sprite sheet image!");
                                                   }
                                                }
                                             }
                                             _loc4_ = new BitmapData(_loc3_.width,_loc3_.height,true,0);
                                             if((_loc5_ = this.§%!M§(_loc2_,_loc4_)).length == 0)
                                             {
                                                if(!_loc15_)
                                                {
                                                   throw new Error("Found too large sprite sheet image!");
                                                }
                                             }
                                             _loc6_ = this.§'b§(_loc4_);
                                             if(_loc14_ || _loc2_)
                                             {
                                                §§push(0);
                                                if(_loc14_ || _loc1_)
                                                {
                                                   _loc7_ = §§pop();
                                                   if(_loc15_)
                                                   {
                                                      continue;
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(_loc7_);
                                                   }
                                                   addr286:
                                                }
                                                for(; §§pop() < _loc5_.length; §§goto(addr286))
                                                {
                                                   _loc1_ = (_loc8_ = _loc5_[_loc7_]).§`l§;
                                                   if(!_loc15_)
                                                   {
                                                      §§push(_loc1_.§5]§);
                                                      if(!_loc15_)
                                                      {
                                                         §§push(int(§§pop()));
                                                         if(_loc14_)
                                                         {
                                                            addr242:
                                                            _loc9_ = §§pop();
                                                            if(_loc15_)
                                                            {
                                                               continue;
                                                            }
                                                            §§push(0);
                                                            if(_loc14_)
                                                            {
                                                               _loc10_ = §§pop();
                                                               if(!_loc15_)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc10_);
                                                                  }
                                                                  addr275:
                                                               }
                                                               addr285:
                                                               _loc7_++;
                                                               continue;
                                                            }
                                                         }
                                                         for(; §§pop() < _loc9_; §§goto(addr275))
                                                         {
                                                            _loc11_ = _loc1_.§`T§(_loc10_);
                                                            if(!(_loc15_ && _loc3_))
                                                            {
                                                               this.§@7§(_loc11_,_loc6_,_loc4_,_loc1_.scale);
                                                               if(!_loc14_)
                                                               {
                                                                  continue;
                                                               }
                                                            }
                                                            _loc10_++;
                                                         }
                                                         if(!(_loc14_ || _loc1_))
                                                         {
                                                            continue;
                                                         }
                                                         §§goto(addr285);
                                                      }
                                                      §§goto(addr242);
                                                   }
                                                   §§goto(addr285);
                                                }
                                             }
                                          }
                                          if(_loc14_)
                                          {
                                             §§goto(addr296);
                                          }
                                          §§goto(addr341);
                                       }
                                       addr296:
                                       _loc12_ = 0;
                                       if(_loc14_ || this)
                                       {
                                          addr305:
                                          _loc13_ = this.§7S§;
                                          while(true)
                                          {
                                             §§push(§§hasnext(_loc13_,_loc12_));
                                             break loop0;
                                          }
                                          addr335:
                                       }
                                       if(!_loc15_)
                                       {
                                          this.§7S§ = new Vector.<§-§>();
                                          do
                                          {
                                             this.§8i§ = true;
                                          }
                                          while(_loc15_ && _loc1_);
                                          
                                          addr341:
                                       }
                                       return true;
                                    }
                                 }
                                 §§goto(addr305);
                              }
                              break;
                           }
                           while(true)
                           {
                              if(§§pop())
                              {
                                 _loc1_ = §§nextvalue(_loc12_,_loc13_);
                                 if(_loc14_ || _loc1_)
                                 {
                                    _loc1_.dispose();
                                 }
                                 continue;
                              }
                              §§goto(addr305);
                           }
                        }
                     }
                     §§goto(addr82);
                  }
               }
               return §§pop();
            }
            §§goto(addr72);
         }
         §§goto(addr82);
      }
      
      private function §@7§(param1:§5!B§, param2:Texture, param3:BitmapData, param4:Number) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc6_:Rectangle = null;
         var _loc7_:§>6§ = null;
         var _loc5_:§`!9§;
         if(!(_loc5_ = this.§ !#§[param1.mName]))
         {
            _loc6_ = param1.§7!N§.clone();
            _loc7_ = new §>6§(param2,_loc6_,false);
            _loc5_ = new §`!9§(_loc7_,param3,_loc6_,param1.§%O§,param1.§&!I§,param4);
            if(!(_loc8_ && param2))
            {
               this.§ !#§[param1.mName] = _loc5_;
            }
         }
      }
      
      public function §&I§() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(§§newactivation());
         if(_loc6_)
         {
            §§push(null);
            if(!_loc5_)
            {
               §§pop().§§slot[1] = §§pop();
               if(_loc6_ || _loc2_)
               {
                  addr38:
                  var texture:Texture = null;
                  if(!(_loc5_ && this))
                  {
                     if(!§[Z§.§1'§)
                     {
                        addr60:
                        var _loc2_:int = 0;
                        var _loc3_:* = this.§%B§;
                        while(§§hasnext(_loc3_,_loc2_))
                        {
                           §§push(§§newactivation());
                           if(_loc6_)
                           {
                              §§pop().§§slot[1] = §§nextname(_loc2_,_loc3_);
                              if(_loc6_)
                              {
                                 try
                                 {
                                    §§push(§§newactivation());
                                    if(_loc6_)
                                    {
                                       §§pop().§§slot[2] = this.§%B§[bd];
                                       if(_loc5_)
                                       {
                                       }
                                    }
                                    addr101:
                                    §§pop().§§slot[2].requestBaseTextureUpdate(bd as BitmapData);
                                 }
                                 catch(e:Error)
                                 {
                                    continue;
                                 }
                                 continue;
                              }
                              §§push(§§newactivation());
                           }
                           §§goto(addr101);
                        }
                     }
                     return;
                  }
               }
               §§goto(addr60);
            }
         }
         §§goto(addr38);
      }
      
      public function §&! §(param1:String) : §`!9§
      {
         return this.§ !#§[param1];
      }
      
      public function §'b§(param1:BitmapData, param2:Boolean = true) : Texture
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Texture = this.§%B§[param1];
         if(!(_loc4_ && _loc3_))
         {
            if(_loc3_)
            {
               if(_loc5_)
               {
                  §§goto(addr54);
               }
            }
            _loc3_ = §[Z§.§3v§(param1,param2);
            if(_loc5_)
            {
               this.§%B§[param1] = _loc3_;
            }
            do
            {
               this.§1f§(_loc3_,param1,true);
            }
            while(!_loc5_);
            
            return _loc3_;
         }
         addr54:
         return _loc3_;
      }
      
      public function §1f§(param1:Texture, param2:BitmapData, param3:Boolean) : void
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
               loop0:
               while(true)
               {
                  §§push(-1);
                  addr225:
                  while(true)
                  {
                     _loc4_ = §§pop();
                  }
                  loop5:
                  while(true)
                  {
                     if(!(_loc8_ || param1))
                     {
                        continue loop0;
                     }
                     loop6:
                     while(true)
                     {
                        §§push(param1.height);
                        if(_loc8_)
                        {
                           §§push(int(§§pop()));
                           if(_loc8_ || param1)
                           {
                              if(_loc7_ && this)
                              {
                                 break loop5;
                              }
                              _loc6_ = §§pop();
                              if(_loc7_)
                              {
                                 continue loop5;
                              }
                              loop7:
                              while(true)
                              {
                                 §§push(_loc5_);
                                 loop8:
                                 while(true)
                                 {
                                    §§push(1);
                                    loop9:
                                    while(!(_loc7_ && this))
                                    {
                                       §§push(§§pop() >= §§pop());
                                       loop10:
                                       while(true)
                                       {
                                          if(!§§pop())
                                          {
                                             while(true)
                                             {
                                                if(!§§pop())
                                                {
                                                   if(_loc7_)
                                                   {
                                                      loop12:
                                                      while(true)
                                                      {
                                                         §§push(_loc6_);
                                                         if(!_loc7_)
                                                         {
                                                            if(_loc8_ || param1)
                                                            {
                                                               if(!_loc7_)
                                                               {
                                                                  if(_loc8_)
                                                                  {
                                                                     §§push(1);
                                                                     if(_loc7_)
                                                                     {
                                                                        continue loop9;
                                                                     }
                                                                     if(!(_loc7_ && param2))
                                                                     {
                                                                        §§push(§§pop() >= §§pop());
                                                                        if(_loc8_ || param1)
                                                                        {
                                                                           continue loop10;
                                                                        }
                                                                        addr96:
                                                                        while(true)
                                                                        {
                                                                           §§pop();
                                                                           continue loop12;
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        addr119:
                                                                        §§push(§§pop() >> §§pop());
                                                                     }
                                                                  }
                                                                  addr120:
                                                                  _loc5_ = §§pop();
                                                                  §§goto(addr121);
                                                               }
                                                               addr110:
                                                               break loop9;
                                                            }
                                                            break;
                                                         }
                                                         continue loop8;
                                                      }
                                                      addr112:
                                                      _loc6_ = §§pop();
                                                      continue loop7;
                                                   }
                                                   if(!(_loc8_ || param2))
                                                   {
                                                      continue loop7;
                                                   }
                                                   if(_loc8_)
                                                   {
                                                      §§goto(addr79);
                                                   }
                                                   addr121:
                                                   if(!_loc8_)
                                                   {
                                                      break;
                                                   }
                                                   §§push(_loc6_);
                                                   §§goto(addr110);
                                                }
                                                else
                                                {
                                                   §§push(this);
                                                   §§push(this.§]!C§);
                                                   §§push(_loc4_ * _loc5_);
                                                   if(_loc8_ || param2)
                                                   {
                                                      §§push(_loc6_);
                                                      if(_loc8_)
                                                      {
                                                         addr148:
                                                         §§push(§§pop() * §§pop());
                                                         if(_loc8_)
                                                         {
                                                            §§push(4);
                                                         }
                                                         §§pop().§]!C§ = §§pop() + §§pop();
                                                         break;
                                                      }
                                                      §§push(§§pop() * §§pop());
                                                   }
                                                   §§goto(addr148);
                                                }
                                             }
                                             §§push(_loc5_);
                                             if(_loc8_)
                                             {
                                                §§goto(addr119);
                                                §§push(1);
                                             }
                                             §§goto(addr120);
                                             addr66:
                                          }
                                          §§goto(addr96);
                                       }
                                    }
                                    §§goto(addr112);
                                 }
                              }
                           }
                           while(true)
                           {
                              _loc5_ = §§pop();
                              continue loop5;
                           }
                           addr181:
                        }
                        addr180:
                        while(true)
                        {
                           §§goto(addr181);
                           continue loop6;
                        }
                     }
                  }
                  §§goto(addr225);
               }
            }
            while(true)
            {
               if(param2)
               {
                  §§push(this);
                  §§push(this.§&>§);
                  §§push(_loc4_ * param2.width);
                  if(_loc8_)
                  {
                     §§push(§§pop() * param2.height);
                     if(_loc8_)
                     {
                        §§push(§§pop() * 4);
                     }
                  }
                  §§pop().§&>§ = §§pop() + §§pop();
               }
               if(param1)
               {
                  §§goto(addr180);
                  §§push(param1.width);
               }
               break;
               §§goto(addr225);
            }
            addr79:
            return;
         }
         §§goto(addr199);
      }
      
      public function §6K§() : Texture
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§]!P§);
            if(_loc1_)
            {
               if(!§§pop())
               {
                  if(!_loc2_)
                  {
                     addr35:
                     this.§]!P§ = this.§'b§(new BitmapData(40,40,false,16711935));
                  }
               }
               return this.§]!P§;
            }
         }
         §§goto(addr35);
      }
      
      public function §@C§(param1:Texture) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:* = null;
         var _loc3_:BitmapData = null;
         var _loc4_:int = 0;
         var _loc5_:* = this.§%B§;
         while(true)
         {
            for(_loc2_ in _loc5_)
            {
               if(!(_loc6_ || this))
               {
                  break;
               }
               if(this.§%B§[_loc2_] == param1)
               {
                  break;
               }
            }
            return;
         }
         _loc3_ = _loc2_ as BitmapData;
         this.§1f§(param1,_loc3_,false);
         if(_loc3_)
         {
            _loc3_.dispose();
            while(true)
            {
               §§goto(addr88);
            }
         }
         addr88:
         while(true)
         {
            delete this.§%B§[_loc2_];
            do
            {
               param1.dispose();
            }
            while(!_loc6_);
            
            if(!_loc7_)
            {
               break;
            }
            continue loop1;
         }
      }
      
      public function §?8§(param1:String) : BitmapData
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§`!9§ = this.§&! §(param1);
         if(!_loc3_)
         {
            if(_loc2_ == null)
            {
               if(!(_loc3_ && _loc2_))
               {
                  §§push(this.§&! §(param1 + "_1"));
                  if(_loc4_ || param1)
                  {
                     _loc2_ = §§pop();
                     addr68:
                     if(_loc2_ == null)
                     {
                        if(_loc4_)
                        {
                           addr78:
                           _loc2_ = this.§&! §(param1 + "_01");
                           addr80:
                           if(_loc2_ == null)
                           {
                              if(!_loc3_)
                              {
                                 §§goto(addr85);
                              }
                           }
                           return _loc2_.bitmapData;
                           addr73:
                        }
                        addr85:
                        return null;
                     }
                     §§goto(addr80);
                  }
                  §§goto(addr78);
               }
               §§goto(addr73);
            }
            §§goto(addr68);
         }
         §§goto(addr78);
      }
   }
}
