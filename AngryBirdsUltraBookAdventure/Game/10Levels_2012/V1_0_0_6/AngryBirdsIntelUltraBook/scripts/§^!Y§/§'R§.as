package §^!Y§
{
   import §!!K§.§else§;
   import §4>§.§ !C§;
   import §4>§.Texture;
   import §]o§.§%!p§;
   import §]o§.§^!9§;
   import flash.display.BitmapData;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class §'R§ extends EventDispatcher
   {
      
      private static const §?H§:int = 2;
      
      private static const §%!0§:int = 2048;
      
      private static var §'!s§:§'R§;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §?H§ = 2;
         }
         do
         {
            §%!0§ = 2048;
         }
         while(!_loc2_);
         
      }
      
      private var §`K§:Dictionary;
      
      private var §<!U§:Vector.<§%!p§>;
      
      private var §;F§:Dictionary;
      
      private var §&$§:Boolean;
      
      private var §@H§:String;
      
      private var §%!B§:Texture;
      
      private var §@!w§:int;
      
      private var § !0§:int;
      
      public function §'R§(param1:String = null)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super();
            while(true)
            {
               this.§<!U§ = new Vector.<§%!p§>();
            }
            addr88:
         }
         while(true)
         {
            this.§`K§ = new Dictionary();
            for(; !_loc3_; while(_loc2_ || _loc3_)
            {
               this.§@H§ = param1;
               if(_loc2_ || _loc3_)
               {
                  return;
               }
            })
            {
               if(_loc2_)
               {
                  this.§;F§ = new Dictionary();
                  continue;
               }
               §§goto(addr88);
            }
         }
      }
      
      public static function get §7!j§() : §'R§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(§'!s§);
            if(_loc1_ || §'R§)
            {
               if(!§§pop())
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     §'!s§ = new §'R§();
                     addr48:
                     §§push(§'!s§);
                  }
               }
               §§goto(addr48);
            }
            return §§pop();
         }
         §§goto(addr48);
      }
      
      public function get §7<§() : int
      {
         return this.§@!w§;
      }
      
      public function get §#W§() : int
      {
         return this.§ !0§;
      }
      
      public function get id() : String
      {
         return this.§@H§;
      }
      
      public function dispose() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc1_:§1C§ = null;
         var _loc2_:§%!p§ = null;
         if(_loc5_ || _loc3_)
         {
            if(this.§`K§)
            {
               addr32:
               var _loc3_:int = 0;
               var _loc4_:* = this.§`K§;
               loop14:
               while(true)
               {
                  §§push(§§hasnext(_loc4_,_loc3_));
                  if(!_loc6_)
                  {
                     if(§§pop())
                     {
                        _loc1_ = §§nextvalue(_loc3_,_loc4_);
                        if(!(_loc6_ && _loc2_))
                        {
                           this.unregisterBitmapDataTexture(_loc1_.texture.parent);
                           if(_loc5_ || _loc2_)
                           {
                              _loc1_.dispose();
                           }
                        }
                        continue;
                     }
                     if(!_loc6_)
                     {
                        if(!(_loc6_ && _loc1_))
                        {
                           if(_loc5_ || _loc1_)
                           {
                              this.§`K§ = null;
                              if(_loc5_ || _loc1_)
                              {
                                 addr98:
                                 if(this.§<!U§)
                                 {
                                    if(_loc5_)
                                    {
                                       _loc3_ = 0;
                                       if(!(_loc6_ && _loc1_))
                                       {
                                          addr122:
                                          _loc4_ = this.§<!U§;
                                          while(true)
                                          {
                                             §§push(§§hasnext(_loc4_,_loc3_));
                                             break loop14;
                                          }
                                          addr137:
                                       }
                                       if(_loc5_)
                                       {
                                          this.§<!U§ = null;
                                          loop1:
                                          while(true)
                                          {
                                             addr235:
                                             while(true)
                                             {
                                                if(this.§;F§)
                                                {
                                                   while(true)
                                                   {
                                                      this.§;F§ = null;
                                                      addr241:
                                                      while(true)
                                                      {
                                                      }
                                                   }
                                                   addr238:
                                                }
                                                addr217:
                                                loop8:
                                                while(true)
                                                {
                                                   §§push(this.§%!B§);
                                                   if(_loc5_)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         while(_loc6_ && this)
                                                         {
                                                            §§goto(addr238);
                                                         }
                                                         §§push(this.§%!B§);
                                                         loop9:
                                                         while(true)
                                                         {
                                                            §§pop().dispose();
                                                            addr233:
                                                            addr216:
                                                            loop6:
                                                            while(true)
                                                            {
                                                               this.§%!B§ = null;
                                                               addr199:
                                                               while(true)
                                                               {
                                                                  if(_loc5_ || this)
                                                                  {
                                                                     break loop6;
                                                                  }
                                                                  §§goto(addr223);
                                                               }
                                                               continue loop9;
                                                            }
                                                            while(true)
                                                            {
                                                               break loop8;
                                                               §§goto(addr199);
                                                            }
                                                         }
                                                         addr223:
                                                         addr232:
                                                      }
                                                      break;
                                                   }
                                                   §§goto(addr232);
                                                }
                                                while(true)
                                                {
                                                   this.§<!U§ = new Vector.<§%!p§>();
                                                   while(_loc5_ || _loc2_)
                                                   {
                                                      if(_loc5_)
                                                      {
                                                         this.§`K§ = new Dictionary();
                                                         while(true)
                                                         {
                                                            if(_loc5_)
                                                            {
                                                               continue;
                                                            }
                                                            continue loop1;
                                                         }
                                                         §§goto(addr217);
                                                      }
                                                      §§goto(addr241);
                                                   }
                                                   §§goto(addr199);
                                                }
                                                return;
                                             }
                                          }
                                       }
                                       §§goto(addr216);
                                    }
                                    §§goto(addr241);
                                 }
                                 §§goto(addr235);
                              }
                              §§goto(addr216);
                           }
                           §§goto(addr98);
                        }
                     }
                     §§goto(addr122);
                  }
                  break;
               }
               while(true)
               {
                  if(§§pop())
                  {
                     _loc2_ = §§nextvalue(_loc3_,_loc4_);
                     if(_loc5_)
                     {
                        _loc2_.dispose();
                     }
                     continue;
                  }
                  §§goto(addr122);
               }
            }
            §§goto(addr98);
         }
         §§goto(addr32);
      }
      
      public function §8!k§(param1:§%!p§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(!this.§&$§)
            {
               loop0:
               while(this.§<!U§.indexOf(param1) < 0)
               {
                  do
                  {
                     this.§<!U§.push(param1);
                     if(_loc3_ || param1)
                     {
                        if(_loc3_ || param1)
                        {
                           return;
                        }
                        break loop0;
                     }
                  }
                  while(!_loc2_);
                  
                  while(true)
                  {
                     continue loop0;
                  }
               }
               if(_loc3_)
               {
                  return;
               }
            }
            return;
         }
         §§goto(addr81);
      }
      
      private function §9I§(param1:Array) : Rectangle
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc9_:§%!p§ = null;
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
            if(_loc11_)
            {
               if(_loc8_ == 0)
               {
                  if(!(_loc12_ && _loc3_))
                  {
                     §§push(_loc9_.scale);
                     if(_loc11_)
                     {
                        §§push(Number(§§pop()));
                        if(!_loc12_)
                        {
                           _loc7_ = §§pop();
                           if(_loc12_)
                           {
                              addr71:
                              break;
                           }
                        }
                        else
                        {
                           addr69:
                           if(§§pop() != _loc7_)
                           {
                              §§goto(addr71);
                           }
                        }
                        _loc10_ = _loc9_.bitmapData;
                        if(_loc11_)
                        {
                           §§push(_loc2_);
                           if(_loc11_ || _loc2_)
                           {
                              if(§§pop() + _loc10_.width + §?H§ >= §%!0§)
                              {
                                 while(true)
                                 {
                                    §§push(0);
                                    addr300:
                                    while(true)
                                    {
                                       _loc2_ = §§pop();
                                       addr301:
                                       while(true)
                                       {
                                          §§push(_loc3_);
                                          addr269:
                                          while(true)
                                          {
                                             §§push(_loc6_);
                                             addr270:
                                             while(true)
                                             {
                                                §§push(§§pop() + §§pop());
                                                addr271:
                                                while(true)
                                                {
                                                   §§push(int(§§pop()));
                                                   addr272:
                                                   while(true)
                                                   {
                                                      _loc3_ = §§pop();
                                                      addr273:
                                                      while(true)
                                                      {
                                                         §§push(0);
                                                         addr265:
                                                         while(true)
                                                         {
                                                            _loc6_ = §§pop();
                                                            addr266:
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
                                 addr299:
                              }
                              loop2:
                              while(true)
                              {
                                 §§push(_loc3_);
                                 loop3:
                                 while(_loc11_ || _loc3_)
                                 {
                                    if(§§pop() + _loc10_.height + §?H§ < §%!0§)
                                    {
                                       §§push(_loc2_);
                                       loop4:
                                       for(; !_loc12_; while(_loc11_ || _loc3_)
                                       {
                                          §§goto(addr198);
                                          §§push(_loc4_);
                                          §§goto(addr121);
                                       })
                                       {
                                          §§push(int(§§pop() + (_loc10_.width + §?H§)));
                                          while(true)
                                          {
                                             _loc2_ = §§pop();
                                             addr262:
                                             while(true)
                                             {
                                                addr188:
                                                §§push(_loc2_);
                                                continue loop4;
                                             }
                                             addr102:
                                             if(!(_loc11_ || param1))
                                             {
                                                continue;
                                             }
                                             §§push(_loc6_);
                                             if(_loc11_)
                                             {
                                                §§push(§§pop() + §§pop());
                                                if(_loc11_ || param1)
                                                {
                                                   addr121:
                                                   §§push(int(§§pop()));
                                                   if(_loc12_ && param1)
                                                   {
                                                      continue loop4;
                                                   }
                                                   if(!(_loc11_ || _loc3_))
                                                   {
                                                      continue loop3;
                                                   }
                                                   _loc5_ = §§pop();
                                                   loop14:
                                                   while(true)
                                                   {
                                                      if(_loc11_ || param1)
                                                      {
                                                         if(_loc12_ && param1)
                                                         {
                                                            addr249:
                                                            if(!_loc12_)
                                                            {
                                                               break loop0;
                                                            }
                                                            break;
                                                         }
                                                         if(_loc11_)
                                                         {
                                                            loop15:
                                                            while(true)
                                                            {
                                                               _loc8_++;
                                                               if(!_loc11_)
                                                               {
                                                                  continue loop14;
                                                               }
                                                               if(_loc11_)
                                                               {
                                                                  addr85:
                                                                  if(_loc11_)
                                                                  {
                                                                     if(true)
                                                                     {
                                                                        break;
                                                                     }
                                                                     loop13:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc3_);
                                                                        if(!_loc12_)
                                                                        {
                                                                           addr93:
                                                                           if(!(_loc12_ && _loc3_))
                                                                           {
                                                                              if(!_loc12_)
                                                                              {
                                                                                 §§goto(addr102);
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 _loc4_ = §§pop();
                                                                                 break loop13;
                                                                              }
                                                                              addr229:
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              _loc6_ = §§pop();
                                                                              addr178:
                                                                              loop12:
                                                                              while(true)
                                                                              {
                                                                                 if(!_loc12_)
                                                                                 {
                                                                                    if(!(_loc12_ && _loc2_))
                                                                                    {
                                                                                       continue loop13;
                                                                                    }
                                                                                    §§goto(addr301);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr206:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc2_);
                                                                                       if(!(_loc12_ && _loc2_))
                                                                                       {
                                                                                          if(!(_loc12_ && this))
                                                                                          {
                                                                                             if(_loc11_ || this)
                                                                                             {
                                                                                                §§push(int(§§pop()));
                                                                                                break loop12;
                                                                                             }
                                                                                             §§goto(addr272);
                                                                                          }
                                                                                          §§goto(addr265);
                                                                                       }
                                                                                       break loop12;
                                                                                    }
                                                                                    addr206:
                                                                                 }
                                                                              }
                                                                              §§goto(addr229);
                                                                              §§goto(addr93);
                                                                           }
                                                                           addr177:
                                                                        }
                                                                        §§goto(addr121);
                                                                     }
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     if(_loc11_)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           if(_loc10_.height + §?H§ > _loc6_)
                                                                           {
                                                                              while(!_loc12_)
                                                                              {
                                                                                 §§goto(addr177);
                                                                                 §§push(int(_loc10_.height + §?H§));
                                                                              }
                                                                              continue loop2;
                                                                              addr170:
                                                                           }
                                                                           continue loop15;
                                                                        }
                                                                        §§goto(addr262);
                                                                        addr163:
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr262);
                                                                     }
                                                                     §§goto(addr188);
                                                                  }
                                                               }
                                                               §§goto(addr170);
                                                            }
                                                            continue loop0;
                                                         }
                                                         §§goto(addr299);
                                                      }
                                                      §§goto(addr178);
                                                   }
                                                   §§goto(addr273);
                                                }
                                                §§goto(addr271);
                                             }
                                             while(!(_loc12_ && param1))
                                             {
                                                if(§§pop() > §§pop())
                                                {
                                                   §§goto(addr206);
                                                }
                                                §§goto(addr163);
                                             }
                                             §§goto(addr270);
                                          }
                                       }
                                       §§goto(addr269);
                                    }
                                    §§goto(addr249);
                                 }
                              }
                           }
                           §§goto(addr300);
                        }
                        §§goto(addr206);
                     }
                  }
                  §§goto(addr71);
               }
               else
               {
                  §§push(_loc9_.scale);
               }
               §§goto(addr69);
            }
            §§goto(addr71);
         }
         return new Rectangle(0,0,_loc4_,_loc5_);
      }
      
      private function §%!r§(param1:Array, param2:BitmapData) : Array
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         var _loc8_:§%!p§ = null;
         var _loc9_:BitmapData = null;
         var _loc10_:§"t§ = null;
         var _loc11_:* = 0;
         var _loc12_:* = 0;
         var _loc13_:§^!9§ = null;
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
               if(!(_loc14_ && param2))
               {
                  §§push(!isNaN(_loc7_));
                  if(!_loc14_)
                  {
                     if(§§pop())
                     {
                        if(!(_loc14_ && this))
                        {
                           addr76:
                           §§pop();
                           if(_loc15_)
                           {
                              addr79:
                              §§push(_loc7_);
                              if(_loc15_)
                              {
                                 §§push(§§pop() == _loc8_.scale);
                                 if(!(_loc14_ && param2))
                                 {
                                    addr93:
                                    addr92:
                                    if(!§§pop())
                                    {
                                       if(!(_loc14_ && param2))
                                       {
                                          addr101:
                                          break;
                                       }
                                    }
                                    else
                                    {
                                       §§push(_loc8_.scale);
                                       if(_loc15_)
                                       {
                                          addr106:
                                          §§push(Number(§§pop()));
                                       }
                                       _loc7_ = §§pop();
                                    }
                                    _loc9_ = _loc8_.bitmapData;
                                    if(_loc15_ || param2)
                                    {
                                       §§push(_loc3_);
                                       loop2:
                                       while(true)
                                       {
                                          if(§§pop() + _loc9_.width + §?H§ > param2.width)
                                          {
                                             if(_loc15_ || _loc3_)
                                             {
                                                §§push(0);
                                                while(true)
                                                {
                                                   _loc3_ = §§pop();
                                                   loop5:
                                                   while(_loc15_ || _loc3_)
                                                   {
                                                      §§push(int(§§pop() + _loc5_));
                                                      loop6:
                                                      for(; !_loc14_; while(!(_loc14_ && this))
                                                      {
                                                         continue loop5;
                                                      })
                                                      {
                                                         _loc4_ = §§pop();
                                                         while(true)
                                                         {
                                                            addr168:
                                                            while(true)
                                                            {
                                                               continue loop6;
                                                            }
                                                         }
                                                      }
                                                      continue loop2;
                                                      if(!(_loc15_ || param2))
                                                      {
                                                         continue;
                                                      }
                                                      _loc5_ = §§pop();
                                                      loop10:
                                                      for(; !_loc14_; if(!(_loc14_ && this))
                                                      {
                                                         break loop1;
                                                      })
                                                      {
                                                         while(true)
                                                         {
                                                            addr120:
                                                            while(true)
                                                            {
                                                               §§push(_loc4_);
                                                               if(!(_loc14_ && param1))
                                                               {
                                                                  if(§§pop() + _loc9_.height + §?H§ > param2.height)
                                                                  {
                                                                     if(_loc15_ || this)
                                                                     {
                                                                        continue loop10;
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     param2.copyPixels(_loc9_,_loc9_.rect,new Point(_loc3_,_loc4_),null,null,true);
                                                                  }
                                                                  if(!_loc14_)
                                                                  {
                                                                     if(true)
                                                                     {
                                                                        break;
                                                                     }
                                                                     §§goto(addr168);
                                                                  }
                                                                  else
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        continue loop5;
                                                                     }
                                                                     addr232:
                                                                  }
                                                               }
                                                               §§goto(addr170);
                                                            }
                                                            (_loc10_ = new §"t§()).offset = new Point(_loc3_,_loc4_);
                                                            if(!(_loc15_ || _loc3_))
                                                            {
                                                               continue loop0;
                                                            }
                                                            _loc10_.§@h§ = _loc8_;
                                                            if(!_loc14_)
                                                            {
                                                               _loc6_.push(_loc10_);
                                                               if(!(_loc14_ && _loc3_))
                                                               {
                                                                  addr265:
                                                                  §§push(_loc8_.§[C§);
                                                                  if(!(_loc14_ && param2))
                                                                  {
                                                                     §§push(int(§§pop()));
                                                                     if(!(_loc14_ && param1))
                                                                     {
                                                                        _loc11_ = §§pop();
                                                                        if(!_loc14_)
                                                                        {
                                                                           §§push(0);
                                                                           if(_loc15_ || this)
                                                                           {
                                                                              _loc12_ = §§pop();
                                                                              if(_loc15_)
                                                                              {
                                                                                 if(false)
                                                                                 {
                                                                                    §§goto(addr265);
                                                                                 }
                                                                                 addr330:
                                                                                 §§push(_loc12_);
                                                                                 if(_loc15_ || param1)
                                                                                 {
                                                                                    if(§§pop() < _loc11_)
                                                                                    {
                                                                                       (_loc13_ = _loc8_.§[!r§(_loc12_)).§[3§ = null;
                                                                                       if(!_loc14_)
                                                                                       {
                                                                                          _loc13_.§]!1§.offset(_loc3_,_loc4_);
                                                                                          if(_loc15_ || this)
                                                                                          {
                                                                                             addr329:
                                                                                             _loc12_++;
                                                                                          }
                                                                                          §§goto(addr330);
                                                                                       }
                                                                                       §§goto(addr329);
                                                                                    }
                                                                                    if(!(_loc14_ && param2))
                                                                                    {
                                                                                       §§push(_loc3_);
                                                                                       if(!(_loc14_ && param1))
                                                                                       {
                                                                                          addr355:
                                                                                          §§push(int(§§pop() + (_loc9_.width + §?H§)));
                                                                                          if(_loc15_ || this)
                                                                                          {
                                                                                             addr368:
                                                                                             _loc3_ = §§pop();
                                                                                             if(!(_loc15_ || param2))
                                                                                             {
                                                                                                continue loop0;
                                                                                             }
                                                                                             if(_loc9_.height + §?H§ > _loc5_)
                                                                                             {
                                                                                                addr407:
                                                                                                if(!_loc14_)
                                                                                                {
                                                                                                   addr394:
                                                                                                   §§push(int(_loc9_.height + §?H§));
                                                                                                }
                                                                                                param1.splice(0,1);
                                                                                                continue loop0;
                                                                                             }
                                                                                             §§goto(addr407);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr368);
                                                                                    }
                                                                                    §§goto(addr394);
                                                                                 }
                                                                                 _loc5_ = §§pop();
                                                                                 if(_loc14_ && param1)
                                                                                 {
                                                                                    continue loop0;
                                                                                 }
                                                                                 §§goto(addr407);
                                                                              }
                                                                           }
                                                                           §§goto(addr368);
                                                                        }
                                                                        §§goto(addr394);
                                                                     }
                                                                     §§goto(addr368);
                                                                  }
                                                                  §§goto(addr355);
                                                               }
                                                            }
                                                            §§goto(addr407);
                                                         }
                                                      }
                                                      §§goto(addr213);
                                                   }
                                                }
                                             }
                                             §§goto(addr232);
                                          }
                                          §§goto(addr120);
                                       }
                                    }
                                    §§goto(addr187);
                                 }
                                 §§goto(addr93);
                              }
                              §§goto(addr106);
                           }
                           §§goto(addr101);
                        }
                        §§goto(addr92);
                     }
                     §§goto(addr93);
                  }
                  §§goto(addr76);
               }
               §§goto(addr79);
            }
            return _loc6_;
         }
      }
      
      public function §!>§() : Boolean
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         var _loc1_:§%!p§ = null;
         var _loc3_:Rectangle = null;
         var _loc4_:BitmapData = null;
         var _loc5_:Array = null;
         var _loc6_:Texture = null;
         var _loc7_:* = 0;
         var _loc8_:§"t§ = null;
         var _loc9_:* = 0;
         var _loc10_:* = 0;
         var _loc11_:§^!9§ = null;
         if(_loc14_ || _loc1_)
         {
            §§push(§else§.§9!i§());
            if(_loc14_)
            {
               if(!§§pop())
               {
                  if(!_loc15_)
                  {
                     §§push(false);
                     if(!(_loc15_ && this))
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr82:
                     var _loc2_:Array = [];
                     var _loc12_:int = 0;
                     var _loc13_:* = this.§<!U§;
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
                                 if(_loc1_.§[C§ > 0)
                                 {
                                    if(_loc14_ || _loc3_)
                                    {
                                       _loc2_.push(_loc1_);
                                    }
                                 }
                              }
                              continue;
                           }
                           if(_loc14_)
                           {
                              if(_loc14_)
                              {
                                 if(!(_loc15_ && this))
                                 {
                                    while(true)
                                    {
                                       if(_loc2_.length > 0)
                                       {
                                          _loc3_ = this.§9I§(_loc2_);
                                          if(!(_loc14_ || this))
                                          {
                                             break;
                                          }
                                          if(_loc3_.width * _loc3_.height == 0)
                                          {
                                             if(!_loc15_)
                                             {
                                                break;
                                             }
                                          }
                                          _loc4_ = new BitmapData(_loc3_.width,_loc3_.height,true,0);
                                          if((_loc5_ = this.§%!r§(_loc2_,_loc4_)).length == 0)
                                          {
                                             if(!(_loc15_ && _loc3_))
                                             {
                                                throw new Error("Found too large sprite sheet image!");
                                             }
                                          }
                                          _loc6_ = this.getTextureFromBitmapData(_loc4_);
                                          if(_loc14_)
                                          {
                                             §§push(0);
                                             if(_loc14_ || _loc2_)
                                             {
                                                _loc7_ = §§pop();
                                                if(!(_loc14_ || _loc1_))
                                                {
                                                   continue;
                                                }
                                                while(true)
                                                {
                                                   §§push(_loc7_);
                                                }
                                                addr296:
                                             }
                                             for(; §§pop() < _loc5_.length; §§goto(addr296))
                                             {
                                                _loc1_ = (_loc8_ = _loc5_[_loc7_]).§@h§;
                                                if(!(_loc14_ || this))
                                                {
                                                   continue;
                                                }
                                                §§push(_loc1_.§[C§);
                                                if(!_loc15_)
                                                {
                                                   §§push(int(§§pop()));
                                                   if(_loc14_ || _loc1_)
                                                   {
                                                      _loc9_ = §§pop();
                                                      if(_loc14_)
                                                      {
                                                         §§push(0);
                                                         if(!(_loc15_ && _loc2_))
                                                         {
                                                            addr263:
                                                            _loc10_ = §§pop();
                                                            if(!_loc14_)
                                                            {
                                                               continue;
                                                            }
                                                         }
                                                         loop5:
                                                         for(; §§pop() < _loc9_; while(true)
                                                         {
                                                            continue loop5;
                                                         })
                                                         {
                                                            _loc11_ = _loc1_.§[!r§(_loc10_);
                                                            if(_loc14_)
                                                            {
                                                               this.§0C§(_loc11_,_loc6_,_loc4_,_loc1_.scale);
                                                               if(_loc15_ && _loc2_)
                                                               {
                                                                  continue;
                                                               }
                                                            }
                                                            _loc10_++;
                                                         }
                                                         if(!_loc15_)
                                                         {
                                                            _loc7_++;
                                                         }
                                                         continue;
                                                         addr291:
                                                      }
                                                      §§goto(addr290);
                                                   }
                                                   §§goto(addr291);
                                                }
                                                §§goto(addr263);
                                             }
                                          }
                                          continue;
                                       }
                                       if(_loc14_)
                                       {
                                          _loc12_ = 0;
                                          if(_loc14_)
                                          {
                                             addr310:
                                             _loc13_ = this.§<!U§;
                                             while(true)
                                             {
                                                §§push(§§hasnext(_loc13_,_loc12_));
                                                break loop0;
                                             }
                                             addr335:
                                          }
                                          if(_loc15_)
                                          {
                                          }
                                          do
                                          {
                                             this.§&$§ = true;
                                          }
                                          while(_loc15_ && _loc1_);
                                          
                                          return true;
                                          addr365:
                                       }
                                       this.§<!U§ = new Vector.<§%!p§>();
                                    }
                                    throw new Error("Found too large sprite sheet image!");
                                 }
                                 §§goto(addr365);
                              }
                           }
                           §§goto(addr310);
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
                        §§goto(addr310);
                     }
                  }
               }
               else
               {
                  §§push(this.§&$§);
                  if(_loc14_)
                  {
                     addr72:
                     if(§§pop())
                     {
                        if(_loc14_ || _loc3_)
                        {
                           §§push(true);
                        }
                        else
                        {
                           §§goto(addr82);
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
      
      private function §0C§(param1:§^!9§, param2:Texture, param3:BitmapData, param4:Number) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc6_:Rectangle = null;
         var _loc7_:§ !C§ = null;
         var _loc5_:§1C§;
         if(!(_loc5_ = this.§`K§[param1.mName]))
         {
            _loc6_ = param1.§]!1§.clone();
            _loc7_ = new § !C§(param2,_loc6_,false);
            _loc5_ = new §1C§(_loc7_,param3,_loc6_,param1.§`Q§,param1.§-Z§,param4);
            if(!(_loc8_ && this))
            {
               this.§`K§[param1.mName] = _loc5_;
            }
         }
      }
      
      public function § !f§() : void
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
               if(_loc5_ || _loc2_)
               {
                  addr37:
                  var texture:Texture = null;
                  if(!_loc6_)
                  {
                     if(!§else§.§]!-§)
                     {
                        addr44:
                        var _loc2_:int = 0;
                        var _loc3_:* = this.§;F§;
                        while(§§hasnext(_loc3_,_loc2_))
                        {
                           §§push(§§newactivation());
                           if(_loc5_)
                           {
                              §§pop().§§slot[1] = §§nextname(_loc2_,_loc3_);
                              if(_loc5_ || _loc1_)
                              {
                                 try
                                 {
                                    §§push(§§newactivation());
                                    if(!(_loc6_ && _loc3_))
                                    {
                                       §§pop().§§slot[2] = this.§;F§[bd];
                                       addr111:
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
                           §§goto(addr111);
                        }
                     }
                     return;
                  }
               }
               §§goto(addr44);
            }
         }
         §§goto(addr37);
      }
      
      public function §2+§(param1:String) : §1C§
      {
         return this.§`K§[param1];
      }
      
      public function getTextureFromBitmapData(param1:BitmapData, param2:Boolean = true) : Texture
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Texture = this.§;F§[param1];
         if(_loc4_ || _loc3_)
         {
            if(_loc3_)
            {
               if(_loc4_ || param2)
               {
                  return _loc3_;
               }
            }
         }
         _loc3_ = §else§.§]N§(param1,param2);
         if(!_loc5_)
         {
            this.§;F§[param1] = _loc3_;
         }
         do
         {
            this.§8>§(_loc3_,param1,true);
         }
         while(!(_loc4_ || param1));
         
         return _loc3_;
      }
      
      public function §8>§(param1:Texture, param2:BitmapData, param3:Boolean) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc5_:* = 0;
         var _loc6_:int = 0;
         var _loc4_:* = 1;
         if(!_loc8_)
         {
            if(!param3)
            {
               loop0:
               while(true)
               {
                  §§push(-1);
                  addr247:
                  while(true)
                  {
                     _loc4_ = §§pop();
                     addr248:
                     while(true)
                     {
                     }
                  }
                  while(true)
                  {
                     if(_loc8_ && param3)
                     {
                        continue loop0;
                     }
                     while(true)
                     {
                        §§goto(addr185);
                     }
                  }
                  §§goto(addr247);
               }
            }
            while(true)
            {
               if(param2)
               {
                  §§goto(addr203);
               }
               addr185:
               while(param1)
               {
                  loop7:
                  while(true)
                  {
                     if(!(_loc8_ && this))
                     {
                        §§push(param1.width);
                        loop8:
                        while(true)
                        {
                           §§push(int(§§pop()));
                           addr198:
                           while(true)
                           {
                              _loc5_ = §§pop();
                              continue loop8;
                           }
                        }
                     }
                     addr203:
                     while(true)
                     {
                        §§push(this);
                        §§push(this.§ !0§);
                        §§push(_loc4_ * param2.width);
                        if(_loc7_)
                        {
                           §§push(§§pop() * param2.height);
                           if(!(_loc8_ && param3))
                           {
                              §§push(§§pop() * 4);
                           }
                        }
                        §§pop().§ !0§ = §§pop() + §§pop();
                        break loop7;
                     }
                     if(!(_loc8_ && param2))
                     {
                        continue loop5;
                     }
                  }
                  continue loop5;
               }
               addr73:
               return;
               §§goto(addr248);
            }
         }
         §§goto(addr243);
      }
      
      public function §,<§() : Texture
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§%!B§);
            if(_loc2_)
            {
               if(!§§pop())
               {
                  if(!_loc1_)
                  {
                     this.§%!B§ = this.getTextureFromBitmapData(new BitmapData(40,40,false,16711935));
                     addr46:
                     §§push(this.§%!B§);
                  }
               }
               §§goto(addr46);
            }
            return §§pop();
         }
         §§goto(addr46);
      }
      
      public function unregisterBitmapDataTexture(param1:Texture) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:* = null;
         var _loc3_:BitmapData = null;
         var _loc4_:int = 0;
         var _loc5_:* = this.§;F§;
         while(true)
         {
            for(_loc2_ in _loc5_)
            {
               if(!(_loc6_ || param1))
               {
                  break;
               }
               if(this.§;F§[_loc2_] == param1)
               {
                  break;
               }
            }
            return;
         }
         _loc3_ = _loc2_ as BitmapData;
         if(!(_loc7_ && _loc3_))
         {
            this.§8>§(param1,_loc3_,false);
            loop1:
            while(true)
            {
               if(!_loc3_)
               {
                  while(true)
                  {
                     delete this.§;F§[_loc2_];
                     if(_loc6_ || _loc2_)
                     {
                        param1.dispose();
                        return;
                     }
                     continue loop1;
                  }
                  continue;
                  addr85:
               }
            }
         }
         while(true)
         {
            _loc3_.dispose();
            §§goto(addr114);
         }
      }
      
      public function §%!!§(param1:String) : BitmapData
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§1C§ = this.§2+§(param1);
         if(!(_loc4_ && _loc2_))
         {
            if(_loc2_ == null)
            {
               if(!(_loc4_ && _loc3_))
               {
                  §§push(this.§2+§(param1 + "_1"));
                  if(!_loc4_)
                  {
                     _loc2_ = §§pop();
                     §§goto(addr67);
                  }
                  §§goto(addr77);
               }
               §§goto(addr89);
            }
            addr67:
            if(_loc2_ == null)
            {
               if(_loc3_)
               {
                  addr77:
                  _loc2_ = this.§2+§(param1 + "_01");
               }
               §§goto(addr91);
            }
            if(_loc2_ == null)
            {
               if(!(_loc4_ && this))
               {
                  addr89:
                  return null;
               }
               §§goto(addr91);
            }
            §§goto(addr91);
         }
         addr91:
         return _loc2_.bitmapData;
      }
   }
}
