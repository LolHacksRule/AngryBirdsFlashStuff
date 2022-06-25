package §-w§
{
   import §0!M§.§,'§;
   import §0!M§.§=!=§;
   import §<&§.§^b§;
   import §^!+§.§&<§;
   import §^!+§.Texture;
   import flash.display.BitmapData;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class §,Q§ extends EventDispatcher
   {
      
      private static const §]!?§:int = 2;
      
      private static const §"!$§:int = 2048;
      
      private static var §`!Y§:§,Q§;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §]!?§ = 2;
            do
            {
               §"!$§ = 2048;
            }
            while(!_loc2_);
            
         }
      }
      
      private var §"7§:Dictionary;
      
      private var §7#§:Vector.<§=!=§>;
      
      private var §3!U§:Dictionary;
      
      private var §4!Y§:Boolean;
      
      private var §&!X§:String;
      
      private var §5i§:Texture;
      
      private var §3!p§:int;
      
      private var §=4§:int;
      
      public function §,Q§(param1:String = null)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super();
            while(true)
            {
               this.§7#§ = new Vector.<§=!=§>();
            }
            addr83:
         }
         loop1:
         while(true)
         {
            this.§"7§ = new Dictionary();
            loop2:
            while(true)
            {
               this.§3!U§ = new Dictionary();
               while(true)
               {
                  if(_loc3_)
                  {
                     continue loop2;
                  }
                  if(!_loc2_)
                  {
                     break;
                  }
                  if(_loc2_)
                  {
                     continue;
                  }
                  §§goto(addr83);
               }
               continue loop1;
            }
         }
      }
      
      public static function get §<d§() : §,Q§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(§`!Y§);
            if(_loc1_ || §,Q§)
            {
               if(!§§pop())
               {
                  if(_loc1_ || _loc2_)
                  {
                     addr44:
                     §`!Y§ = new §,Q§();
                  }
               }
               return §`!Y§;
            }
         }
         §§goto(addr44);
      }
      
      public function get §4!l§() : int
      {
         return this.§3!p§;
      }
      
      public function get §<!4§() : int
      {
         return this.§=4§;
      }
      
      public function get id() : String
      {
         return this.§&!X§;
      }
      
      public function dispose() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc1_:§+W§ = null;
         var _loc2_:§=!=§ = null;
         if(!(_loc6_ && _loc1_))
         {
            if(this.§"7§)
            {
               addr32:
               var _loc3_:int = 0;
               var _loc4_:* = this.§"7§;
               loop14:
               while(true)
               {
                  §§push(§§hasnext(_loc4_,_loc3_));
                  if(!(_loc6_ && _loc1_))
                  {
                     if(§§pop())
                     {
                        _loc1_ = §§nextvalue(_loc3_,_loc4_);
                        if(_loc5_ || _loc2_)
                        {
                           this.unregisterBitmapDataTexture(_loc1_.texture.parent);
                           if(_loc6_)
                           {
                              continue;
                           }
                        }
                        _loc1_.dispose();
                        continue;
                     }
                     if(!_loc6_)
                     {
                        if(!_loc6_)
                        {
                           if(_loc5_ || _loc2_)
                           {
                              this.§"7§ = null;
                              if(_loc5_)
                              {
                                 addr88:
                                 if(this.§7#§)
                                 {
                                    if(!(_loc6_ && _loc3_))
                                    {
                                       _loc3_ = 0;
                                       if(_loc5_ || _loc1_)
                                       {
                                          addr117:
                                          _loc4_ = this.§7#§;
                                          while(true)
                                          {
                                             §§push(§§hasnext(_loc4_,_loc3_));
                                             break loop14;
                                          }
                                          addr132:
                                       }
                                       if(_loc5_ || _loc1_)
                                       {
                                          this.§7#§ = null;
                                          loop11:
                                          while(true)
                                          {
                                             addr228:
                                             while(true)
                                             {
                                                if(this.§3!U§)
                                                {
                                                   while(true)
                                                   {
                                                      this.§3!U§ = null;
                                                      addr234:
                                                      addr241:
                                                      while(!(_loc5_ || this))
                                                      {
                                                         continue loop11;
                                                      }
                                                      while(true)
                                                      {
                                                         §§goto(addr234);
                                                      }
                                                   }
                                                   addr231:
                                                }
                                                while(true)
                                                {
                                                   §§push(this.§5i§);
                                                   if(!_loc6_)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         while(!(_loc6_ && _loc1_))
                                                         {
                                                            §§push(this.§5i§);
                                                            while(true)
                                                            {
                                                               §§pop().dispose();
                                                               addr226:
                                                               while(true)
                                                               {
                                                                  this.§5i§ = null;
                                                                  addr199:
                                                                  while(true)
                                                                  {
                                                                  }
                                                               }
                                                            }
                                                            if(!(_loc5_ || _loc3_))
                                                            {
                                                               continue;
                                                            }
                                                            if(!_loc6_)
                                                            {
                                                               return;
                                                               addr171:
                                                            }
                                                            §§goto(addr231);
                                                         }
                                                         §§goto(addr234);
                                                      }
                                                      while(true)
                                                      {
                                                         this.§7#§ = new Vector.<§=!=§>();
                                                         loop6:
                                                         while(true)
                                                         {
                                                            this.§"7§ = new Dictionary();
                                                            while(true)
                                                            {
                                                               if(_loc5_)
                                                               {
                                                                  if(!(_loc5_ || _loc3_))
                                                                  {
                                                                     break;
                                                                  }
                                                                  continue;
                                                               }
                                                               continue loop6;
                                                            }
                                                            §§goto(addr226);
                                                         }
                                                         §§goto(addr199);
                                                      }
                                                   }
                                                   §§goto(addr225);
                                                }
                                             }
                                          }
                                          addr245:
                                       }
                                       §§goto(addr241);
                                    }
                                    §§goto(addr245);
                                 }
                                 §§goto(addr228);
                              }
                           }
                           §§goto(addr171);
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
            §§goto(addr88);
         }
         §§goto(addr32);
      }
      
      public function §9!$§(param1:§=!=§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            if(!this.§4!Y§)
            {
               loop0:
               while(true)
               {
                  if(this.§7#§.indexOf(param1) >= 0)
                  {
                     if(!_loc2_)
                     {
                        break;
                     }
                     loop1:
                     while(true)
                     {
                        addr39:
                        while(true)
                        {
                           this.§7#§.push(param1);
                           if(_loc3_)
                           {
                              break;
                           }
                           continue loop1;
                        }
                        if(_loc3_)
                        {
                           if(_loc3_ || param1)
                           {
                              return;
                           }
                           addr80:
                           return;
                        }
                        continue loop0;
                     }
                  }
                  §§goto(addr39);
               }
               return;
            }
         }
         §§goto(addr80);
      }
      
      private function §&!1§(param1:Array) : Rectangle
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc9_:§=!=§ = null;
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
            if(!(_loc11_ && param1))
            {
               if(_loc8_ == 0)
               {
                  if(!_loc11_)
                  {
                     §§push(_loc9_.scale);
                     if(!(_loc11_ && param1))
                     {
                        §§push(Number(§§pop()));
                        if(!_loc11_)
                        {
                           addr69:
                           _loc7_ = §§pop();
                           if(_loc11_ && _loc2_)
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
                           §§push(_loc2_);
                           loop1:
                           while(true)
                           {
                              if(§§pop() + _loc10_.width + §]!?§ >= §"!$§)
                              {
                                 loop2:
                                 while(true)
                                 {
                                    §§push(0);
                                    loop3:
                                    while(true)
                                    {
                                       _loc2_ = §§pop();
                                       loop4:
                                       while(true)
                                       {
                                          §§push(_loc3_);
                                          loop5:
                                          while(true)
                                          {
                                             §§push(_loc6_);
                                             addr281:
                                             while(true)
                                             {
                                                §§push(§§pop() + §§pop());
                                                addr282:
                                                while(true)
                                                {
                                                   §§push(int(§§pop()));
                                                   loop8:
                                                   while(true)
                                                   {
                                                      _loc3_ = §§pop();
                                                      loop9:
                                                      while(_loc12_ || _loc3_)
                                                      {
                                                         §§push(0);
                                                         while(true)
                                                         {
                                                            _loc6_ = §§pop();
                                                            addr268:
                                                            while(_loc12_)
                                                            {
                                                               if(_loc11_ && _loc2_)
                                                               {
                                                                  continue loop2;
                                                               }
                                                            }
                                                            continue loop9;
                                                            while(_loc12_ || param1)
                                                            {
                                                               continue loop5;
                                                               loop20:
                                                               while(!(_loc11_ && param1))
                                                               {
                                                                  §§push(int(§§pop()));
                                                                  loop21:
                                                                  while(true)
                                                                  {
                                                                     _loc4_ = §§pop();
                                                                     loop22:
                                                                     while(true)
                                                                     {
                                                                        loop23:
                                                                        while(true)
                                                                        {
                                                                           if(_loc10_.height + §]!?§ > _loc6_)
                                                                           {
                                                                              if(!_loc11_)
                                                                              {
                                                                                 if(!(_loc11_ && param1))
                                                                                 {
                                                                                    §§push(int(_loc10_.height + §]!?§));
                                                                                    loop24:
                                                                                    while(!_loc11_)
                                                                                    {
                                                                                       _loc6_ = §§pop();
                                                                                       loop25:
                                                                                       for(; _loc12_ || param1; loop27:
                                                                                       while(_loc12_ || this)
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             _loc8_++;
                                                                                             if(!(_loc11_ && _loc3_))
                                                                                             {
                                                                                                while(false)
                                                                                                {
                                                                                                   §§goto(addr101);
                                                                                                }
                                                                                                continue loop0;
                                                                                                addr99:
                                                                                             }
                                                                                             continue loop27;
                                                                                          }
                                                                                       })
                                                                                       {
                                                                                          if(!_loc11_)
                                                                                          {
                                                                                             if(_loc11_)
                                                                                             {
                                                                                                break loop0;
                                                                                                addr101:
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                addr239:
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc3_);
                                                                                                if(!_loc11_)
                                                                                                {
                                                                                                   if(!(_loc12_ || this))
                                                                                                   {
                                                                                                      continue loop24;
                                                                                                   }
                                                                                                   if(!_loc11_)
                                                                                                   {
                                                                                                      continue loop1;
                                                                                                   }
                                                                                                   §§goto(addr201);
                                                                                                   continue loop24;
                                                                                                }
                                                                                                addr140:
                                                                                                if(_loc11_)
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                if(!_loc11_)
                                                                                                {
                                                                                                   _loc5_ = §§pop();
                                                                                                   continue loop25;
                                                                                                }
                                                                                                continue loop20;
                                                                                             }
                                                                                             continue loop21;
                                                                                          }
                                                                                          loop16:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc2_);
                                                                                             addr201:
                                                                                             addr261:
                                                                                             while(!(_loc11_ && param1))
                                                                                             {
                                                                                                §§push(_loc4_);
                                                                                                while(true)
                                                                                                {
                                                                                                   if(§§pop() <= §§pop())
                                                                                                   {
                                                                                                      continue loop23;
                                                                                                   }
                                                                                                   while(!_loc11_)
                                                                                                   {
                                                                                                      §§push(_loc2_);
                                                                                                      continue loop20;
                                                                                                   }
                                                                                                   §§goto(addr268);
                                                                                                }
                                                                                             }
                                                                                             while(_loc12_)
                                                                                             {
                                                                                                _loc2_ = §§pop();
                                                                                                continue loop16;
                                                                                                §§goto(addr201);
                                                                                             }
                                                                                             continue loop8;
                                                                                          }
                                                                                       }
                                                                                       continue loop22;
                                                                                    }
                                                                                    while(_loc12_ || _loc2_)
                                                                                    {
                                                                                       if(§§pop() + _loc10_.height + §]!?§ < §"!$§)
                                                                                       {
                                                                                          §§push(_loc2_);
                                                                                          break loop20;
                                                                                       }
                                                                                       §§goto(addr239);
                                                                                    }
                                                                                    continue loop3;
                                                                                    addr225:
                                                                                 }
                                                                                 §§goto(addr210);
                                                                              }
                                                                              §§goto(addr187);
                                                                           }
                                                                           §§goto(addr90);
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                      continue loop4;
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
                                 §§goto(addr225);
                              }
                           }
                        }
                        §§goto(addr99);
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
      
      private function §package§(param1:Array, param2:BitmapData) : Array
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         var _loc8_:§=!=§ = null;
         var _loc9_:BitmapData = null;
         var _loc10_:§^!@§ = null;
         var _loc11_:* = 0;
         var _loc12_:* = 0;
         var _loc13_:§,'§ = null;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:Array = [];
         var _loc7_:Number = NaN;
         loop0:
         while(true)
         {
            §§push(param1);
            loop1:
            while(§§pop().length > 0)
            {
               §§push(param1);
               if(!(_loc14_ || this))
               {
                  continue;
               }
               _loc8_ = §§pop()[0];
               if(_loc14_ || _loc3_)
               {
                  §§push(!isNaN(_loc7_));
                  if(_loc14_)
                  {
                     if(§§pop())
                     {
                        if(_loc14_ || param1)
                        {
                           §§pop();
                           if(_loc14_ || param1)
                           {
                              §§push(_loc7_);
                              if(_loc14_)
                              {
                                 §§push(§§pop() == _loc8_.scale);
                                 if(!_loc15_)
                                 {
                                    addr97:
                                    addr96:
                                    if(!§§pop())
                                    {
                                       if(_loc14_)
                                       {
                                          addr100:
                                          break;
                                       }
                                    }
                                    else
                                    {
                                       §§push(_loc8_.scale);
                                       if(!(_loc15_ && param1))
                                       {
                                          addr111:
                                          _loc7_ = §§pop();
                                       }
                                       §§goto(addr111);
                                    }
                                    _loc9_ = _loc8_.bitmapData;
                                    if(!_loc15_)
                                    {
                                       §§push(_loc3_);
                                       loop2:
                                       while(true)
                                       {
                                          if(§§pop() + _loc9_.width + §]!?§ > param2.width)
                                          {
                                             loop3:
                                             while(true)
                                             {
                                                §§push(0);
                                                addr230:
                                                while(true)
                                                {
                                                   _loc3_ = §§pop();
                                                   loop5:
                                                   while(true)
                                                   {
                                                      §§push(_loc4_);
                                                      loop6:
                                                      while(true)
                                                      {
                                                         §§push(int(§§pop() + _loc5_));
                                                         loop7:
                                                         while(!_loc15_)
                                                         {
                                                            _loc4_ = §§pop();
                                                            loop8:
                                                            for(; _loc14_; if(!(_loc15_ && param1))
                                                            {
                                                               if(_loc14_ || this)
                                                               {
                                                                  addr171:
                                                                  break loop1;
                                                               }
                                                               continue loop5;
                                                            })
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(0);
                                                                  addr198:
                                                                  while(!(_loc15_ && param1))
                                                                  {
                                                                     if(_loc15_)
                                                                     {
                                                                        continue loop6;
                                                                     }
                                                                     _loc5_ = §§pop();
                                                                     while(true)
                                                                     {
                                                                        addr150:
                                                                        if(!(_loc15_ && param2))
                                                                        {
                                                                           continue loop8;
                                                                        }
                                                                     }
                                                                  }
                                                                  continue loop7;
                                                                  addr186:
                                                               }
                                                            }
                                                            continue loop3;
                                                         }
                                                         continue loop2;
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          while(true)
                                          {
                                             §§push(_loc4_);
                                             if(!(_loc15_ && _loc3_))
                                             {
                                                if(!(_loc15_ && param1))
                                                {
                                                   if(§§pop() + _loc9_.height + §]!?§ > param2.height)
                                                   {
                                                      if(!(_loc15_ && _loc3_))
                                                      {
                                                         §§goto(addr150);
                                                      }
                                                      else
                                                      {
                                                         addr184:
                                                         if(false)
                                                         {
                                                            §§goto(addr186);
                                                         }
                                                         else
                                                         {
                                                            (_loc10_ = new §^!@§()).offset = new Point(_loc3_,_loc4_);
                                                            if(!_loc15_)
                                                            {
                                                               _loc10_.§'!?§ = _loc8_;
                                                               _loc6_.push(_loc10_);
                                                               addr266:
                                                               addr299:
                                                               addr303:
                                                               §§push(_loc8_.§1!]§);
                                                               if(_loc14_ || this)
                                                               {
                                                                  §§push(int(§§pop()));
                                                                  if(!(_loc15_ && this))
                                                                  {
                                                                     _loc11_ = §§pop();
                                                                     if(_loc14_)
                                                                     {
                                                                        if(_loc14_ || this)
                                                                        {
                                                                           §§push(0);
                                                                           if(_loc14_ || _loc3_)
                                                                           {
                                                                              _loc12_ = §§pop();
                                                                              if(!(_loc14_ || param1))
                                                                              {
                                                                                 continue loop0;
                                                                              }
                                                                              if(_loc14_)
                                                                              {
                                                                                 if(false)
                                                                                 {
                                                                                    §§goto(addr266);
                                                                                 }
                                                                                 addr324:
                                                                                 §§push(_loc12_);
                                                                                 if(_loc14_ || _loc3_)
                                                                                 {
                                                                                    addr332:
                                                                                    if(§§pop() < _loc11_)
                                                                                    {
                                                                                       (_loc13_ = _loc8_.§ s§(_loc12_)).§?![§ = null;
                                                                                       if(!_loc15_)
                                                                                       {
                                                                                          _loc13_.§;!a§.offset(_loc3_,_loc4_);
                                                                                          if(_loc14_)
                                                                                          {
                                                                                             addr323:
                                                                                             _loc12_++;
                                                                                          }
                                                                                          §§goto(addr324);
                                                                                       }
                                                                                       §§goto(addr323);
                                                                                    }
                                                                                    if(_loc14_)
                                                                                    {
                                                                                       §§push(_loc3_);
                                                                                       if(_loc14_ || param1)
                                                                                       {
                                                                                          addr344:
                                                                                          §§push(int(§§pop() + (_loc9_.width + §]!?§)));
                                                                                          if(_loc15_ && param1)
                                                                                          {
                                                                                          }
                                                                                          addr393:
                                                                                          _loc5_ = §§pop();
                                                                                          if(!_loc15_)
                                                                                          {
                                                                                             addr396:
                                                                                             param1.splice(0,1);
                                                                                          }
                                                                                          continue loop0;
                                                                                       }
                                                                                       _loc3_ = §§pop();
                                                                                       if(_loc14_ || param2)
                                                                                       {
                                                                                          addr365:
                                                                                          if(_loc9_.height + §]!?§ > _loc5_)
                                                                                          {
                                                                                             if(_loc14_ || _loc3_)
                                                                                             {
                                                                                                addr388:
                                                                                                §§goto(addr393);
                                                                                                §§push(int(_loc9_.height + §]!?§));
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr396);
                                                                                 }
                                                                                 §§goto(addr344);
                                                                              }
                                                                              §§goto(addr299);
                                                                           }
                                                                           §§goto(addr344);
                                                                        }
                                                                        §§goto(addr303);
                                                                     }
                                                                     §§goto(addr365);
                                                                  }
                                                                  §§goto(addr332);
                                                               }
                                                               §§goto(addr344);
                                                            }
                                                            §§goto(addr388);
                                                         }
                                                      }
                                                      §§goto(addr197);
                                                   }
                                                   else
                                                   {
                                                      param2.copyPixels(_loc9_,_loc9_.rect,new Point(_loc3_,_loc4_),null,null,true);
                                                   }
                                                   §§goto(addr184);
                                                }
                                                §§goto(addr230);
                                             }
                                             §§goto(addr198);
                                             §§goto(addr208);
                                          }
                                       }
                                    }
                                    §§goto(addr171);
                                 }
                                 §§goto(addr97);
                              }
                              §§goto(addr111);
                           }
                           §§goto(addr100);
                        }
                        §§goto(addr96);
                     }
                  }
                  §§goto(addr97);
               }
               §§goto(addr100);
            }
            return _loc6_;
         }
      }
      
      public function §]!b§() : Boolean
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         var _loc1_:§=!=§ = null;
         var _loc3_:Rectangle = null;
         var _loc4_:BitmapData = null;
         var _loc5_:Array = null;
         var _loc6_:Texture = null;
         var _loc7_:* = 0;
         var _loc8_:§^!@§ = null;
         var _loc9_:* = 0;
         var _loc10_:* = 0;
         var _loc11_:§,'§ = null;
         if(_loc14_ || _loc1_)
         {
            §§push(§^b§.§@@§());
            if(_loc14_)
            {
               if(!§§pop())
               {
                  if(!(_loc15_ && _loc3_))
                  {
                     addr62:
                     §§push(false);
                     if(_loc14_ || _loc1_)
                     {
                        §§goto(addr70);
                     }
                     else
                     {
                        addr82:
                        if(§§pop())
                        {
                           if(!(_loc15_ && _loc1_))
                           {
                              §§goto(addr91);
                           }
                        }
                        var _loc2_:Array = [];
                        var _loc12_:int = 0;
                        var _loc13_:* = this.§7#§;
                        loop0:
                        while(true)
                        {
                           §§push(§§hasnext(_loc13_,_loc12_));
                           if(_loc14_ || _loc2_)
                           {
                              if(§§pop())
                              {
                                 _loc1_ = §§nextvalue(_loc12_,_loc13_);
                                 if(_loc14_ || _loc2_)
                                 {
                                    if(_loc1_.§1!]§ <= 0)
                                    {
                                       continue;
                                    }
                                    if(_loc15_)
                                    {
                                       continue;
                                    }
                                 }
                                 _loc2_.push(_loc1_);
                                 continue;
                              }
                              if(_loc14_)
                              {
                                 if(_loc14_ || this)
                                 {
                                    if(!_loc15_)
                                    {
                                       while(_loc2_.length > 0)
                                       {
                                          _loc3_ = this.§&!1§(_loc2_);
                                          if(_loc14_ || _loc2_)
                                          {
                                             if(_loc3_.width * _loc3_.height == 0)
                                             {
                                                if(_loc14_)
                                                {
                                                   throw new Error("Found too large sprite sheet image!");
                                                }
                                             }
                                          }
                                          _loc4_ = new BitmapData(_loc3_.width,_loc3_.height,true,0);
                                          if((_loc5_ = this.§package§(_loc2_,_loc4_)).length == 0)
                                          {
                                             if(!_loc15_)
                                             {
                                                throw new Error("Found too large sprite sheet image!");
                                             }
                                          }
                                          _loc6_ = this.getTextureFromBitmapData(_loc4_);
                                          if(!(_loc15_ && this))
                                          {
                                             §§push(0);
                                             if(!(_loc15_ && this))
                                             {
                                                _loc7_ = §§pop();
                                                if(!_loc14_)
                                                {
                                                   continue;
                                                }
                                                while(true)
                                                {
                                                   §§push(_loc7_);
                                                }
                                                addr321:
                                             }
                                             for(; §§pop() < _loc5_.length; §§goto(addr321))
                                             {
                                                _loc1_ = (_loc8_ = _loc5_[_loc7_]).§'!?§;
                                                if(_loc14_)
                                                {
                                                   §§push(_loc1_.§1!]§);
                                                   if(_loc14_ || _loc1_)
                                                   {
                                                      §§push(int(§§pop()));
                                                      if(_loc14_ || _loc2_)
                                                      {
                                                         addr262:
                                                         _loc9_ = §§pop();
                                                         if(_loc15_ && _loc3_)
                                                         {
                                                            continue;
                                                         }
                                                         addr270:
                                                         §§push(0);
                                                         if(_loc14_ || _loc3_)
                                                         {
                                                            addr278:
                                                            _loc10_ = §§pop();
                                                            if(!(_loc15_ && _loc2_))
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(_loc10_);
                                                               }
                                                               addr313:
                                                               if(_loc14_ || this)
                                                               {
                                                                  _loc7_++;
                                                               }
                                                               addr310:
                                                            }
                                                            continue;
                                                         }
                                                         while(true)
                                                         {
                                                            if(§§pop() < _loc9_)
                                                            {
                                                               _loc11_ = _loc1_.§ s§(_loc10_);
                                                               if(!(_loc15_ && _loc2_))
                                                               {
                                                                  this.§7!h§(_loc11_,_loc6_,_loc4_,_loc1_.scale);
                                                                  if(_loc14_)
                                                                  {
                                                                     _loc10_++;
                                                                  }
                                                               }
                                                               continue;
                                                            }
                                                            §§goto(addr313);
                                                         }
                                                      }
                                                      §§goto(addr278);
                                                   }
                                                   §§goto(addr262);
                                                }
                                                §§goto(addr270);
                                             }
                                          }
                                       }
                                       if(!_loc15_)
                                       {
                                          _loc12_ = 0;
                                          if(_loc14_ || _loc2_)
                                          {
                                             addr340:
                                             _loc13_ = this.§7#§;
                                             while(true)
                                             {
                                                §§push(§§hasnext(_loc13_,_loc12_));
                                                break loop0;
                                             }
                                             addr365:
                                          }
                                          if(!(_loc15_ && _loc2_))
                                          {
                                             this.§7#§ = new Vector.<§=!=§>();
                                             addr376:
                                          }
                                          do
                                          {
                                             this.§4!Y§ = true;
                                          }
                                          while(!_loc14_);
                                          
                                       }
                                       return true;
                                    }
                                    §§goto(addr376);
                                 }
                              }
                              §§goto(addr340);
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
                           §§goto(addr340);
                        }
                     }
                  }
                  else
                  {
                     addr73:
                     §§push(this.§4!Y§);
                     if(_loc14_ || this)
                     {
                        §§goto(addr82);
                     }
                  }
                  addr91:
                  return true;
               }
               §§goto(addr73);
            }
            addr70:
            return §§pop();
         }
         §§goto(addr62);
      }
      
      private function §7!h§(param1:§,'§, param2:Texture, param3:BitmapData, param4:Number) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc6_:Rectangle = null;
         var _loc7_:§&<§ = null;
         var _loc5_:§+W§;
         if(!(_loc5_ = this.§"7§[param1.mName]))
         {
            _loc6_ = param1.§;!a§.clone();
            _loc7_ = new §&<§(param2,_loc6_,false);
            _loc5_ = new §+W§(_loc7_,param3,_loc6_,param1.§&5§,param1.§1!O§,param4);
            if(_loc9_)
            {
               this.§"7§[param1.mName] = _loc5_;
            }
         }
      }
      
      public function §2f§() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(§§newactivation());
         if(_loc5_ || _loc2_)
         {
            §§push(null);
            if(!_loc6_)
            {
               §§pop().§§slot[1] = §§pop();
               if(_loc5_ || _loc2_)
               {
                  addr42:
                  var texture:Texture = null;
                  if(!(_loc6_ && _loc2_))
                  {
                     if(!§^b§.§16§)
                     {
                        addr64:
                        var _loc2_:int = 0;
                        var _loc3_:* = this.§3!U§;
                        while(§§hasnext(_loc3_,_loc2_))
                        {
                           §§push(§§newactivation());
                           if(!_loc6_)
                           {
                              §§pop().§§slot[1] = §§nextname(_loc2_,_loc3_);
                              if(_loc5_ || _loc3_)
                              {
                                 try
                                 {
                                    §§push(§§newactivation());
                                    if(!_loc6_)
                                    {
                                       §§pop().§§slot[2] = this.§3!U§[bd];
                                       if(!_loc6_)
                                       {
                                          addr110:
                                          texture.requestBaseTextureUpdate(bd as BitmapData);
                                       }
                                    }
                                    §§goto(addr110);
                                 }
                                 catch(e:Error)
                                 {
                                 }
                              }
                              continue;
                           }
                           §§goto(addr110);
                        }
                     }
                     return;
                  }
               }
               §§goto(addr64);
            }
         }
         §§goto(addr42);
      }
      
      public function §6u§(param1:String) : §+W§
      {
         return this.§"7§[param1];
      }
      
      public function getTextureFromBitmapData(param1:BitmapData, param2:Boolean = true) : Texture
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Texture = this.§3!U§[param1];
         if(_loc5_ || this)
         {
            if(_loc3_)
            {
               if(!_loc4_)
               {
                  return _loc3_;
               }
            }
         }
         _loc3_ = §^b§.§;!;§(param1,param2);
         if(!_loc4_)
         {
            this.§3!U§[param1] = _loc3_;
         }
         do
         {
            this.§@c§(_loc3_,param1,true);
         }
         while(_loc4_ && param1);
         
         return _loc3_;
      }
      
      public function §@c§(param1:Texture, param2:BitmapData, param3:Boolean) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         var _loc4_:* = 1;
         if(_loc7_)
         {
            if(!param3)
            {
               while(true)
               {
                  §§push(-1);
                  addr232:
                  while(true)
                  {
                     _loc4_ = §§pop();
                     addr233:
                     while(true)
                     {
                     }
                  }
               }
               addr231:
            }
            loop3:
            while(true)
            {
               if(param2)
               {
                  while(true)
                  {
                     if(!_loc8_)
                     {
                        while(true)
                        {
                           §§push(this);
                           §§push(this.§=4§);
                           §§push(_loc4_ * param2.width);
                           if(_loc7_)
                           {
                              §§push(§§pop() * param2.height);
                              if(_loc7_ || param3)
                              {
                                 §§push(§§pop() * 4);
                              }
                           }
                           §§pop().§=4§ = §§pop() + §§pop();
                           addr228:
                           while(true)
                           {
                           }
                        }
                        addr205:
                     }
                     else
                     {
                        §§goto(addr231);
                     }
                  }
                  §§goto(addr232);
                  addr193:
               }
               loop5:
               for(; param1; §§goto(addr228))
               {
                  if(_loc7_ || param3)
                  {
                     §§push(param1.width);
                     while(true)
                     {
                        §§push(int(§§pop()));
                        addr181:
                        while(true)
                        {
                           _loc5_ = §§pop();
                        }
                        addr189:
                        §§push(param1.height);
                        if(!_loc7_)
                        {
                           continue;
                        }
                        §§push(int(§§pop()));
                        if(_loc7_)
                        {
                           if(_loc7_)
                           {
                              _loc6_ = §§pop();
                              if(_loc8_)
                              {
                                 while(!(_loc8_ && param2))
                                 {
                                    §§goto(addr189);
                                 }
                                 continue loop5;
                                 addr182:
                              }
                              if(_loc7_)
                              {
                                 if(!_loc7_)
                                 {
                                    continue loop3;
                                 }
                                 addr71:
                                 §§push(_loc5_);
                                 if(!(_loc8_ && param3))
                                 {
                                    if(!_loc8_)
                                    {
                                       addr84:
                                       §§push(§§pop() >= 1);
                                       if(§§pop() >= 1)
                                       {
                                          addr86:
                                          §§pop();
                                          addr87:
                                          if(!_loc8_)
                                          {
                                             if(!(_loc8_ && this))
                                             {
                                                §§push(_loc6_);
                                                if(_loc7_ || param1)
                                                {
                                                   if(_loc7_)
                                                   {
                                                      §§push(1);
                                                      if(_loc7_)
                                                      {
                                                         if(_loc7_ || this)
                                                         {
                                                            if(_loc7_ || param2)
                                                            {
                                                               §§push(§§pop() >= §§pop());
                                                               if(!_loc8_)
                                                               {
                                                                  if(_loc7_)
                                                                  {
                                                                     addr58:
                                                                     if(!§§pop())
                                                                     {
                                                                        if(_loc8_ && param1)
                                                                        {
                                                                           §§goto(addr87);
                                                                        }
                                                                        break loop5;
                                                                     }
                                                                     §§push(this);
                                                                     §§push(this.§3!p§);
                                                                     §§push(_loc4_ * _loc5_);
                                                                     if(_loc7_)
                                                                     {
                                                                        §§push(_loc6_);
                                                                        if(_loc7_)
                                                                        {
                                                                           §§push(§§pop() * §§pop());
                                                                           if(_loc7_)
                                                                           {
                                                                              addr146:
                                                                              §§push(§§pop() * 4);
                                                                           }
                                                                           §§pop().§3!p§ = §§pop() + §§pop();
                                                                           addr126:
                                                                           _loc5_ >>= 1;
                                                                           addr127:
                                                                           §§push(_loc6_);
                                                                           if(_loc7_ || this)
                                                                           {
                                                                              addr118:
                                                                              _loc6_ = §§pop() >> 1;
                                                                              if(_loc7_)
                                                                              {
                                                                                 §§goto(addr71);
                                                                              }
                                                                              §§goto(addr127);
                                                                              addr117:
                                                                           }
                                                                           addr124:
                                                                           §§goto(addr124);
                                                                           addr125:
                                                                           addr149:
                                                                        }
                                                                     }
                                                                     §§goto(addr146);
                                                                  }
                                                                  §§goto(addr84);
                                                               }
                                                               §§goto(addr86);
                                                            }
                                                            §§goto(addr125);
                                                         }
                                                         §§goto(addr117);
                                                      }
                                                      §§goto(addr84);
                                                   }
                                                   §§goto(addr118);
                                                }
                                                §§goto(addr71);
                                             }
                                             §§goto(addr149);
                                          }
                                          §§goto(addr118);
                                       }
                                       §§goto(addr58);
                                    }
                                 }
                                 §§goto(addr126);
                              }
                              else
                              {
                                 §§goto(addr193);
                              }
                           }
                           §§goto(addr232);
                        }
                        §§goto(addr181);
                     }
                  }
                  §§goto(addr182);
               }
               return;
            }
         }
         §§goto(addr205);
      }
      
      public function §0y§() : Texture
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §§push(this.§5i§);
            if(!(_loc2_ && _loc1_))
            {
               if(!§§pop())
               {
                  if(_loc1_)
                  {
                     addr45:
                     this.§5i§ = this.getTextureFromBitmapData(new BitmapData(40,40,false,16711935));
                  }
               }
               return this.§5i§;
            }
         }
         §§goto(addr45);
      }
      
      public function unregisterBitmapDataTexture(param1:Texture) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:* = null;
         var _loc3_:BitmapData = null;
         var _loc4_:int = 0;
         var _loc5_:* = this.§3!U§;
         while(true)
         {
            for(_loc2_ in _loc5_)
            {
               if(_loc7_)
               {
                  break;
               }
               if(this.§3!U§[_loc2_] == param1)
               {
                  break;
               }
            }
            return;
         }
         _loc3_ = _loc2_ as BitmapData;
         if(_loc6_)
         {
            this.§@c§(param1,_loc3_,false);
            while(true)
            {
               if(_loc3_)
               {
                  do
                  {
                     _loc3_.dispose();
                  }
                  while(_loc6_);
                  
                  continue;
                  addr107:
               }
               while(true)
               {
                  delete this.§3!U§[_loc2_];
                  if(!_loc7_)
                  {
                     break;
                  }
                  §§goto(addr107);
               }
               param1.dispose();
            }
         }
      }
      
      public function §=o§(param1:String) : BitmapData
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§+W§ = this.§6u§(param1);
         if(!(_loc4_ && _loc3_))
         {
            if(_loc2_ == null)
            {
               if(_loc3_ || param1)
               {
                  §§push(this.§6u§(param1 + "_1"));
                  if(_loc3_ || _loc3_)
                  {
                     _loc2_ = §§pop();
                     addr72:
                     if(_loc2_ == null)
                     {
                        if(!_loc4_)
                        {
                           addr82:
                           _loc2_ = this.§6u§(param1 + "_01");
                           addr84:
                           if(_loc2_ == null)
                           {
                              if(_loc4_ && _loc3_)
                              {
                                 §§goto(addr96);
                              }
                           }
                           addr96:
                           return _loc2_.bitmapData;
                           addr77:
                        }
                        return null;
                     }
                     §§goto(addr84);
                  }
                  §§goto(addr82);
               }
               §§goto(addr77);
            }
            §§goto(addr72);
         }
         §§goto(addr96);
      }
   }
}
