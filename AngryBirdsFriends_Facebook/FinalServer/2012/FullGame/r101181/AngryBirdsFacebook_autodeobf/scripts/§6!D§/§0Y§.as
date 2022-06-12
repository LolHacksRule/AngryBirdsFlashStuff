package §6!D§
{
   import §'6§.§"]§;
   import §0!R§.§@?§;
   import §0!R§.Texture;
   import §>i§.§]y§;
   import §>i§.§^J§;
   import flash.display.BitmapData;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class §0Y§ extends EventDispatcher
   {
      
      private static const §1"$§:int = 2;
      
      private static const §[!g§:int = 2048;
      
      private static var §@!9§:§0Y§;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §1"$§ = 2;
            do
            {
               §[!g§ = 2048;
            }
            while(!_loc1_);
            
         }
      }
      
      private var §"!2§:Dictionary;
      
      private var §]!Z§:Vector.<§]y§>;
      
      private var §4!r§:Dictionary;
      
      private var § !^§:Boolean;
      
      private var §;!Y§:String;
      
      private var §#!R§:Texture;
      
      private var §?!-§:int;
      
      private var §'"2§:int;
      
      public function §0Y§(param1:String = null)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            super();
            loop0:
            while(true)
            {
               this.§]!Z§ = new Vector.<§]y§>();
               while(true)
               {
                  this.§"!2§ = new Dictionary();
                  continue loop0;
                  addr30:
                  if(_loc3_)
                  {
                     return;
                     addr42:
                  }
               }
            }
         }
         while(true)
         {
            this.§4!r§ = new Dictionary();
            §§goto(addr48);
         }
         §§goto(addr42);
      }
      
      public static function get §;"§() : §0Y§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || §0Y§)
         {
            §§push(§@!9§);
            if(_loc1_ || _loc2_)
            {
               if(!§§pop())
               {
                  if(!_loc2_)
                  {
                     addr44:
                     §@!9§ = new §0Y§();
                  }
               }
               return §@!9§;
            }
         }
         §§goto(addr44);
      }
      
      public function get §@=§() : int
      {
         return this.§?!-§;
      }
      
      public function get §%!U§() : int
      {
         return this.§'"2§;
      }
      
      public function get id() : String
      {
         return this.§;!Y§;
      }
      
      public function dispose() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc1_:§3!K§ = null;
         var _loc2_:§]y§ = null;
         if(!_loc6_)
         {
            if(this.§"!2§)
            {
               addr27:
               var _loc3_:int = 0;
               var _loc4_:* = this.§"!2§;
               loop12:
               while(true)
               {
                  §§push(§§hasnext(_loc4_,_loc3_));
                  if(!_loc6_)
                  {
                     if(§§pop())
                     {
                        _loc1_ = §§nextvalue(_loc3_,_loc4_);
                        if(!_loc6_)
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
                     if(_loc5_ || this)
                     {
                        if(_loc5_ || this)
                        {
                           if(!_loc6_)
                           {
                              this.§"!2§ = null;
                              if(!(_loc6_ && _loc2_))
                              {
                                 addr83:
                                 if(this.§]!Z§)
                                 {
                                    if(!_loc6_)
                                    {
                                       _loc3_ = 0;
                                       if(!(_loc6_ && _loc1_))
                                       {
                                          _loc4_ = this.§]!Z§;
                                          while(true)
                                          {
                                             §§push(§§hasnext(_loc4_,_loc3_));
                                             break loop12;
                                          }
                                          addr125:
                                          if(!(_loc6_ && this))
                                          {
                                             this.§]!Z§ = null;
                                             loop1:
                                             while(true)
                                             {
                                                addr210:
                                                while(true)
                                                {
                                                   if(this.§4!r§)
                                                   {
                                                      addr213:
                                                      while(true)
                                                      {
                                                         this.§4!r§ = null;
                                                         addr216:
                                                         while(true)
                                                         {
                                                         }
                                                      }
                                                      addr213:
                                                   }
                                                   loop3:
                                                   while(true)
                                                   {
                                                      §§push(this.§#!R§);
                                                      if(_loc5_)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(!_loc6_)
                                                            {
                                                               addr198:
                                                               this.§#!R§.dispose();
                                                            }
                                                            loop4:
                                                            while(true)
                                                            {
                                                               if(_loc6_ && _loc3_)
                                                               {
                                                                  continue loop3;
                                                               }
                                                               if(_loc6_)
                                                               {
                                                                  continue loop1;
                                                               }
                                                               this.§#!R§ = null;
                                                               while(true)
                                                               {
                                                                  addr165:
                                                                  while(!(_loc6_ && _loc1_))
                                                                  {
                                                                     this.§"!2§ = new Dictionary();
                                                                     loop8:
                                                                     while(!_loc6_)
                                                                     {
                                                                        if(_loc5_)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              this.§4!r§ = new Dictionary();
                                                                              if(!_loc6_)
                                                                              {
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 break loop4;
                                                                              }
                                                                              continue loop8;
                                                                           }
                                                                           return;
                                                                           continue;
                                                                        }
                                                                        continue loop4;
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr213);
                                                         }
                                                         while(true)
                                                         {
                                                            this.§]!Z§ = new Vector.<§]y§>();
                                                            §§goto(addr165);
                                                            §§goto(addr177);
                                                         }
                                                      }
                                                      §§goto(addr198);
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr216);
                                          addr124:
                                          addr122:
                                       }
                                       §§goto(addr125);
                                    }
                                    §§goto(addr157);
                                 }
                                 §§goto(addr210);
                              }
                              §§goto(addr213);
                           }
                           §§goto(addr177);
                        }
                        §§goto(addr125);
                     }
                     §§goto(addr124);
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
                  §§goto(addr125);
               }
            }
            §§goto(addr83);
         }
         §§goto(addr27);
      }
      
      public function §0!g§(param1:§]y§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(!this.§ !^§)
            {
               loop0:
               while(true)
               {
                  if(this.§]!Z§.indexOf(param1) >= 0)
                  {
                     if(_loc3_)
                     {
                        break;
                     }
                     loop1:
                     while(true)
                     {
                        addr24:
                        while(true)
                        {
                           this.§]!Z§.push(param1);
                           if(!_loc2_)
                           {
                              break;
                           }
                           continue loop1;
                        }
                        if(_loc3_ || param1)
                        {
                           if(_loc3_ || this)
                           {
                              return;
                           }
                           addr80:
                           return;
                        }
                        continue loop0;
                     }
                  }
                  §§goto(addr24);
               }
               return;
            }
            §§goto(addr80);
         }
         §§goto(addr81);
      }
      
      private function §[!,§(param1:Array) : Rectangle
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc9_:§]y§ = null;
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
            if(_loc12_ || param1)
            {
               if(_loc8_ == 0)
               {
                  if(_loc12_ || _loc3_)
                  {
                     §§push(_loc9_.scale);
                     if(!_loc11_)
                     {
                        §§push(Number(§§pop()));
                        if(!_loc11_)
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
                        if(_loc12_)
                        {
                           §§push(_loc2_);
                           loop1:
                           while(true)
                           {
                              if(§§pop() + _loc10_.width + §1"$§ >= §[!g§)
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
                                             loop6:
                                             while(true)
                                             {
                                                §§push(§§pop() + §§pop());
                                                loop7:
                                                while(true)
                                                {
                                                   §§push(int(§§pop()));
                                                   loop8:
                                                   while(!_loc11_)
                                                   {
                                                      _loc3_ = §§pop();
                                                      loop9:
                                                      while(true)
                                                      {
                                                         §§push(0);
                                                         while(true)
                                                         {
                                                            _loc6_ = §§pop();
                                                            addr282:
                                                            while(true)
                                                            {
                                                            }
                                                            loop14:
                                                            while(_loc12_ || _loc3_)
                                                            {
                                                               if(!(_loc11_ && param1))
                                                               {
                                                                  §§push(int(§§pop() + (_loc10_.width + §1"$§)));
                                                                  loop15:
                                                                  for(; !_loc11_; while(true)
                                                                  {
                                                                     if(_loc11_ && param1)
                                                                     {
                                                                        continue loop15;
                                                                     }
                                                                     addr217:
                                                                     if(_loc12_ || _loc3_)
                                                                     {
                                                                        if(!_loc12_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        _loc4_ = §§pop();
                                                                        §§goto(addr227);
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        if(§§pop() + _loc10_.height + §1"$§ >= §[!g§)
                                                                        {
                                                                           continue loop9;
                                                                        }
                                                                        §§push(_loc2_);
                                                                        continue loop14;
                                                                        §§goto(addr217);
                                                                     }
                                                                  },continue loop5)
                                                                  {
                                                                     _loc2_ = §§pop();
                                                                     loop16:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc2_);
                                                                        if(_loc12_)
                                                                        {
                                                                           §§push(_loc4_);
                                                                           loop17:
                                                                           for(; _loc12_ || _loc3_; §§push(_loc6_),if(!(_loc12_ || param1))
                                                                           {
                                                                              continue;
                                                                           },§§push(§§pop() + §§pop()),if(_loc11_ && _loc2_)
                                                                           {
                                                                              continue loop7;
                                                                           },§§goto(addr162),§§push(int(§§pop())))
                                                                           {
                                                                              if(§§pop() <= §§pop())
                                                                              {
                                                                                 loop20:
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc10_.height + §1"$§ <= _loc6_)
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          _loc8_++;
                                                                                          if(!(_loc11_ && _loc3_))
                                                                                          {
                                                                                             if(!(_loc11_ && _loc3_))
                                                                                             {
                                                                                                if(!_loc12_)
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc11_ && _loc3_)
                                                                                                      {
                                                                                                         break loop16;
                                                                                                      }
                                                                                                      if(_loc12_)
                                                                                                      {
                                                                                                         continue loop20;
                                                                                                      }
                                                                                                      continue loop2;
                                                                                                   }
                                                                                                   continue loop9;
                                                                                                   addr227:
                                                                                                }
                                                                                                if(_loc12_ || _loc2_)
                                                                                                {
                                                                                                   if(true)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   loop22:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc3_);
                                                                                                      if(!(_loc11_ && param1))
                                                                                                      {
                                                                                                         if(!(_loc12_ || this))
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         if(_loc12_ || param1)
                                                                                                         {
                                                                                                            continue loop17;
                                                                                                         }
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         addr162:
                                                                                                         if(_loc12_)
                                                                                                         {
                                                                                                            _loc5_ = §§pop();
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc12_)
                                                                                                               {
                                                                                                                  if(!_loc11_)
                                                                                                                  {
                                                                                                                     continue loop16;
                                                                                                                  }
                                                                                                                  addr206:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc2_);
                                                                                                                     addr207:
                                                                                                                     while(!_loc11_)
                                                                                                                     {
                                                                                                                        §§push(int(§§pop()));
                                                                                                                        break loop22;
                                                                                                                     }
                                                                                                                     continue loop14;
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            addr165:
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               _loc6_ = §§pop();
                                                                                                            }
                                                                                                            addr189:
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!_loc11_)
                                                                                                            {
                                                                                                               continue loop22;
                                                                                                            }
                                                                                                            continue loop4;
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr207);
                                                                                                   }
                                                                                                   continue loop15;
                                                                                                }
                                                                                                §§goto(addr282);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                addr184:
                                                                                                while(true)
                                                                                                {
                                                                                                }
                                                                                                addr184:
                                                                                             }
                                                                                             §§goto(addr189);
                                                                                          }
                                                                                          §§goto(addr165);
                                                                                       }
                                                                                       continue loop0;
                                                                                       addr85:
                                                                                    }
                                                                                    §§goto(addr184);
                                                                                 }
                                                                              }
                                                                              §§goto(addr206);
                                                                           }
                                                                           continue loop6;
                                                                        }
                                                                        continue loop15;
                                                                     }
                                                                     continue loop9;
                                                                  }
                                                                  continue loop1;
                                                               }
                                                               continue loop8;
                                                            }
                                                         }
                                                      }
                                                   }
                                                   continue loop3;
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                              while(true)
                              {
                                 §§goto(addr239);
                              }
                           }
                        }
                        §§goto(addr184);
                     }
                  }
                  §§goto(addr77);
               }
               else
               {
                  §§push(_loc9_.scale);
               }
               §§goto(addr75);
            }
            §§goto(addr77);
         }
         return new Rectangle(0,0,_loc4_,_loc5_);
      }
      
      private function §+!U§(param1:Array, param2:BitmapData) : Array
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         var _loc8_:§]y§ = null;
         var _loc9_:BitmapData = null;
         var _loc10_:§3j§ = null;
         var _loc11_:* = 0;
         var _loc12_:* = 0;
         var _loc13_:§^J§ = null;
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
               if(!_loc14_)
               {
                  continue;
               }
               _loc8_ = §§pop()[0];
               if(!(_loc15_ && _loc3_))
               {
                  §§push(!isNaN(_loc7_));
                  if(!(_loc15_ && _loc3_))
                  {
                     if(§§pop())
                     {
                        if(!(_loc15_ && _loc3_))
                        {
                           §§pop();
                           if(_loc14_ || param1)
                           {
                              §§push(_loc7_);
                              if(!(_loc15_ && this))
                              {
                                 §§push(§§pop() == _loc8_.scale);
                                 if(!(_loc15_ && param2))
                                 {
                                    addr107:
                                    if(!§§pop())
                                    {
                                       if(!(_loc15_ && this))
                                       {
                                          addr115:
                                          break;
                                       }
                                       addr122:
                                       _loc9_ = _loc8_.bitmapData;
                                       if(!(_loc15_ && _loc3_))
                                       {
                                          §§push(_loc3_);
                                          while(true)
                                          {
                                             if(§§pop() + _loc9_.width + §1"$§ > param2.width)
                                             {
                                                loop3:
                                                while(true)
                                                {
                                                   §§push(0);
                                                   addr245:
                                                   while(true)
                                                   {
                                                      _loc3_ = §§pop();
                                                      addr246:
                                                      while(true)
                                                      {
                                                         §§push(_loc4_);
                                                         loop9:
                                                         while(true)
                                                         {
                                                            §§push(int(§§pop() + _loc5_));
                                                            loop10:
                                                            while(true)
                                                            {
                                                               _loc4_ = §§pop();
                                                               addr227:
                                                               while(true)
                                                               {
                                                                  if(_loc15_ && _loc3_)
                                                                  {
                                                                     continue loop3;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(0);
                                                                     addr210:
                                                                     while(true)
                                                                     {
                                                                        if(!_loc15_)
                                                                        {
                                                                           if(_loc14_ || _loc3_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           continue loop9;
                                                                        }
                                                                        continue loop10;
                                                                     }
                                                                     _loc5_ = §§pop();
                                                                     addr220:
                                                                  }
                                                                  continue loop10;
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
                                                if(!(_loc15_ && param2))
                                                {
                                                   if(!(_loc15_ && param2))
                                                   {
                                                      if(_loc15_)
                                                      {
                                                         break;
                                                      }
                                                      if(§§pop() + _loc9_.height + §1"$§ > param2.height)
                                                      {
                                                         if(_loc14_)
                                                         {
                                                            if(!(_loc15_ && _loc3_))
                                                            {
                                                               if(!(_loc15_ && param1))
                                                               {
                                                                  break loop1;
                                                               }
                                                               §§goto(addr246);
                                                            }
                                                            §§goto(addr220);
                                                         }
                                                         else
                                                         {
                                                            addr199:
                                                            if(_loc14_ || param2)
                                                            {
                                                               if(false)
                                                               {
                                                                  §§goto(addr208);
                                                               }
                                                               else
                                                               {
                                                                  (_loc10_ = new §3j§()).offset = new Point(_loc3_,_loc4_);
                                                                  if(!_loc15_)
                                                                  {
                                                                     _loc10_.§-"4§ = _loc8_;
                                                                  }
                                                                  _loc6_.push(_loc10_);
                                                                  addr318:
                                                                  if(_loc14_ || param2)
                                                                  {
                                                                     addr274:
                                                                     §§push(_loc8_.§#V§);
                                                                     if(!(_loc15_ && param1))
                                                                     {
                                                                        §§push(int(§§pop()));
                                                                        if(!_loc15_)
                                                                        {
                                                                           addr287:
                                                                           _loc11_ = §§pop();
                                                                           if(_loc14_ || this)
                                                                           {
                                                                              if(_loc14_ || param2)
                                                                              {
                                                                                 §§push(0);
                                                                                 if(_loc14_ || param1)
                                                                                 {
                                                                                    _loc12_ = §§pop();
                                                                                    if(_loc14_)
                                                                                    {
                                                                                       if(false)
                                                                                       {
                                                                                          §§goto(addr274);
                                                                                       }
                                                                                       addr344:
                                                                                       §§push(_loc12_);
                                                                                       if(_loc14_)
                                                                                       {
                                                                                          if(§§pop() < _loc11_)
                                                                                          {
                                                                                             (_loc13_ = _loc8_.§3G§(_loc12_)).§-"'§ = null;
                                                                                             if(!_loc15_)
                                                                                             {
                                                                                                _loc13_.§3!%§.offset(_loc3_,_loc4_);
                                                                                                if(!(_loc15_ && _loc3_))
                                                                                                {
                                                                                                   addr343:
                                                                                                   _loc12_++;
                                                                                                }
                                                                                                §§goto(addr344);
                                                                                             }
                                                                                             §§goto(addr343);
                                                                                          }
                                                                                          if(!_loc15_)
                                                                                          {
                                                                                             addr351:
                                                                                             §§push(_loc3_);
                                                                                             if(_loc15_)
                                                                                             {
                                                                                             }
                                                                                             addr393:
                                                                                             _loc5_ = §§pop();
                                                                                             if(_loc14_)
                                                                                             {
                                                                                                addr396:
                                                                                                param1.splice(0,1);
                                                                                             }
                                                                                          }
                                                                                          continue loop0;
                                                                                       }
                                                                                       §§push(int(§§pop() + (_loc9_.width + §1"$§)));
                                                                                       if(_loc14_)
                                                                                       {
                                                                                          addr362:
                                                                                          _loc3_ = §§pop();
                                                                                          if(_loc15_)
                                                                                          {
                                                                                             continue loop0;
                                                                                          }
                                                                                          addr365:
                                                                                          if(_loc9_.height + §1"$§ > _loc5_)
                                                                                          {
                                                                                             if(!(_loc15_ && this))
                                                                                             {
                                                                                                addr388:
                                                                                                §§goto(addr393);
                                                                                                §§push(int(_loc9_.height + §1"$§));
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr396);
                                                                                       }
                                                                                       §§goto(addr393);
                                                                                    }
                                                                                    §§goto(addr388);
                                                                                 }
                                                                                 §§goto(addr362);
                                                                              }
                                                                              §§goto(addr318);
                                                                           }
                                                                        }
                                                                        §§goto(addr351);
                                                                     }
                                                                     §§goto(addr287);
                                                                  }
                                                                  §§goto(addr365);
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr227);
                                                      }
                                                      else
                                                      {
                                                         param2.copyPixels(_loc9_,_loc9_.rect,new Point(_loc3_,_loc4_),null,null,true);
                                                      }
                                                      §§goto(addr199);
                                                   }
                                                   §§goto(addr245);
                                                }
                                                §§goto(addr210);
                                             }
                                          }
                                       }
                                       §§goto(addr246);
                                    }
                                    else
                                    {
                                       §§push(_loc8_.scale);
                                       if(!_loc15_)
                                       {
                                          §§push(Number(§§pop()));
                                       }
                                    }
                                    §§goto(addr122);
                                 }
                                 §§goto(addr107);
                              }
                              _loc7_ = §§pop();
                              §§goto(addr122);
                           }
                           §§goto(addr115);
                        }
                     }
                  }
                  §§goto(addr107);
               }
               §§goto(addr122);
            }
            return _loc6_;
         }
      }
      
      public function §9!F§() : Boolean
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         var _loc1_:§]y§ = null;
         var _loc3_:Rectangle = null;
         var _loc4_:BitmapData = null;
         var _loc5_:Array = null;
         var _loc6_:Texture = null;
         var _loc7_:* = 0;
         var _loc8_:§3j§ = null;
         var _loc9_:* = 0;
         var _loc10_:* = 0;
         var _loc11_:§^J§ = null;
         if(!(_loc15_ && _loc2_))
         {
            §§push(§"]§.§+"E§());
            if(!_loc15_)
            {
               if(!§§pop())
               {
                  if(!_loc15_)
                  {
                     §§push(false);
                     if(_loc14_)
                     {
                        §§goto(addr60);
                     }
                  }
                  else
                  {
                     addr68:
                     §§push(this.§ !^§);
                     if(!_loc15_)
                     {
                        if(§§pop())
                        {
                           if(_loc14_)
                           {
                              §§goto(addr76);
                           }
                        }
                        var _loc2_:Array = [];
                        var _loc12_:int = 0;
                        var _loc13_:* = this.§]!Z§;
                        loop0:
                        while(true)
                        {
                           §§push(§§hasnext(_loc13_,_loc12_));
                           if(!_loc15_)
                           {
                              if(§§pop())
                              {
                                 _loc1_ = §§nextvalue(_loc12_,_loc13_);
                                 if(!(_loc15_ && this))
                                 {
                                    if(_loc1_.§#V§ <= 0)
                                    {
                                       continue;
                                    }
                                    if(_loc15_ && _loc1_)
                                    {
                                       continue;
                                    }
                                 }
                                 _loc2_.push(_loc1_);
                                 continue;
                              }
                              if(!_loc15_)
                              {
                                 if(_loc14_ || _loc2_)
                                 {
                                    if(!_loc15_)
                                    {
                                       while(_loc2_.length > 0)
                                       {
                                          _loc3_ = this.§[!,§(_loc2_);
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
                                          if((_loc5_ = this.§+!U§(_loc2_,_loc4_)).length == 0)
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
                                             if(_loc14_ || this)
                                             {
                                                _loc7_ = §§pop();
                                                if(!_loc14_)
                                                {
                                                   continue;
                                                }
                                                addr222:
                                                while(true)
                                                {
                                                   §§push(_loc7_);
                                                }
                                                addr306:
                                             }
                                             for(; §§pop() < _loc5_.length; §§goto(addr306))
                                             {
                                                _loc1_ = (_loc8_ = _loc5_[_loc7_]).§-"4§;
                                                if(!(_loc15_ && this))
                                                {
                                                   §§push(_loc1_.§#V§);
                                                   if(_loc14_ || _loc2_)
                                                   {
                                                      §§push(int(§§pop()));
                                                      if(!(_loc15_ && _loc2_))
                                                      {
                                                         addr257:
                                                         _loc9_ = §§pop();
                                                         if(!_loc15_)
                                                         {
                                                            §§push(0);
                                                            if(_loc14_)
                                                            {
                                                               _loc10_ = §§pop();
                                                               if(!_loc14_)
                                                               {
                                                                  continue;
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(_loc10_);
                                                               }
                                                               addr295:
                                                            }
                                                         }
                                                         addr305:
                                                         _loc7_++;
                                                         continue;
                                                      }
                                                      for(; §§pop() < _loc9_; §§goto(addr295))
                                                      {
                                                         _loc11_ = _loc1_.§3G§(_loc10_);
                                                         if(!(_loc15_ && _loc3_))
                                                         {
                                                            this.§7c§(_loc11_,_loc6_,_loc4_,_loc1_.scale);
                                                            if(!(_loc14_ || _loc2_))
                                                            {
                                                               continue;
                                                            }
                                                         }
                                                         _loc10_++;
                                                      }
                                                      if(!(_loc14_ || _loc3_))
                                                      {
                                                         continue;
                                                      }
                                                      §§goto(addr305);
                                                   }
                                                }
                                                §§goto(addr257);
                                             }
                                             continue;
                                          }
                                          §§goto(addr222);
                                       }
                                       if(!(_loc15_ && _loc1_))
                                       {
                                          _loc12_ = 0;
                                          if(!_loc15_)
                                          {
                                             _loc13_ = this.§]!Z§;
                                             while(true)
                                             {
                                                §§push(§§hasnext(_loc13_,_loc12_));
                                                break loop0;
                                             }
                                             addr358:
                                             if(_loc15_)
                                             {
                                             }
                                             do
                                             {
                                                this.§ !^§ = true;
                                             }
                                             while(!(_loc14_ || _loc2_));
                                             
                                             return true;
                                             addr385:
                                             addr357:
                                             addr355:
                                          }
                                          §§goto(addr358);
                                       }
                                       this.§]!Z§ = new Vector.<§]y§>();
                                    }
                                    §§goto(addr385);
                                 }
                                 §§goto(addr358);
                              }
                              §§goto(addr357);
                           }
                           break;
                        }
                        while(true)
                        {
                           if(§§pop())
                           {
                              _loc1_ = §§nextvalue(_loc12_,_loc13_);
                              if(!(_loc15_ && _loc3_))
                              {
                                 _loc1_.dispose();
                              }
                              continue;
                           }
                           §§goto(addr358);
                        }
                     }
                  }
                  §§goto(addr76);
               }
               §§goto(addr68);
            }
            addr60:
            return §§pop();
         }
         addr76:
         return true;
      }
      
      private function §7c§(param1:§^J§, param2:Texture, param3:BitmapData, param4:Number) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc6_:Rectangle = null;
         var _loc7_:§@?§ = null;
         var _loc5_:§3!K§;
         if(!(_loc5_ = this.§"!2§[param1.mName]))
         {
            _loc6_ = param1.§3!%§.clone();
            _loc7_ = new §@?§(param2,_loc6_,false);
            _loc5_ = new §3!K§(_loc7_,param3,_loc6_,param1.§4!^§,param1.§'?§,param4);
            if(_loc8_ || param1)
            {
               this.§"!2§[param1.mName] = _loc5_;
            }
         }
      }
      
      public function §>l§() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(§§newactivation());
         if(_loc6_)
         {
            §§push(null);
            if(_loc6_ || this)
            {
               §§pop().§§slot[1] = §§pop();
               if(!_loc5_)
               {
                  addr38:
                  var texture:Texture = null;
                  if(_loc6_ || this)
                  {
                     §§goto(addr47);
                  }
                  §§goto(addr50);
               }
               addr47:
               if(!§"]§.§^!E§)
               {
                  var _loc2_:int = 0;
                  var _loc3_:* = this.§4!r§;
                  addr50:
                  while(§§hasnext(_loc3_,_loc2_))
                  {
                     §§push(§§newactivation());
                     if(!_loc5_)
                     {
                        §§pop().§§slot[1] = §§nextname(_loc2_,_loc3_);
                        if(!_loc5_)
                        {
                           try
                           {
                              §§push(§§newactivation());
                              if(_loc6_)
                              {
                                 addr81:
                                 §§pop().§§slot[2] = this.§4!r§[bd];
                                 addr112:
                                 if(_loc6_ || _loc1_)
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
                        §§goto(addr112);
                     }
                     §§goto(addr81);
                  }
               }
               return;
            }
         }
         §§goto(addr38);
      }
      
      public function §>s§(param1:String) : §3!K§
      {
         return this.§"!2§[param1];
      }
      
      public function getTextureFromBitmapData(param1:BitmapData, param2:Boolean = true) : Texture
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Texture = this.§4!r§[param1];
         if(!(_loc4_ && param2))
         {
            if(_loc3_)
            {
               if(!_loc4_)
               {
                  return _loc3_;
               }
            }
         }
         _loc3_ = §"]§.§3`§(param1,param2);
         if(_loc5_ || _loc3_)
         {
            this.§4!r§[param1] = _loc3_;
            do
            {
               this.§!L§(_loc3_,param1,true);
            }
            while(!_loc5_);
            
         }
         return _loc3_;
      }
      
      public function §!L§(param1:Texture, param2:BitmapData, param3:Boolean) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         var _loc4_:* = 1;
         if(_loc8_ || param3)
         {
            if(!param3)
            {
               while(true)
               {
                  §§push(-1);
                  addr263:
                  while(true)
                  {
                     _loc4_ = §§pop();
                     addr264:
                     while(true)
                     {
                     }
                  }
               }
               addr262:
            }
            loop2:
            while(true)
            {
               if(param2)
               {
                  loop3:
                  while(true)
                  {
                     §§push(this);
                     §§push(this.§'"2§);
                     §§push(_loc4_ * param2.width);
                     if(_loc8_)
                     {
                        §§push(§§pop() * param2.height);
                        if(_loc8_)
                        {
                           addr253:
                           §§push(§§pop() * 4);
                        }
                        §§pop().§'"2§ = §§pop() + §§pop();
                        loop4:
                        while(true)
                        {
                           if(_loc8_)
                           {
                              while(param1)
                              {
                                 if(_loc8_ || param2)
                                 {
                                    if(_loc7_)
                                    {
                                       continue loop3;
                                    }
                                    if(!(_loc8_ || this))
                                    {
                                       continue loop2;
                                    }
                                    §§push(param1.width);
                                    loop6:
                                    while(true)
                                    {
                                       §§push(int(§§pop()));
                                       addr217:
                                       while(true)
                                       {
                                          if(!(_loc8_ || this))
                                          {
                                             break loop4;
                                          }
                                          _loc5_ = §§pop();
                                          continue loop6;
                                       }
                                    }
                                    addr216:
                                 }
                                 while(true)
                                 {
                                    §§push(param1.height);
                                    if(!_loc7_)
                                    {
                                       §§push(int(§§pop()));
                                       if(!(_loc7_ && param2))
                                       {
                                          continue;
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr216);
                                    }
                                    §§goto(addr217);
                                 }
                              }
                              addr75:
                              return;
                              addr195:
                           }
                           §§goto(addr262);
                           if(_loc7_ && param3)
                           {
                              continue;
                           }
                           addr79:
                           §§push(_loc5_);
                           if(_loc8_)
                           {
                              addr84:
                              §§push(§§pop() >= 1);
                              if(_loc8_ || this)
                              {
                                 if(§§pop())
                                 {
                                    addr94:
                                    §§pop();
                                    addr95:
                                    §§push(_loc6_);
                                    if(!(_loc7_ && this))
                                    {
                                       if(!(_loc7_ && param3))
                                       {
                                          §§push(1);
                                          if(_loc8_ || this)
                                          {
                                             if(!_loc7_)
                                             {
                                                if(_loc8_)
                                                {
                                                   §§push(§§pop() >= §§pop());
                                                   if(_loc8_ || param2)
                                                   {
                                                      addr67:
                                                      if(!§§pop())
                                                      {
                                                         if(_loc8_)
                                                         {
                                                            if(!_loc7_)
                                                            {
                                                               if(!_loc8_)
                                                               {
                                                                  addr99:
                                                                  §§push(_loc6_ >> 1);
                                                                  if(_loc8_ || this)
                                                                  {
                                                                     _loc6_ = §§pop();
                                                                     addr108:
                                                                     if(_loc8_ || param2)
                                                                     {
                                                                        §§goto(addr79);
                                                                     }
                                                                     §§push(_loc5_);
                                                                     if(_loc8_ || param1)
                                                                     {
                                                                        addr136:
                                                                        §§push(§§pop() >> 1);
                                                                     }
                                                                     addr165:
                                                                  }
                                                                  _loc5_ = §§pop();
                                                                  addr138:
                                                                  §§goto(addr138);
                                                               }
                                                               §§goto(addr75);
                                                            }
                                                            §§goto(addr108);
                                                         }
                                                         §§goto(addr95);
                                                      }
                                                      §§push(this);
                                                      §§push(this.§?!-§);
                                                      §§push(_loc4_ * _loc5_);
                                                      if(_loc8_)
                                                      {
                                                         §§push(_loc6_);
                                                         if(!_loc7_)
                                                         {
                                                            addr163:
                                                            §§push(§§pop() * §§pop());
                                                            if(!(_loc7_ && param1))
                                                            {
                                                               §§push(4);
                                                            }
                                                            §§pop().§?!-§ = §§pop() + §§pop();
                                                            §§goto(addr165);
                                                         }
                                                         §§push(§§pop() * §§pop());
                                                      }
                                                      §§goto(addr163);
                                                   }
                                                   §§goto(addr94);
                                                }
                                                §§goto(addr136);
                                             }
                                             §§goto(addr99);
                                          }
                                          §§goto(addr84);
                                       }
                                       §§goto(addr99);
                                    }
                                    §§goto(addr79);
                                 }
                                 §§goto(addr67);
                              }
                              §§goto(addr94);
                           }
                           §§goto(addr99);
                        }
                        §§goto(addr263);
                     }
                     §§goto(addr253);
                  }
               }
               §§goto(addr195);
            }
         }
         §§goto(addr264);
      }
      
      public function §2M§() : Texture
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §§push(this.§#!R§);
            if(!_loc1_)
            {
               if(!§§pop())
               {
                  if(!_loc1_)
                  {
                     this.§#!R§ = this.getTextureFromBitmapData(new BitmapData(40,40,false,16711935));
                     addr51:
                     §§push(this.§#!R§);
                  }
               }
               §§goto(addr51);
            }
            return §§pop();
         }
         §§goto(addr51);
      }
      
      public function unregisterBitmapDataTexture(param1:Texture) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:* = null;
         var _loc3_:BitmapData = null;
         var _loc4_:int = 0;
         var _loc5_:* = this.§4!r§;
         do
         {
            for(_loc2_ in _loc5_)
            {
               if(!(_loc7_ || _loc3_))
               {
                  break;
               }
            }
            return;
         }
         while(this.§4!r§[_loc2_] != param1);
         
         _loc3_ = _loc2_ as BitmapData;
         if(_loc7_)
         {
            this.§!L§(param1,_loc3_,false);
         }
         while(_loc3_)
         {
            if(_loc7_)
            {
               _loc3_.dispose();
               break;
            }
         }
         delete this.§4!r§[_loc2_];
         do
         {
            param1.dispose();
         }
         while(_loc6_);
         
      }
      
      public function §-"8§(param1:String) : BitmapData
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§3!K§ = this.§>s§(param1);
         if(!_loc3_)
         {
            if(_loc2_ == null)
            {
               if(!_loc3_)
               {
                  §§push(this.§>s§(param1 + "_1"));
                  if(_loc4_ || _loc2_)
                  {
                     _loc2_ = §§pop();
                     addr63:
                     if(_loc2_ == null)
                     {
                        if(_loc4_ || _loc3_)
                        {
                           addr78:
                           _loc2_ = this.§>s§(param1 + "_01");
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
