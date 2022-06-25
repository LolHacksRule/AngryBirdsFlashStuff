package §_-8d§
{
   import §_-0Ea§.§_-AY§;
   import §_-6E§.§_-0j§;
   import §_-6E§.§_-UU§;
   import §_-z4§.Texture;
   import §_-z4§.§_-ud§;
   import flash.display.BitmapData;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class §_-0FF§ extends EventDispatcher
   {
      
      private static const §_-Pl§:int = 2;
      
      private static const §_-0-§:int = 2048;
      
      private static var §_-me§:§_-0FF§;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §_-Pl§ = 2;
         }
         do
         {
            §_-0-§ = 2048;
         }
         while(!_loc2_);
         
      }
      
      private var § do§:Dictionary;
      
      private var §_-01q§:Vector.<§_-UU§>;
      
      private var §_-49§:Dictionary;
      
      private var §_-OC§:Boolean;
      
      private var §_-1h§:String;
      
      private var §_-Fx§:Texture;
      
      private var §_-jD§:int;
      
      private var §_-ST§:int;
      
      public function §_-0FF§(param1:String = null)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super();
         }
         loop0:
         do
         {
            this.§_-01q§ = new Vector.<§_-UU§>();
            while(true)
            {
               this.§ do§ = new Dictionary();
               while(!(_loc3_ && _loc2_))
               {
                  this.§_-49§ = new Dictionary();
                  while(_loc2_)
                  {
                     this.§_-1h§ = param1;
                     if(!(_loc3_ && param1))
                     {
                        continue loop0;
                     }
                  }
               }
            }
         }
         while(_loc3_ && _loc3_);
         
      }
      
      public static function get §_-3S§() : §_-0FF§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(§_-me§);
            if(!(_loc2_ && _loc2_))
            {
               if(!§§pop())
               {
                  if(!_loc2_)
                  {
                     addr39:
                     §_-me§ = new §_-0FF§();
                  }
               }
               return §_-me§;
            }
         }
         §§goto(addr39);
      }
      
      public function get §_-RF§() : int
      {
         return this.§_-jD§;
      }
      
      public function get §_-0DC§() : int
      {
         return this.§_-ST§;
      }
      
      public function get id() : String
      {
         return this.§_-1h§;
      }
      
      public function dispose() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc1_:§_-vz§ = null;
         var _loc2_:§_-UU§ = null;
         if(!_loc6_)
         {
            if(this.§ do§)
            {
               addr27:
               var _loc3_:int = 0;
               var _loc4_:* = this.§ do§;
               loop11:
               while(true)
               {
                  §§push(§§hasnext(_loc4_,_loc3_));
                  if(_loc5_ || _loc1_)
                  {
                     if(§§pop())
                     {
                        _loc1_ = §§nextvalue(_loc3_,_loc4_);
                        if(!(_loc6_ && _loc3_))
                        {
                           this.unregisterBitmapDataTexture(_loc1_.texture.parent);
                           if(!(_loc6_ && _loc2_))
                           {
                              _loc1_.dispose();
                           }
                        }
                        continue;
                     }
                     if(_loc5_ || _loc2_)
                     {
                        if(!_loc6_)
                        {
                           if(!_loc6_)
                           {
                              this.§ do§ = null;
                              if(_loc5_ || _loc1_)
                              {
                                 addr93:
                                 if(this.§_-01q§)
                                 {
                                    if(_loc5_ || _loc3_)
                                    {
                                       _loc3_ = 0;
                                       if(_loc5_)
                                       {
                                          addr117:
                                          _loc4_ = this.§_-01q§;
                                          while(true)
                                          {
                                             §§push(§§hasnext(_loc4_,_loc3_));
                                             break loop11;
                                          }
                                          addr132:
                                       }
                                       if(!(_loc6_ && _loc3_))
                                       {
                                          this.§_-01q§ = null;
                                          loop8:
                                          while(true)
                                          {
                                             addr233:
                                             while(true)
                                             {
                                                if(this.§_-49§)
                                                {
                                                   addr236:
                                                   while(true)
                                                   {
                                                      this.§_-49§ = null;
                                                      addr239:
                                                      while(true)
                                                      {
                                                         if(_loc6_ && this)
                                                         {
                                                            continue loop8;
                                                         }
                                                      }
                                                   }
                                                   addr236:
                                                }
                                                while(true)
                                                {
                                                   §§push(this.§_-Fx§);
                                                   if(_loc5_)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         if(!(_loc6_ && _loc3_))
                                                         {
                                                            if(_loc5_ || _loc3_)
                                                            {
                                                               addr223:
                                                               this.§_-Fx§.dispose();
                                                               while(!(_loc6_ && _loc1_))
                                                               {
                                                                  while(true)
                                                                  {
                                                                     this.§_-Fx§ = null;
                                                                     while(true)
                                                                     {
                                                                        §§goto(addr178);
                                                                     }
                                                                  }
                                                               }
                                                               addr224:
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr236);
                                                            }
                                                            §§goto(addr239);
                                                         }
                                                         §§goto(addr224);
                                                      }
                                                      addr178:
                                                      loop5:
                                                      while(true)
                                                      {
                                                         this.§_-01q§ = new Vector.<§_-UU§>();
                                                         loop6:
                                                         while(true)
                                                         {
                                                            this.§ do§ = new Dictionary();
                                                            while(true)
                                                            {
                                                               if(_loc5_ || _loc2_)
                                                               {
                                                                  if(!_loc5_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  continue;
                                                               }
                                                               continue loop6;
                                                            }
                                                            continue loop5;
                                                         }
                                                      }
                                                      return;
                                                   }
                                                   §§goto(addr223);
                                                }
                                             }
                                          }
                                          addr250:
                                       }
                                       §§goto(addr236);
                                    }
                                    §§goto(addr250);
                                 }
                                 §§goto(addr233);
                              }
                              §§goto(addr231);
                           }
                           §§goto(addr93);
                        }
                     }
                     §§goto(addr117);
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
                  §§goto(addr117);
               }
            }
            §§goto(addr93);
         }
         §§goto(addr27);
      }
      
      public function §_-sG§(param1:§_-UU§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            if(!this.§_-OC§)
            {
               loop0:
               while(this.§_-01q§.indexOf(param1) < 0)
               {
                  while(true)
                  {
                     this.§_-01q§.push(param1);
                     if(!_loc2_)
                     {
                        break;
                     }
                     if(!(_loc2_ && param1))
                     {
                        continue;
                     }
                     continue loop0;
                  }
                  if(!_loc3_)
                  {
                     break;
                  }
                  if(!(_loc2_ && param1))
                  {
                     return;
                  }
               }
               §§goto(addr73);
            }
            return;
         }
         addr73:
      }
      
      private function §_-1A§(param1:Array) : Rectangle
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc9_:§_-UU§ = null;
         var _loc10_:BitmapData = null;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         var _loc7_:* = Number(1);
         var _loc8_:int = 0;
         loop0:
         while(_loc8_ < param1.length)
         {
            _loc9_ = param1[_loc8_];
            if(!(_loc12_ && _loc3_))
            {
               if(_loc8_ == 0)
               {
                  if(!_loc12_)
                  {
                     §§push(_loc9_.scale);
                     if(_loc11_ || _loc3_)
                     {
                        §§push(Number(§§pop()));
                        if(!_loc12_)
                        {
                           _loc7_ = §§pop();
                           if(!(_loc11_ || _loc2_))
                           {
                              addr81:
                              break;
                           }
                           addr76:
                        }
                        else
                        {
                           addr79:
                           if(§§pop() != _loc7_)
                           {
                              §§goto(addr81);
                           }
                        }
                        _loc10_ = _loc9_.bitmapData;
                        if(_loc11_)
                        {
                           §§push(_loc2_);
                           loop1:
                           while(true)
                           {
                              if(§§pop() + _loc10_.width + §_-Pl§ < §_-0-§)
                              {
                                 loop12:
                                 while(true)
                                 {
                                    §§push(_loc3_);
                                    loop13:
                                    while(_loc11_)
                                    {
                                       if(§§pop() + _loc10_.height + §_-Pl§ < §_-0-§)
                                       {
                                          §§push(_loc2_);
                                          loop14:
                                          while(true)
                                          {
                                             §§push(int(§§pop() + (_loc10_.width + §_-Pl§)));
                                             loop15:
                                             while(true)
                                             {
                                                _loc2_ = §§pop();
                                                loop16:
                                                while(_loc11_)
                                                {
                                                   while(true)
                                                   {
                                                      §§push(_loc2_);
                                                      loop18:
                                                      for(; _loc11_; if(!(_loc11_ || _loc2_))
                                                      {
                                                         continue;
                                                      },if(_loc11_ || this)
                                                      {
                                                         if(_loc11_ || _loc3_)
                                                         {
                                                            _loc5_ = §§pop();
                                                            §§goto(addr163);
                                                         }
                                                         §§goto(addr295);
                                                      },§§goto(addr284))
                                                      {
                                                         §§push(_loc4_);
                                                         loop19:
                                                         while(true)
                                                         {
                                                            if(§§pop() > §§pop())
                                                            {
                                                               loop20:
                                                               while(!(_loc12_ && _loc2_))
                                                               {
                                                                  §§push(_loc2_);
                                                                  if(!_loc12_)
                                                                  {
                                                                     if(_loc12_)
                                                                     {
                                                                        continue loop13;
                                                                     }
                                                                     §§push(int(§§pop()));
                                                                  }
                                                                  loop21:
                                                                  while(true)
                                                                  {
                                                                     _loc4_ = §§pop();
                                                                     loop22:
                                                                     while(!_loc12_)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           if(_loc10_.height + §_-Pl§ <= _loc6_)
                                                                           {
                                                                              loop28:
                                                                              while(true)
                                                                              {
                                                                                 _loc8_++;
                                                                                 if(!_loc12_)
                                                                                 {
                                                                                    if(_loc12_ && _loc3_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    if(_loc12_)
                                                                                    {
                                                                                       continue loop20;
                                                                                    }
                                                                                    if(true)
                                                                                    {
                                                                                       continue loop0;
                                                                                    }
                                                                                    §§goto(addr104);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    while(_loc11_)
                                                                                    {
                                                                                       continue loop28;
                                                                                    }
                                                                                    addr163:
                                                                                 }
                                                                              }
                                                                              continue loop22;
                                                                           }
                                                                           if(!_loc12_)
                                                                           {
                                                                              §§push(int(_loc10_.height + §_-Pl§));
                                                                              loop24:
                                                                              while(!(_loc12_ && _loc2_))
                                                                              {
                                                                                 addr187:
                                                                                 if(_loc11_ || _loc3_)
                                                                                 {
                                                                                    _loc6_ = §§pop();
                                                                                    while(true)
                                                                                    {
                                                                                       if(!(_loc11_ || _loc2_))
                                                                                       {
                                                                                          addr246:
                                                                                          break loop0;
                                                                                       }
                                                                                       if(!_loc12_)
                                                                                       {
                                                                                          if(_loc11_ || _loc2_)
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc3_);
                                                                                                if(_loc11_)
                                                                                                {
                                                                                                   if(!_loc11_)
                                                                                                   {
                                                                                                      continue loop21;
                                                                                                   }
                                                                                                   §§push(_loc6_);
                                                                                                   if(!_loc11_)
                                                                                                   {
                                                                                                      continue loop19;
                                                                                                   }
                                                                                                   addr113:
                                                                                                   if(!(_loc12_ && _loc2_))
                                                                                                   {
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                      if(_loc11_ || param1)
                                                                                                      {
                                                                                                         addr129:
                                                                                                         §§push(int(§§pop()));
                                                                                                         if(_loc11_)
                                                                                                         {
                                                                                                            continue loop18;
                                                                                                         }
                                                                                                         continue loop24;
                                                                                                      }
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop() + §§pop());
                                                                                                         §§goto(addr113);
                                                                                                      }
                                                                                                      addr282:
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(int(§§pop()));
                                                                                                      addr284:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         _loc3_ = §§pop();
                                                                                                         break loop22;
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr129);
                                                                                             }
                                                                                             continue loop18;
                                                                                             addr104:
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr294:
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(0);
                                                                                             addr295:
                                                                                             while(true)
                                                                                             {
                                                                                                _loc2_ = §§pop();
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc3_);
                                                                                          break loop13;
                                                                                       }
                                                                                    }
                                                                                    addr195:
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    _loc6_ = §§pop();
                                                                                    break loop16;
                                                                                    §§goto(addr187);
                                                                                 }
                                                                              }
                                                                              continue loop15;
                                                                           }
                                                                           §§goto(addr195);
                                                                        }
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§goto(addr260);
                                                                     }
                                                                  }
                                                               }
                                                               continue loop16;
                                                            }
                                                            §§goto(addr166);
                                                         }
                                                      }
                                                      continue loop14;
                                                   }
                                                }
                                                continue loop12;
                                             }
                                          }
                                       }
                                       §§goto(addr246);
                                    }
                                    continue loop1;
                                 }
                              }
                              §§goto(addr294);
                           }
                        }
                        §§goto(addr257);
                     }
                  }
                  §§goto(addr76);
               }
               else
               {
                  §§push(_loc9_.scale);
               }
               §§goto(addr79);
            }
            §§goto(addr76);
         }
         return new Rectangle(0,0,_loc4_,_loc5_);
      }
      
      private function §_-0FH§(param1:Array, param2:BitmapData) : Array
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         var _loc8_:§_-UU§ = null;
         var _loc9_:BitmapData = null;
         var _loc10_:§_-wr§ = null;
         var _loc11_:* = 0;
         var _loc12_:* = 0;
         var _loc13_:§_-0j§ = null;
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
                  if(!_loc14_)
                  {
                     if(§§pop())
                     {
                        if(!(_loc14_ && this))
                        {
                           §§pop();
                           if(!_loc14_)
                           {
                              §§push(_loc7_);
                              if(!(_loc14_ && _loc3_))
                              {
                                 §§push(§§pop() == _loc8_.scale);
                                 if(_loc15_)
                                 {
                                    addr88:
                                    if(!§§pop())
                                    {
                                       if(!(_loc14_ && param2))
                                       {
                                          addr96:
                                          break;
                                       }
                                       addr108:
                                       _loc9_ = _loc8_.bitmapData;
                                       if(_loc15_ || this)
                                       {
                                          §§push(_loc3_);
                                          while(true)
                                          {
                                             if(§§pop() + _loc9_.width + §_-Pl§ > param2.width)
                                             {
                                                while(true)
                                                {
                                                   §§push(0);
                                                   while(true)
                                                   {
                                                      _loc3_ = §§pop();
                                                      while(true)
                                                      {
                                                         §§push(_loc4_);
                                                         loop6:
                                                         while(true)
                                                         {
                                                            §§push(int(§§pop() + _loc5_));
                                                            addr204:
                                                            while(true)
                                                            {
                                                               _loc4_ = §§pop();
                                                               addr205:
                                                               while(true)
                                                               {
                                                                  addr175:
                                                                  while(true)
                                                                  {
                                                                     continue loop6;
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             while(true)
                                             {
                                                §§push(_loc4_);
                                                if(_loc15_ || param1)
                                                {
                                                   if(!_loc14_)
                                                   {
                                                      if(§§pop() + _loc9_.height + §_-Pl§ > param2.height)
                                                      {
                                                         if(!(_loc14_ && _loc3_))
                                                         {
                                                            break;
                                                         }
                                                      }
                                                      else
                                                      {
                                                         param2.copyPixels(_loc9_,_loc9_.rect,new Point(_loc3_,_loc4_),null,null,true);
                                                      }
                                                      if(!(_loc14_ && param2))
                                                      {
                                                         if(_loc15_ || param1)
                                                         {
                                                            if(false)
                                                            {
                                                               §§goto(addr175);
                                                            }
                                                            else
                                                            {
                                                               (_loc10_ = new §_-wr§()).offset = new Point(_loc3_,_loc4_);
                                                               if(_loc15_)
                                                               {
                                                                  _loc10_.§_-gP§ = _loc8_;
                                                               }
                                                               _loc6_.push(_loc10_);
                                                               addr257:
                                                               addr289:
                                                               addr285:
                                                               §§push(_loc8_.§_-0w§);
                                                               if(!_loc14_)
                                                               {
                                                                  §§push(int(§§pop()));
                                                                  if(!(_loc14_ && this))
                                                                  {
                                                                     _loc11_ = §§pop();
                                                                     if(_loc15_ || param2)
                                                                     {
                                                                        if(!_loc14_)
                                                                        {
                                                                           §§push(0);
                                                                           if(_loc15_ || this)
                                                                           {
                                                                              _loc12_ = §§pop();
                                                                              if(_loc14_ && this)
                                                                              {
                                                                                 continue loop0;
                                                                              }
                                                                              if(_loc15_ || param1)
                                                                              {
                                                                                 if(false)
                                                                                 {
                                                                                    §§goto(addr257);
                                                                                 }
                                                                                 addr315:
                                                                                 §§push(_loc12_);
                                                                                 if(!_loc14_)
                                                                                 {
                                                                                    addr318:
                                                                                    if(§§pop() < _loc11_)
                                                                                    {
                                                                                       (_loc13_ = _loc8_.§_-c6§(_loc12_)).§_-7B§ = null;
                                                                                       if(!_loc14_)
                                                                                       {
                                                                                          _loc13_.§_-vb§.offset(_loc3_,_loc4_);
                                                                                          if(_loc15_ || param2)
                                                                                          {
                                                                                             addr314:
                                                                                             _loc12_++;
                                                                                          }
                                                                                          §§goto(addr315);
                                                                                       }
                                                                                       §§goto(addr314);
                                                                                    }
                                                                                    if(!(_loc14_ && param2))
                                                                                    {
                                                                                       addr327:
                                                                                       §§push(_loc3_);
                                                                                       if(!_loc14_)
                                                                                       {
                                                                                          addr330:
                                                                                          §§push(int(§§pop() + (_loc9_.width + §_-Pl§)));
                                                                                          if(!_loc14_)
                                                                                          {
                                                                                             addr338:
                                                                                             _loc3_ = §§pop();
                                                                                             if(!(_loc15_ || this))
                                                                                             {
                                                                                                continue loop0;
                                                                                             }
                                                                                             if(_loc9_.height + §_-Pl§ > _loc5_)
                                                                                             {
                                                                                                addr377:
                                                                                                if(_loc15_)
                                                                                                {
                                                                                                   §§push(int(_loc9_.height + §_-Pl§));
                                                                                                }
                                                                                                param1.splice(0,1);
                                                                                                continue loop0;
                                                                                             }
                                                                                             §§goto(addr377);
                                                                                          }
                                                                                       }
                                                                                       _loc5_ = §§pop();
                                                                                       if(!(_loc15_ || param2))
                                                                                       {
                                                                                          continue loop0;
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr377);
                                                                                 }
                                                                                 §§goto(addr338);
                                                                              }
                                                                              §§goto(addr289);
                                                                           }
                                                                           §§goto(addr318);
                                                                        }
                                                                        §§goto(addr285);
                                                                     }
                                                                     §§goto(addr327);
                                                                  }
                                                                  §§goto(addr338);
                                                               }
                                                               §§goto(addr330);
                                                            }
                                                         }
                                                         §§goto(addr205);
                                                      }
                                                      §§goto(addr194);
                                                   }
                                                   §§goto(addr204);
                                                }
                                                §§goto(addr177);
                                             }
                                             break loop1;
                                          }
                                       }
                                       §§goto(addr205);
                                    }
                                    else
                                    {
                                       §§push(_loc8_.scale);
                                       if(_loc15_ || this)
                                       {
                                          §§push(Number(§§pop()));
                                       }
                                    }
                                    §§goto(addr108);
                                 }
                                 §§goto(addr88);
                              }
                              _loc7_ = §§pop();
                           }
                           §§goto(addr108);
                        }
                     }
                  }
                  §§goto(addr88);
               }
               §§goto(addr96);
            }
            return _loc6_;
         }
      }
      
      public function §_-G9§() : Boolean
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         var _loc1_:§_-UU§ = null;
         var _loc3_:Rectangle = null;
         var _loc4_:BitmapData = null;
         var _loc5_:Array = null;
         var _loc6_:Texture = null;
         var _loc7_:* = 0;
         var _loc8_:§_-wr§ = null;
         var _loc9_:* = 0;
         var _loc10_:* = 0;
         var _loc11_:§_-0j§ = null;
         if(_loc14_)
         {
            §§push(§_-AY§.§_-Ow§());
            if(!_loc15_)
            {
               if(!§§pop())
               {
                  if(_loc14_ || _loc2_)
                  {
                     addr57:
                     §§push(false);
                     if(!_loc15_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr68:
                     §§push(this.§_-OC§);
                     if(_loc14_ || _loc2_)
                     {
                        addr77:
                        if(§§pop())
                        {
                           if(_loc14_ || this)
                           {
                              §§goto(addr86);
                           }
                        }
                        var _loc2_:Array = [];
                        var _loc12_:int = 0;
                        var _loc13_:* = this.§_-01q§;
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
                                    if(_loc1_.§_-0w§ > 0)
                                    {
                                       if(_loc14_)
                                       {
                                          _loc2_.push(_loc1_);
                                       }
                                    }
                                 }
                                 continue;
                              }
                              if(_loc14_ || _loc3_)
                              {
                                 if(_loc14_ || this)
                                 {
                                    if(!_loc15_)
                                    {
                                       while(_loc2_.length > 0)
                                       {
                                          _loc3_ = this.§_-1A§(_loc2_);
                                          if(_loc14_ || _loc2_)
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
                                          if((_loc5_ = this.§_-0FH§(_loc2_,_loc4_)).length == 0)
                                          {
                                             if(!_loc15_)
                                             {
                                                throw new Error("Found too large sprite sheet image!");
                                             }
                                          }
                                          _loc6_ = this.getTextureFromBitmapData(_loc4_);
                                          if(_loc14_ || _loc1_)
                                          {
                                             §§push(0);
                                             if(_loc14_)
                                             {
                                                _loc7_ = §§pop();
                                                if(!(_loc14_ || _loc3_))
                                                {
                                                   continue;
                                                }
                                                while(true)
                                                {
                                                   §§push(_loc7_);
                                                }
                                                addr306:
                                             }
                                             for(; §§pop() < _loc5_.length; §§goto(addr306))
                                             {
                                                _loc1_ = (_loc8_ = _loc5_[_loc7_]).§_-gP§;
                                                if(!_loc15_)
                                                {
                                                   §§push(_loc1_.§_-0w§);
                                                   if(!(_loc15_ && _loc3_))
                                                   {
                                                      §§push(int(§§pop()));
                                                      if(_loc14_ || _loc1_)
                                                      {
                                                         addr257:
                                                         _loc9_ = §§pop();
                                                         if(!(_loc15_ && this))
                                                         {
                                                            §§push(0);
                                                            if(!(_loc15_ && _loc1_))
                                                            {
                                                               addr273:
                                                               _loc10_ = §§pop();
                                                               if(_loc14_)
                                                               {
                                                                  addr276:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc10_);
                                                                  }
                                                                  addr303:
                                                                  if(_loc14_)
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
                                                                  _loc11_ = _loc1_.§_-c6§(_loc10_);
                                                                  if(_loc14_ || _loc3_)
                                                                  {
                                                                     this.§_-n-§(_loc11_,_loc6_,_loc4_,_loc1_.scale);
                                                                     if(!_loc15_)
                                                                     {
                                                                        _loc10_++;
                                                                     }
                                                                  }
                                                                  continue;
                                                               }
                                                               §§goto(addr303);
                                                            }
                                                         }
                                                         §§goto(addr276);
                                                      }
                                                      §§goto(addr273);
                                                   }
                                                   §§goto(addr257);
                                                }
                                                §§goto(addr305);
                                             }
                                          }
                                       }
                                       if(!(_loc15_ && _loc1_))
                                       {
                                          _loc12_ = 0;
                                          if(_loc14_)
                                          {
                                             addr325:
                                             _loc13_ = this.§_-01q§;
                                             while(true)
                                             {
                                                §§push(§§hasnext(_loc13_,_loc12_));
                                                break loop0;
                                             }
                                             addr350:
                                          }
                                          if(_loc14_ || _loc2_)
                                          {
                                             this.§_-01q§ = new Vector.<§_-UU§>();
                                             do
                                             {
                                                this.§_-OC§ = true;
                                             }
                                             while(_loc15_);
                                             
                                             addr361:
                                          }
                                          return true;
                                       }
                                    }
                                    §§goto(addr361);
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
                  addr86:
                  return true;
               }
               §§goto(addr68);
            }
            §§goto(addr77);
         }
         §§goto(addr57);
      }
      
      private function §_-n-§(param1:§_-0j§, param2:Texture, param3:BitmapData, param4:Number) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc6_:Rectangle = null;
         var _loc7_:§_-ud§ = null;
         var _loc5_:§_-vz§;
         if(!(_loc5_ = this.§ do§[param1.mName]))
         {
            _loc6_ = param1.§_-vb§.clone();
            _loc7_ = new §_-ud§(param2,_loc6_,false);
            _loc5_ = new §_-vz§(_loc7_,param3,_loc6_,param1.§_-7r§,param1.§_-yG§,param4);
            if(_loc9_)
            {
               this.§ do§[param1.mName] = _loc5_;
            }
         }
      }
      
      public function §_-tN§() : void
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
               if(!_loc6_)
               {
                  addr32:
                  var texture:Texture = null;
                  if(_loc5_ || _loc3_)
                  {
                     if(!§_-AY§.§_-B4§)
                     {
                        addr44:
                        var _loc2_:int = 0;
                        var _loc3_:* = this.§_-49§;
                        while(§§hasnext(_loc3_,_loc2_))
                        {
                           §§push(§§newactivation());
                           if(!_loc6_)
                           {
                              §§pop().§§slot[1] = §§nextname(_loc2_,_loc3_);
                              if(_loc5_ || this)
                              {
                                 try
                                 {
                                    §§push(§§newactivation());
                                    if(_loc5_)
                                    {
                                       §§pop().§§slot[2] = this.§_-49§[bd];
                                       addr106:
                                       if(_loc5_)
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
               §§goto(addr44);
            }
         }
         §§goto(addr32);
      }
      
      public function §_-70§(param1:String) : §_-vz§
      {
         return this.§ do§[param1];
      }
      
      public function getTextureFromBitmapData(param1:BitmapData, param2:Boolean = true) : Texture
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Texture = this.§_-49§[param1];
         if(!_loc4_)
         {
            if(_loc3_)
            {
               if(_loc5_)
               {
                  return _loc3_;
               }
            }
         }
         _loc3_ = §_-AY§.§_-0-D§(param1,param2);
         if(_loc5_)
         {
            this.§_-49§[param1] = _loc3_;
            do
            {
               this.§_-dO§(_loc3_,param1,true);
            }
            while(!(_loc5_ || param2));
            
         }
         return _loc3_;
      }
      
      public function §_-dO§(param1:Texture, param2:BitmapData, param3:Boolean) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         var _loc4_:* = 1;
         if(!(_loc7_ && this))
         {
            if(!param3)
            {
               if(_loc8_ || param1)
               {
                  addr242:
                  §§push(-1);
                  while(true)
                  {
                     _loc4_ = §§pop();
                  }
                  addr243:
               }
               while(true)
               {
               }
               addr244:
            }
            loop1:
            while(true)
            {
               if(param2)
               {
                  while(true)
                  {
                     §§push(this);
                     §§push(this.§_-ST§);
                     §§push(_loc4_ * param2.width);
                     if(!_loc7_)
                     {
                        §§push(§§pop() * param2.height);
                        if(!_loc7_)
                        {
                           §§push(§§pop() * 4);
                        }
                     }
                     §§pop().§_-ST§ = §§pop() + §§pop();
                     addr230:
                     while(_loc8_)
                     {
                     }
                     continue loop1;
                  }
                  addr202:
               }
               loop4:
               while(param1)
               {
                  loop5:
                  while(true)
                  {
                     §§push(param1.width);
                     loop6:
                     while(true)
                     {
                        §§push(int(§§pop()));
                        loop7:
                        while(true)
                        {
                           if(_loc8_)
                           {
                              _loc5_ = §§pop();
                              while(true)
                              {
                                 if(_loc8_)
                                 {
                                    §§push(param1.height);
                                    if(_loc7_)
                                    {
                                       continue loop6;
                                    }
                                    §§push(int(§§pop()));
                                    if(!_loc8_)
                                    {
                                       continue loop7;
                                    }
                                    _loc6_ = §§pop();
                                    if(!_loc8_)
                                    {
                                       continue;
                                    }
                                    if(!_loc8_)
                                    {
                                       continue loop5;
                                    }
                                    if(!_loc8_)
                                    {
                                       break;
                                    }
                                    addr82:
                                    §§push(_loc5_);
                                    if(!_loc7_)
                                    {
                                       if(_loc8_ || param3)
                                       {
                                          if(_loc8_)
                                          {
                                             addr96:
                                             §§push(1);
                                             if(!(_loc7_ && param1))
                                             {
                                                addr104:
                                                §§push(§§pop() >= §§pop());
                                                if(§§pop() >= §§pop())
                                                {
                                                   addr106:
                                                   §§pop();
                                                   addr117:
                                                   §§push(_loc6_);
                                                   if(_loc8_ || this)
                                                   {
                                                      §§push(1);
                                                      if(!_loc7_)
                                                      {
                                                         if(_loc8_ || param2)
                                                         {
                                                            §§push(§§pop() >= §§pop());
                                                            if(_loc8_)
                                                            {
                                                               if(_loc8_ || this)
                                                               {
                                                                  addr60:
                                                                  if(!§§pop())
                                                                  {
                                                                     if(_loc8_ || param2)
                                                                     {
                                                                        if(_loc8_ || param2)
                                                                        {
                                                                           if(!_loc8_)
                                                                           {
                                                                              addr131:
                                                                              §§push(_loc6_);
                                                                              if(!_loc7_)
                                                                              {
                                                                                 addr124:
                                                                                 _loc6_ = §§pop() >> 1;
                                                                                 addr125:
                                                                                 if(_loc8_)
                                                                                 {
                                                                                    §§goto(addr82);
                                                                                 }
                                                                                 §§push(_loc5_);
                                                                                 addr170:
                                                                                 addr123:
                                                                              }
                                                                              _loc5_ = §§pop() >> 1;
                                                                              addr133:
                                                                              §§goto(addr133);
                                                                           }
                                                                           break loop4;
                                                                        }
                                                                        §§goto(addr125);
                                                                     }
                                                                     §§goto(addr117);
                                                                  }
                                                                  §§push(this);
                                                                  §§push(this.§_-jD§);
                                                                  §§push(_loc4_ * _loc5_);
                                                                  if(_loc8_ || param2)
                                                                  {
                                                                     §§push(_loc6_);
                                                                     if(!(_loc7_ && param3))
                                                                     {
                                                                        addr168:
                                                                        §§push(§§pop() * §§pop());
                                                                        if(_loc8_ || param3)
                                                                        {
                                                                           §§push(4);
                                                                        }
                                                                        §§pop().§_-jD§ = §§pop() + §§pop();
                                                                        §§goto(addr170);
                                                                     }
                                                                     §§push(§§pop() * §§pop());
                                                                  }
                                                                  §§goto(addr168);
                                                               }
                                                               §§goto(addr104);
                                                            }
                                                            §§goto(addr106);
                                                         }
                                                         §§goto(addr131);
                                                      }
                                                      §§goto(addr96);
                                                   }
                                                   §§goto(addr82);
                                                }
                                                §§goto(addr60);
                                             }
                                             §§goto(addr123);
                                          }
                                       }
                                       §§goto(addr131);
                                    }
                                    §§goto(addr124);
                                 }
                                 else
                                 {
                                    §§goto(addr202);
                                 }
                              }
                              §§goto(addr230);
                           }
                           else
                           {
                              §§goto(addr243);
                           }
                        }
                     }
                  }
               }
               return;
            }
         }
         §§goto(addr242);
      }
      
      public function §_-Fl§() : Texture
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §§push(this.§_-Fx§);
            if(_loc2_)
            {
               if(!§§pop())
               {
                  if(!_loc1_)
                  {
                     addr41:
                     this.§_-Fx§ = this.getTextureFromBitmapData(new BitmapData(40,40,false,16711935));
                  }
               }
               return this.§_-Fx§;
            }
         }
         §§goto(addr41);
      }
      
      public function unregisterBitmapDataTexture(param1:Texture) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:* = null;
         var _loc3_:BitmapData = null;
         var _loc4_:int = 0;
         var _loc5_:* = this.§_-49§;
         while(true)
         {
            loop0:
            for(_loc2_ in _loc5_)
            {
               if(_loc7_ || this)
               {
                  if(this.§_-49§[_loc2_] != param1)
                  {
                     continue;
                  }
               }
               _loc3_ = _loc2_ as BitmapData;
               if(!_loc7_)
               {
                  if(false)
                  {
                     break;
                  }
                  continue;
               }
               this.§_-dO§(param1,_loc3_,false);
               loop1:
               while(true)
               {
                  if(!_loc3_)
                  {
                     while(true)
                     {
                        delete this.§_-49§[_loc2_];
                        addr112:
                        while(true)
                        {
                           break loop0;
                        }
                        addr88:
                        if(!(_loc6_ && this))
                        {
                           break;
                        }
                        continue loop1;
                     }
                     return;
                  }
                  addr96:
                  if(!_loc6_)
                  {
                     _loc3_.dispose();
                  }
               }
            }
            return;
         }
         while(true)
         {
            param1.dispose();
            if(!(_loc7_ || param1))
            {
               continue;
            }
            §§goto(addr88);
         }
      }
      
      public function §_-QA§(param1:String) : BitmapData
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§_-vz§ = this.§_-70§(param1);
         if(_loc3_ || param1)
         {
            if(_loc2_ == null)
            {
               if(!_loc4_)
               {
                  addr43:
                  §§push(this.§_-70§(param1 + "_1"));
                  if(!(_loc4_ && this))
                  {
                     _loc2_ = §§pop();
                     addr67:
                     if(_loc2_ == null)
                     {
                        if(!_loc4_)
                        {
                           addr77:
                           _loc2_ = this.§_-70§(param1 + "_01");
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
               addr89:
               return null;
            }
            §§goto(addr67);
         }
         §§goto(addr43);
      }
   }
}
